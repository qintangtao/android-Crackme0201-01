.class Lcom/lzx/iteam/ChatActivity$5;
.super Landroid/os/AsyncTask;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ChatActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ChatActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ChatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity$5;->this$0:Lcom/lzx/iteam/ChatActivity;

    .line 351
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/ChatActivity$5;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 6
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$5;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$1(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/provider/MessageDB;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$5;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/ChatActivity;->access$9(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/provider/MessageDB;->updateAllMsgReaded(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$5;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$0(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$5;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/ChatActivity;->access$9(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/provider/CloudDBOperation;->updateChatUnReadCount(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$5;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$1(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/provider/MessageDB;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$5;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/ChatActivity;->access$9(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/ChatActivity$5;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mUserId:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$51(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0xa

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lzx/iteam/provider/MessageDB;->findMessagesByChatGroupId(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 358
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;>;"
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/ChatActivity$5;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "chatMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;>;"
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$5;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$3(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 365
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$5;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$3(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 366
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$5;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$58(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$5;->this$0:Lcom/lzx/iteam/ChatActivity;

    new-instance v1, Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$5;->this$0:Lcom/lzx/iteam/ChatActivity;

    iget-object v3, p0, Lcom/lzx/iteam/ChatActivity$5;->this$0:Lcom/lzx/iteam/ChatActivity;

    iget-object v3, v3, Lcom/lzx/iteam/ChatActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v1, v2, v3}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;-><init>(Landroid/content/Context;Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    invoke-static {v0, v1}, Lcom/lzx/iteam/ChatActivity;->access$59(Lcom/lzx/iteam/ChatActivity;Lcom/lzx/iteam/adapter/ChatMessageAdapter;)V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$5;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$58(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$5;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$3(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->bindData(Ljava/util/List;)V

    .line 370
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$5;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mChatMessageList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$2(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$5;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$3(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 371
    return-void
.end method
