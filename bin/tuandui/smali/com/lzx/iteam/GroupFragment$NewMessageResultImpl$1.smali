.class Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl$1;
.super Ljava/lang/Object;
.source "GroupFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;->onNewMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;

.field private final synthetic val$message:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;

    iput-object p2, p0, Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl$1;->val$message:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/GroupFragment;
    invoke-static {v0}, Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;)Lcom/lzx/iteam/GroupFragment;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/GroupFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v0}, Lcom/lzx/iteam/GroupFragment;->access$0(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl$1;->val$message:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getChatGroupID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->getChatGroupCount(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/GroupFragment;
    invoke-static {v0}, Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;)Lcom/lzx/iteam/GroupFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/GroupFragment;->getChatGroupList()V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/GroupFragment;
    invoke-static {v0}, Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;)Lcom/lzx/iteam/GroupFragment;

    move-result-object v0

    # invokes: Lcom/lzx/iteam/GroupFragment;->initChatGroupList()V
    invoke-static {v0}, Lcom/lzx/iteam/GroupFragment;->access$9(Lcom/lzx/iteam/GroupFragment;)V

    .line 548
    return-void
.end method
