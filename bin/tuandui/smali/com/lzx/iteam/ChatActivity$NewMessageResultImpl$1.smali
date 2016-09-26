.class Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->onNewMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

.field private final synthetic val$message:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    iput-object p2, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->val$message:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 1655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->val$message:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getChatGroupID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$9(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1659
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/ChatActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$1(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/provider/MessageDB;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$9(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/provider/MessageDB;->updateAllMsgReaded(Ljava/lang/String;)V

    .line 1660
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/ChatActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$0(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$9(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/provider/CloudDBOperation;->updateChatUnReadCount(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->val$message:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->setIsReaded(Z)V

    .line 1662
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$3(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->val$message:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1663
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$58(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1664
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$58(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$3(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->bindData(Ljava/util/List;)V

    .line 1670
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/ChatActivity;->mChatMessageList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$2(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/ChatActivity;->isListViewReachBottomEdge(Landroid/widget/ListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/ChatActivity;->mChatMessageList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$2(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$3(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1676
    :cond_0
    return-void

    .line 1666
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v0

    new-instance v1, Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v2}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/ChatActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v1, v2, v3}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;-><init>(Landroid/content/Context;Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    invoke-static {v0, v1}, Lcom/lzx/iteam/ChatActivity;->access$59(Lcom/lzx/iteam/ChatActivity;Lcom/lzx/iteam/adapter/ChatMessageAdapter;)V

    .line 1667
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$58(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$3(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->bindData(Ljava/util/List;)V

    .line 1668
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/ChatActivity;->mChatMessageList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$2(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$58(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method
