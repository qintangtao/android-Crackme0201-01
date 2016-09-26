.class Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread$1;
.super Landroid/os/Handler;
.source "MyChatMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread$1;->this$2:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;

    .line 51
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread$1;->this$2:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;

    # getter for: Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->this$1:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;
    invoke-static {v0}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->access$0(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;)Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;

    move-result-object v0

    iget-object v0, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    iget-object v1, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread$1;->this$2:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;

    # getter for: Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->this$1:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;
    invoke-static {v1}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->access$0(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;)Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v1}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->access$0(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread$1;->this$2:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;

    # getter for: Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->this$1:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;
    invoke-static {v2}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->access$0(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;)Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;

    move-result-object v2

    iget-object v2, v2, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSenderID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/provider/CloudDBOperation;->findUserMsgById(Ljava/lang/String;)Lcom/lzx/iteam/bean/ChatContact;

    move-result-object v1

    iget-object v1, v1, Lcom/lzx/iteam/bean/ChatContact;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->setSenderName(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread$1;->this$2:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;

    # getter for: Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->this$1:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;
    invoke-static {v0}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->access$0(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;)Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;

    move-result-object v0

    iget-object v0, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    iget-object v1, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread$1;->this$2:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;

    # getter for: Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->this$1:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;
    invoke-static {v1}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->access$0(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;)Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v1}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->access$0(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread$1;->this$2:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;

    # getter for: Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->this$1:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;
    invoke-static {v2}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->access$0(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;)Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;

    move-result-object v2

    iget-object v2, v2, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSenderID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/provider/CloudDBOperation;->findUserMsgById(Ljava/lang/String;)Lcom/lzx/iteam/bean/ChatContact;

    move-result-object v1

    iget-object v1, v1, Lcom/lzx/iteam/bean/ChatContact;->userImg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->setSenderImg(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread$1;->this$2:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;

    # getter for: Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->this$1:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;
    invoke-static {v0}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->access$0(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;)Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mmCallback:Landroid/os/Message;
    invoke-static {v0}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->access$1(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread$1;->this$2:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;

    # getter for: Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->this$1:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;
    invoke-static {v0}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->access$0(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;)Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mmCallback:Landroid/os/Message;
    invoke-static {v0}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->access$1(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 63
    iget-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread$1;->this$2:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;

    # getter for: Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->this$1:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;
    invoke-static {v0}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->access$0(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;)Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mmCallback:Landroid/os/Message;
    invoke-static {v0}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->access$1(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread$1;->this$2:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;

    # getter for: Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->this$1:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;
    invoke-static {v1}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->access$0(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;)Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;

    move-result-object v1

    iget-object v1, v1, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread$1;->this$2:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;

    # getter for: Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->this$1:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;
    invoke-static {v0}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->access$0(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;)Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mmCallback:Landroid/os/Message;
    invoke-static {v0}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->access$1(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
