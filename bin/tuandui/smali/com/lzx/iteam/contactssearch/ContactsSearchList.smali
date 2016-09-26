.class public abstract Lcom/lzx/iteam/contactssearch/ContactsSearchList;
.super Ljava/lang/Object;
.source "ContactsSearchList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactsSearchList"


# instance fields
.field protected mActivity:Lcom/lzx/iteam/CloudDialerActivity;

.field protected mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mListView:Landroid/widget/ListView;

.field protected mResources:Landroid/content/res/Resources;

.field public mStatus:Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;Landroid/widget/ListView;)V
    .locals 1
    .param p1, "activity"    # Lcom/lzx/iteam/CloudDialerActivity;
    .param p2, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;->ENUM_SEARCH_NONE:Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->mStatus:Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;

    .line 36
    iput-object p2, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->mListView:Landroid/widget/ListView;

    .line 37
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    .line 38
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/CloudDialerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->mContext:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->mResources:Landroid/content/res/Resources;

    .line 42
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->mResources:Landroid/content/res/Resources;

    .line 93
    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->mContext:Landroid/content/Context;

    .line 94
    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    .line 95
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 65
    return-void
.end method

.method public refresh(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "ifShowPeopleNoPhone"    # Z

    .prologue
    .line 45
    sget-object v0, Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;->ENUM_SEARCH_BEGIN:Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->mStatus:Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;

    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 47
    return-void
.end method

.method public refreshGroup(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "ifShowPeopleNoPhone"    # Z

    .prologue
    .line 51
    sget-object v0, Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;->ENUM_SEARCH_BEGIN:Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->mStatus:Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;

    .line 52
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 53
    return-void
.end method

.method public searchOver()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;->ENUM_SEARCH_OVER:Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->mStatus:Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;

    .line 58
    return-void
.end method
