.class public Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;
.super Lcom/lzx/iteam/service/aidl/NewMessageInterface$Stub;
.source "GroupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/GroupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NewMessageResultImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/GroupFragment;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/GroupFragment;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/GroupFragment;

    invoke-direct {p0}, Lcom/lzx/iteam/service/aidl/NewMessageInterface$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;)Lcom/lzx/iteam/GroupFragment;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/GroupFragment;

    return-object v0
.end method


# virtual methods
.method public notifyPage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 0
    .param p1, "message"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 571
    return-void
.end method

.method public onNewActivityApply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
    .locals 0
    .param p1, "apply"    # Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 566
    return-void
.end method

.method public onNewEvent(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
    .locals 0
    .param p1, "event"    # Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 561
    return-void
.end method

.method public onNewEventReply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
    .locals 0
    .param p1, "reply"    # Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 556
    return-void
.end method

.method public onNewMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 2
    .param p1, "message"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 541
    iget-object v0, p0, Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/GroupFragment;

    # getter for: Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v0}, Lcom/lzx/iteam/GroupFragment;->access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl$1;-><init>(Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 551
    return-void
.end method
