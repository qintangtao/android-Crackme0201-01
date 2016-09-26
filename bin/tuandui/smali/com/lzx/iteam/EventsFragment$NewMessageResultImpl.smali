.class public Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;
.super Lcom/lzx/iteam/service/aidl/NewMessageInterface$Stub;
.source "EventsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/EventsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NewMessageResultImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/EventsFragment;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/EventsFragment;)V
    .locals 0

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/EventsFragment;

    invoke-direct {p0}, Lcom/lzx/iteam/service/aidl/NewMessageInterface$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;)Lcom/lzx/iteam/EventsFragment;
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/EventsFragment;

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
    .line 1146
    return-void
.end method

.method public onNewActivityApply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
    .locals 2
    .param p1, "apply"    # Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$10(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl$3;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl$3;-><init>(Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1141
    return-void
.end method

.method public onNewEvent(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
    .locals 2
    .param p1, "event"    # Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$10(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl$2;-><init>(Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1128
    return-void
.end method

.method public onNewEventReply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
    .locals 2
    .param p1, "reply"    # Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/EventsFragment;

    # getter for: Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$10(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl$1;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl$1;-><init>(Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1117
    return-void
.end method

.method public onNewMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 0
    .param p1, "message"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1103
    return-void
.end method
