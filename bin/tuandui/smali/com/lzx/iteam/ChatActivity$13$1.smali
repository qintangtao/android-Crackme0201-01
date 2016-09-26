.class Lcom/lzx/iteam/ChatActivity$13$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ChatActivity$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/ChatActivity$13;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ChatActivity$13;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity$13$1;->this$1:Lcom/lzx/iteam/ChatActivity$13;

    .line 1743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$13$1;->this$1:Lcom/lzx/iteam/ChatActivity$13;

    # getter for: Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity$13;->access$0(Lcom/lzx/iteam/ChatActivity$13;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$58(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$13$1;->this$1:Lcom/lzx/iteam/ChatActivity$13;

    # getter for: Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity$13;->access$0(Lcom/lzx/iteam/ChatActivity$13;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$3(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->bindData(Ljava/util/List;)V

    .line 1747
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$13$1;->this$1:Lcom/lzx/iteam/ChatActivity$13;

    # getter for: Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity$13;->access$0(Lcom/lzx/iteam/ChatActivity$13;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/ChatActivity;->mChatMessageList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$2(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$13$1;->this$1:Lcom/lzx/iteam/ChatActivity$13;

    # getter for: Lcom/lzx/iteam/ChatActivity$13;->this$0:Lcom/lzx/iteam/ChatActivity;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity$13;->access$0(Lcom/lzx/iteam/ChatActivity$13;)Lcom/lzx/iteam/ChatActivity;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$3(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1748
    return-void
.end method
