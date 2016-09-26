.class Lcom/lzx/iteam/CloudDialerActivity$22;
.super Landroid/os/AsyncTask;
.source "CloudDialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudDialerActivity;->startUp(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudDialerActivity;

.field private final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iput-object p2, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->val$cursor:Landroid/database/Cursor;

    .line 4680
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/CloudDialerActivity$22;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4684
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iput v4, v3, Lcom/lzx/iteam/CloudDialerActivity;->contactedPeople:I

    .line 4685
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mAllContactId:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/CloudDialerActivity;->access$43(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4687
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/CloudDialerActivity;->access$0(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->resetAllContactsNumber(Landroid/content/Context;)V

    .line 4690
    :try_start_0
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->val$cursor:Landroid/database/Cursor;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4691
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4701
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mAllContactId:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lzx/iteam/CloudDialerActivity;->access$43(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzx/iteam/CloudDialerActivity;->access$44(Lcom/lzx/iteam/CloudDialerActivity;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4704
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4722
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mAllContactId:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/CloudDialerActivity;->access$43(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3

    .line 4693
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->val$cursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 4694
    .local v0, "contactId":J
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mAllContactId:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/CloudDialerActivity;->access$43(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4695
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->val$cursor:Landroid/database/Cursor;

    .line 4696
    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 4697
    .local v2, "contactedNumber":I
    if-lez v2, :cond_0

    .line 4698
    iget-object v3, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget v4, v3, Lcom/lzx/iteam/CloudDialerActivity;->contactedPeople:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/lzx/iteam/CloudDialerActivity;->contactedPeople:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4703
    .end local v0    # "contactId":J
    .end local v2    # "contactedNumber":I
    :catchall_0
    move-exception v3

    .line 4704
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4705
    throw v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/CloudDialerActivity$22;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "longs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 4728
    if-eqz p1, :cond_7

    .line 4729
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 4730
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mNull:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$46(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4736
    :goto_0
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lzx/iteam/net/LocalLogin;->isLogedin()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4737
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mCloudUser:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$40(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/HashMap;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mCloudUser:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$40(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 4738
    :cond_0
    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v10, "regist_user"

    invoke-virtual {v8, v10}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-static {v9, v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$47(Lcom/lzx/iteam/CloudDialerActivity;Ljava/util/HashMap;)V

    .line 4740
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mCloudUser:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$40(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/HashMap;

    move-result-object v8

    if-nez v8, :cond_1

    .line 4741
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-static {v8, v9}, Lcom/lzx/iteam/CloudDialerActivity;->access$47(Lcom/lzx/iteam/CloudDialerActivity;Ljava/util/HashMap;)V

    .line 4743
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mCloudUser:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$40(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/HashMap;

    move-result-object v8

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "0"

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4748
    :cond_1
    new-instance v2, Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;

    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {v2, v8}, Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;-><init>(Lcom/lzx/iteam/CloudDialerActivity;)V

    .line 4749
    .local v2, "mc":Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;
    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4752
    const/4 v5, 0x0

    .line 4755
    .local v5, "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4756
    .local v4, "res":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;>;"
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iput v13, v8, Lcom/lzx/iteam/CloudDialerActivity;->mSortByProperty:I

    .line 4757
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->mSortByProperty:I

    if-ne v8, v13, :cond_5

    .line 4758
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v9}, Lcom/lzx/iteam/CloudDialerActivity;->getSections()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v12

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4759
    .local v7, "title":Ljava/lang/String;
    new-instance v5, Landroid/util/Pair;

    .end local v5    # "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-direct {v5, v7, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4760
    .restart local v5    # "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4788
    .end local v7    # "title":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 4789
    const-string v9, "contact_id_2_dist_status"

    invoke-virtual {v8, v9}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 4788
    check-cast v8, Ljava/util/HashMap;

    .line 4791
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v9, "regist_user"

    invoke-virtual {v8, v9}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 4793
    .local v3, "registUsers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$23(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->changeContent(Ljava/util/List;)V

    .line 4794
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$23(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setCloudUser(Ljava/util/HashMap;)V

    .line 4797
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactsListView:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$48(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/widget/ListView;

    move-result-object v8

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;
    invoke-static {v9}, Lcom/lzx/iteam/CloudDialerActivity;->access$23(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4798
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$23(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->notifyDataSetChanged()V

    .line 4814
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v8}, Lcom/lzx/iteam/CloudDialerActivity;->getFilterText()Ljava/lang/String;

    move-result-object v1

    .line 4815
    .local v1, "filterText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 4822
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$23(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->setCurrentSearchText(Ljava/lang/String;)V

    .line 4823
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mListManager:Lcom/lzx/iteam/contactssearch/ResultListManager;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$49(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/contactssearch/ResultListManager;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 4824
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mListManager:Lcom/lzx/iteam/contactssearch/ResultListManager;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$49(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/contactssearch/ResultListManager;

    move-result-object v8

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget-boolean v9, v9, Lcom/lzx/iteam/CloudDialerActivity;->mIfShowPeopleNoPhone:Z

    invoke-virtual {v8, v1, v9}, Lcom/lzx/iteam/contactssearch/ResultListManager;->onRefresh(Ljava/lang/String;Z)V

    .line 4834
    .end local v1    # "filterText":Ljava/lang/String;
    .end local v2    # "mc":Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;
    .end local v3    # "registUsers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v4    # "res":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;>;"
    .end local v5    # "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iput-boolean v12, v8, Lcom/lzx/iteam/CloudDialerActivity;->whileLock:Z

    .line 4835
    sput-boolean v12, Lcom/lzx/iteam/util/Constants;->IS_START_UP:Z

    .line 4836
    :goto_3
    return-void

    .line 4732
    :cond_4
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mNull:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$46(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/widget/TextView;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 4761
    .restart local v2    # "mc":Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;
    .restart local v4    # "res":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;>;"
    .restart local v5    # "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_5
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->mSortByProperty:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 4762
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->contactedPeople:I

    if-lez v8, :cond_6

    .line 4764
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

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

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget v9, v9, Lcom/lzx/iteam/CloudDialerActivity;->contactedPeople:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4765
    .restart local v7    # "title":Ljava/lang/String;
    new-instance v6, Landroid/util/Pair;

    const/4 v8, 0x0

    .line 4766
    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget v9, v9, Lcom/lzx/iteam/CloudDialerActivity;->contactedPeople:I

    .line 4765
    invoke-virtual {p1, v8, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4767
    .end local v5    # "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .local v6, "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :try_start_1
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4769
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v9}, Lcom/lzx/iteam/CloudDialerActivity;->getSections()[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget v10, v10, Lcom/lzx/iteam/CloudDialerActivity;->contactedPeople:I

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4770
    new-instance v5, Landroid/util/Pair;

    .line 4771
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iget v8, v8, Lcom/lzx/iteam/CloudDialerActivity;->contactedPeople:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 4770
    invoke-virtual {p1, v8, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4772
    .end local v6    # "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v5    # "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    :try_start_2
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 4773
    .end local v7    # "title":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 4774
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4775
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iput-boolean v12, v8, Lcom/lzx/iteam/CloudDialerActivity;->whileLock:Z

    .line 4776
    sput-boolean v12, Lcom/lzx/iteam/util/Constants;->IS_START_UP:Z

    goto/16 :goto_3

    .line 4781
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v9}, Lcom/lzx/iteam/CloudDialerActivity;->getSections()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v13

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4782
    .restart local v7    # "title":Ljava/lang/String;
    new-instance v5, Landroid/util/Pair;

    .end local v5    # "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-direct {v5, v7, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4783
    .restart local v5    # "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 4829
    .end local v2    # "mc":Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;
    .end local v4    # "res":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;>;"
    .end local v5    # "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v7    # "title":Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/lzx/iteam/CloudDialerActivity$22;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mNull:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/lzx/iteam/CloudDialerActivity;->access$46(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 4773
    .restart local v2    # "mc":Lcom/lzx/iteam/CloudDialerActivity$MyCompartor;
    .restart local v4    # "res":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;>;"
    .restart local v6    # "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v7    # "title":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v5, v6

    .end local v6    # "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .restart local v5    # "sectionPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    goto :goto_4
.end method
