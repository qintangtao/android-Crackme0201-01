.class public Lcom/lzx/iteam/contactssearch/ResultListManager;
.super Ljava/lang/Object;
.source "ResultListManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResultListManager"


# instance fields
.field mActivity:Lcom/lzx/iteam/CloudDialerActivity;

.field mFlag:I

.field mLastList:Lcom/lzx/iteam/contactssearch/ContactsSearchList;

.field mResultList:Lcom/lzx/iteam/contactssearch/ContactsSearchList;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;Landroid/widget/ListView;I)V
    .locals 1
    .param p1, "mActivity"    # Lcom/lzx/iteam/CloudDialerActivity;
    .param p2, "mList"    # Landroid/widget/ListView;
    .param p3, "flag"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/lzx/iteam/contactssearch/ResultList;

    invoke-direct {v0, p1, p2}, Lcom/lzx/iteam/contactssearch/ResultList;-><init>(Lcom/lzx/iteam/CloudDialerActivity;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultListManager;->mResultList:Lcom/lzx/iteam/contactssearch/ContactsSearchList;

    .line 41
    iput p3, p0, Lcom/lzx/iteam/contactssearch/ResultListManager;->mFlag:I

    .line 42
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/ResultListManager;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    .line 43
    return-void
.end method


# virtual methods
.method public cancelSearch()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultListManager;->mResultList:Lcom/lzx/iteam/contactssearch/ContactsSearchList;

    sget-object v1, Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;->ENUM_SEARCH_NONE:Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;

    iput-object v1, v0, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->mStatus:Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;

    .line 30
    return-void
.end method

.method public freshGroupResultList(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "ifShowPeopleNoPhone"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultListManager;->mResultList:Lcom/lzx/iteam/contactssearch/ContactsSearchList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->refreshGroup(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    return-void
.end method

.method public freshResultList(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "ifShowPeopleNoPhone"    # Z

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultListManager;->mResultList:Lcom/lzx/iteam/contactssearch/ContactsSearchList;

    invoke-virtual {v0, p1, p2}, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->refresh(Ljava/lang/String;Z)V

    .line 49
    return-void
.end method

.method public getListFlag()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/lzx/iteam/contactssearch/ResultListManager;->mFlag:I

    return v0
.end method

.method public getResultList()Lcom/lzx/iteam/contactssearch/ResultList;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultListManager;->mResultList:Lcom/lzx/iteam/contactssearch/ContactsSearchList;

    check-cast v0, Lcom/lzx/iteam/contactssearch/ResultList;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/ResultListManager;->mLastList:Lcom/lzx/iteam/contactssearch/ContactsSearchList;

    .line 61
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultListManager;->mResultList:Lcom/lzx/iteam/contactssearch/ContactsSearchList;

    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->onDestroy()V

    .line 62
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/ResultListManager;->mResultList:Lcom/lzx/iteam/contactssearch/ContactsSearchList;

    .line 63
    return-void
.end method

.method public onRefresh(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "ifShowPeopleNoPhone"    # Z

    .prologue
    .line 33
    iget v0, p0, Lcom/lzx/iteam/contactssearch/ResultListManager;->mFlag:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lzx/iteam/contactssearch/ResultListManager;->mFlag:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 34
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/lzx/iteam/contactssearch/ResultListManager;->freshResultList(Ljava/lang/String;Z)V

    .line 36
    :cond_1
    return-void
.end method

.method public setListFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/lzx/iteam/contactssearch/ResultListManager;->mFlag:I

    .line 25
    return-void
.end method
