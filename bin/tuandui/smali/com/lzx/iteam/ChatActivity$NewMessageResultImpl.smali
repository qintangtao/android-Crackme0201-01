.class public Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;
.super Lcom/lzx/iteam/service/aidl/NewMessageInterface$Stub;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NewMessageResultImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ChatActivity;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/ChatActivity;)V
    .locals 0

    .prologue
    .line 1651
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;

    invoke-direct {p0}, Lcom/lzx/iteam/service/aidl/NewMessageInterface$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)Lcom/lzx/iteam/ChatActivity;
    .locals 1

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;

    return-object v0
.end method


# virtual methods
.method public notifyPage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 2
    .param p1, "message"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1698
    sget-object v0, Lcom/lzx/iteam/ChatActivity;->tags:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSendTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1699
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;

    new-instance v1, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$2;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$2;-><init>(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/ChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1707
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
    .line 1693
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
    .line 1688
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
    .line 1683
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
    .line 1655
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/ChatActivity;

    new-instance v1, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl$1;-><init>(Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/ChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1678
    return-void
.end method
