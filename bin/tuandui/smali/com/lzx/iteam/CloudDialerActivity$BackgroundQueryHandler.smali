.class final Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CloudDialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/CloudDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudDialerActivity;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 4465
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    .line 4466
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 4467
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 4614
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 4472
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mFirstQuery:Z
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$41(Lcom/lzx/iteam/CloudDialerActivity;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4473
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v8}, Lcom/lzx/iteam/CloudDialerActivity;->afterQueryComplete()V

    .line 4475
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/lzx/iteam/CloudDialerActivity;->access$42(Lcom/lzx/iteam/CloudDialerActivity;Z)V

    .line 4478
    :cond_0
    if-nez p3, :cond_2

    .line 4609
    :cond_1
    :goto_0
    return-void

    .line 4483
    :cond_2
    sget-boolean v8, Lcom/lzx/iteam/util/Constants;->IS_START_UP:Z

    if-eqz v8, :cond_3

    .line 4484
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v8, p3}, Lcom/lzx/iteam/CloudDialerActivity;->startUp(Landroid/database/Cursor;)V

    .line 4593
    :goto_1
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v8}, Lcom/lzx/iteam/CloudDialerActivity;->getFilterText()Ljava/lang/String;

    move-result-object v3

    .line 4594
    .local v3, "filterText":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 4601
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$23(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setCurrentSearchText(Ljava/lang/String;)V

    .line 4602
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mListManager:Lcom/lzx/iteam/contactssearch/ResultListManager;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$49(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/contactssearch/ResultListManager;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 4603
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mListManager:Lcom/lzx/iteam/contactssearch/ResultListManager;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$49(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/contactssearch/ResultListManager;

    move-result-object v8

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-boolean v9, v9, Lcom/lzx/iteam/CloudDialerActivity;->mIfShowPeopleNoPhone:Z

    invoke-virtual {v8, v3, v9}, Lcom/lzx/iteam/contactssearch/ResultListManager;->onRefresh(Ljava/lang/String;Z)V

    goto :goto_0

    .line 4486
    .end local v3    # "filterText":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mAllContactId:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$43(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 4487
    sget-object v8, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    if-nez v8, :cond_4

    .line 4488
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->resetAllContactsNumber(Landroid/content/Context;)V

    .line 4491
    :cond_4
    const/4 v8, -0x1

    :try_start_0
    invoke-interface {p3, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4492
    :cond_5
    :goto_2
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_9

    .line 4502
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mAllContactId:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/lzx/iteam/CloudDialerActivity;->access$43(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lzx/iteam/CloudDialerActivity;->access$44(Lcom/lzx/iteam/CloudDialerActivity;Ljava/util/ArrayList;)V

    .line 4504
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mSelectedListContactId:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$45(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_a

    .line 4505
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mNull:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$46(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4512
    :goto_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 4515
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lzx/iteam/net/LocalLogin;->isLogedin()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4516
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mCloudUser:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$40(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/HashMap;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mCloudUser:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$40(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-nez v8, :cond_7

    .line 4517
    :cond_6
    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v10, "regist_user"

    invoke-virtual {v8, v10}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-static {v9, v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$47(Lcom/lzx/iteam/CloudDialerActivity;Ljava/util/HashMap;)V

    .line 4519
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mCloudUser:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$40(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/HashMap;

    move-result-object v8

    if-nez v8, :cond_7

    .line 4520
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-static {v8, v9}, Lcom/lzx/iteam/CloudDialerActivity;->access$47(Lcom/lzx/iteam/CloudDialerActivity;Ljava/util/HashMap;)V

    .line 4522
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mCloudUser:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$40(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/HashMap;

    move-result-object v8

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "0"

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4527
    :cond_7
    new-instance v4, Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {v4, v8}, Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    .line 4528
    .local v4, "mc":Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mAllContactId:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$43(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v8, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4531
    const/4 v6, 0x0

    .line 4534
    .local v6, "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4535
    .local v5, "res":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;>;"
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v9, 0x1

    iput v9, v8, Lcom/lzx/iteam/CloudDialerActivity;->mSortByProperty:I

    .line 4536
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->mSortByProperty:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 4537
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v9}, Lcom/lzx/iteam/CloudDialerActivity;->getSections()[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mAllContactId:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/lzx/iteam/CloudDialerActivity;->access$43(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4538
    .local v7, "title":Ljava/lang/String;
    new-instance v6, Landroid/util/Pair;

    .end local v6    # "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mAllContactId:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$43(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4539
    .restart local v6    # "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4580
    .end local v7    # "title":Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$23(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->changeContent(Ljava/util/List;)V

    .line 4583
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$23(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->notifyDataSetChanged()V

    .line 4588
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$48(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/widget/ListView;

    move-result-object v8

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;
    invoke-static {v9}, Lcom/lzx/iteam/CloudDialerActivity;->access$23(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 4494
    .end local v4    # "mc":Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;
    .end local v5    # "res":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;>;"
    .end local v6    # "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_9
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 4495
    .local v0, "contactId":J
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mAllContactId:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$43(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4497
    const/4 v8, 0x3

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 4498
    .local v2, "contactedNumber":I
    if-lez v2, :cond_5

    goto/16 :goto_2

    .line 4507
    .end local v0    # "contactId":J
    .end local v2    # "contactedNumber":I
    :cond_a
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundQueryHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mNull:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$46(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/widget/TextView;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 4511
    :catchall_0
    move-exception v8

    .line 4512
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 4513
    throw v8
.end method
