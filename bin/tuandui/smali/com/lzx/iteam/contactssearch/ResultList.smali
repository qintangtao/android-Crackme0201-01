.class public Lcom/lzx/iteam/contactssearch/ResultList;
.super Lcom/lzx/iteam/contactssearch/ContactsSearchList;
.source "ResultList.java"

# interfaces
.implements Lcom/lzx/iteam/contactssearch/OnQueryCompleteListener;


# static fields
.field public static final RESULT_ITEM_MENU_ID_ADD_TO_CONTACT:I = 0x3

.field public static final RESULT_ITEM_MENU_ID_EDIT_BEFORE_CALL:I = 0x2

.field public static final RESULT_ITEM_MENU_ID_SEND_MSG:I = 0x1

.field public static final RESULT_ITEM_MENU_ID_VIEW_CONTACT:I = 0x4


# instance fields
.field private mListActive:Z

.field private mListDisplayed:Z

.field private mSmartSearch:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;

.field resource:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;Landroid/widget/ListView;)V
    .locals 2
    .param p1, "activity"    # Lcom/lzx/iteam/CloudDialerActivity;
    .param p2, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/contactssearch/ContactsSearchList;-><init>(Lcom/lzx/iteam/CloudDialerActivity;Landroid/widget/ListView;)V

    .line 23
    iput-boolean v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mListActive:Z

    .line 25
    iput-boolean v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mListDisplayed:Z

    .line 39
    new-instance v0, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;

    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {v0, v1, p0}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;-><init>(Lcom/lzx/iteam/CloudDialerActivity;Lcom/lzx/iteam/contactssearch/OnQueryCompleteListener;)V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mSmartSearch:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;

    .line 41
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/CloudDialerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->resource:Landroid/content/res/Resources;

    .line 42
    return-void
.end method


# virtual methods
.method public getSmartSearchEngineForTest()Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mSmartSearch:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mSmartSearch:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;

    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->destroy()V

    .line 64
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mListActive:Z

    .line 49
    iput-boolean v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mListDisplayed:Z

    .line 50
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mSmartSearch:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;

    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->pause()V

    .line 51
    return-void
.end method

.method public onQueryComplete(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/ResultList;->searchOver()V

    .line 68
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/CloudDialerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    new-instance v1, Lcom/lzx/iteam/contactssearch/ResultList$1;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/contactssearch/ResultList$1;-><init>(Lcom/lzx/iteam/contactssearch/ResultList;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    if-eqz p1, :cond_0

    .line 78
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public onQueryComplete(Ljava/lang/String;Ljava/util/LinkedHashSet;)V
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p2, "contactId":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mStatus:Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;

    sget-object v1, Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;->ENUM_SEARCH_NONE:Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;

    if-ne v0, v1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/ResultList;->searchOver()V

    .line 190
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/CloudDialerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    new-instance v1, Lcom/lzx/iteam/contactssearch/ResultList$3;

    invoke-direct {v1, p0, p2}, Lcom/lzx/iteam/contactssearch/ResultList$3;-><init>(Lcom/lzx/iteam/contactssearch/ResultList;Ljava/util/LinkedHashSet;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onQueryComplete(Ljava/util/LinkedHashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "contactId":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mStatus:Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;

    sget-object v1, Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;->ENUM_SEARCH_NONE:Lcom/lzx/iteam/contactssearch/ContactsSearchList$SearchStatus;

    if-ne v0, v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/ResultList;->searchOver()V

    .line 111
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/CloudDialerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    new-instance v1, Lcom/lzx/iteam/contactssearch/ResultList$2;

    invoke-direct {v1, p0, p1}, Lcom/lzx/iteam/contactssearch/ResultList$2;-><init>(Lcom/lzx/iteam/contactssearch/ResultList;Ljava/util/LinkedHashSet;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mListActive:Z

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mListDisplayed:Z

    .line 57
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mSmartSearch:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;

    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->resume()V

    .line 58
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 166
    return-void
.end method

.method public refresh(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "ifShowPeopleNoPhone"    # Z

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->refresh(Ljava/lang/String;Z)V

    .line 129
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mSmartSearch:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;

    invoke-virtual {v0, p1, p2}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->sendSearchMessage(Ljava/lang/String;Z)V

    .line 130
    return-void
.end method

.method public refreshGroup(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "ifShowPeopleNoPhone"    # Z

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3}, Lcom/lzx/iteam/contactssearch/ContactsSearchList;->refreshGroup(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 135
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/ResultList;->mSmartSearch:Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzx/iteam/contactssearch/ContactsSearchEngine;->sendSearchMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 136
    return-void
.end method

.method toIntArray(Ljava/util/ArrayList;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [I

    .line 85
    .local v3, "ret":[I
    const/4 v1, 0x0

    .line 86
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 88
    return-object v3

    .line 86
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 87
    .local v0, "e":Ljava/lang/Integer;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method
