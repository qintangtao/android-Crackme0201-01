.class Lcom/lzx/iteam/MyTalkMessageActivity$2;
.super Landroid/os/AsyncTask;
.source "MyTalkMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/MyTalkMessageActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/lzx/iteam/bean/MyTalkMessageData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/MyTalkMessageActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/MyTalkMessageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/MyTalkMessageActivity$2;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    .line 81
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/MyTalkMessageActivity$2;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/MyTalkMessageData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity$2;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    # getter for: Lcom/lzx/iteam/MyTalkMessageActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v0}, Lcom/lzx/iteam/MyTalkMessageActivity;->access$1(Lcom/lzx/iteam/MyTalkMessageActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/provider/CloudDBOperation;->getTalkMyMsgData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/MyTalkMessageActivity$2;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/MyTalkMessageData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "talkMessageDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/MyTalkMessageData;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 89
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity$2;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    # getter for: Lcom/lzx/iteam/MyTalkMessageActivity;->mTalkMessageDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/MyTalkMessageActivity;->access$2(Lcom/lzx/iteam/MyTalkMessageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity$2;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    # getter for: Lcom/lzx/iteam/MyTalkMessageActivity;->mTalkMessageDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/MyTalkMessageActivity;->access$2(Lcom/lzx/iteam/MyTalkMessageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity$2;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    # getter for: Lcom/lzx/iteam/MyTalkMessageActivity;->mTalkMessageDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/MyTalkMessageActivity;->access$2(Lcom/lzx/iteam/MyTalkMessageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity$2;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    # getter for: Lcom/lzx/iteam/MyTalkMessageActivity;->mTalkMessageDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/MyTalkMessageActivity;->access$2(Lcom/lzx/iteam/MyTalkMessageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity$2;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    # getter for: Lcom/lzx/iteam/MyTalkMessageActivity;->mTalkMessageDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/MyTalkMessageActivity;->access$2(Lcom/lzx/iteam/MyTalkMessageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity$2;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    # getter for: Lcom/lzx/iteam/MyTalkMessageActivity;->mLlNoData:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lzx/iteam/MyTalkMessageActivity;->access$3(Lcom/lzx/iteam/MyTalkMessageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity$2;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    # getter for: Lcom/lzx/iteam/MyTalkMessageActivity;->mMyMessageList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lzx/iteam/MyTalkMessageActivity;->access$4(Lcom/lzx/iteam/MyTalkMessageActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity$2;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    # getter for: Lcom/lzx/iteam/MyTalkMessageActivity;->adapter:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/MyTalkMessageActivity;->access$5(Lcom/lzx/iteam/MyTalkMessageActivity;)Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity$2;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    # getter for: Lcom/lzx/iteam/MyTalkMessageActivity;->adapter:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/MyTalkMessageActivity;->access$5(Lcom/lzx/iteam/MyTalkMessageActivity;)Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/MyTalkMessageActivity$2;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    # getter for: Lcom/lzx/iteam/MyTalkMessageActivity;->mTalkMessageDatas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/MyTalkMessageActivity;->access$2(Lcom/lzx/iteam/MyTalkMessageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->bindData(Ljava/util/ArrayList;)V

    .line 107
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity$2;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    new-instance v1, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;

    iget-object v2, p0, Lcom/lzx/iteam/MyTalkMessageActivity$2;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    invoke-direct {v1, v2}, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/lzx/iteam/MyTalkMessageActivity;->access$6(Lcom/lzx/iteam/MyTalkMessageActivity;Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;)V

    .line 101
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity$2;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    # getter for: Lcom/lzx/iteam/MyTalkMessageActivity;->adapter:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/MyTalkMessageActivity;->access$5(Lcom/lzx/iteam/MyTalkMessageActivity;)Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/MyTalkMessageActivity$2;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    # getter for: Lcom/lzx/iteam/MyTalkMessageActivity;->mTalkMessageDatas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/MyTalkMessageActivity;->access$2(Lcom/lzx/iteam/MyTalkMessageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->bindData(Ljava/util/ArrayList;)V

    .line 102
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity$2;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    # getter for: Lcom/lzx/iteam/MyTalkMessageActivity;->mMyMessageList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lzx/iteam/MyTalkMessageActivity;->access$4(Lcom/lzx/iteam/MyTalkMessageActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/MyTalkMessageActivity$2;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    # getter for: Lcom/lzx/iteam/MyTalkMessageActivity;->adapter:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/MyTalkMessageActivity;->access$5(Lcom/lzx/iteam/MyTalkMessageActivity;)Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity$2;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    # getter for: Lcom/lzx/iteam/MyTalkMessageActivity;->mLlNoData:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lzx/iteam/MyTalkMessageActivity;->access$3(Lcom/lzx/iteam/MyTalkMessageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity$2;->this$0:Lcom/lzx/iteam/MyTalkMessageActivity;

    # getter for: Lcom/lzx/iteam/MyTalkMessageActivity;->mMyMessageList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lzx/iteam/MyTalkMessageActivity;->access$4(Lcom/lzx/iteam/MyTalkMessageActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method
