.class public Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;
.super Lcom/lzx/iteam/service/aidl/NewMessageInterface$Stub;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NewMessageResultImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/MainActivity;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/MainActivity;)V
    .locals 0

    .prologue
    .line 922
    iput-object p1, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;

    invoke-direct {p0}, Lcom/lzx/iteam/service/aidl/NewMessageInterface$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;

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
    .line 1028
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
    .line 1023
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
    .line 1018
    return-void
.end method

.method public onNewEventReply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
    .locals 3
    .param p1, "reply"    # Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 971
    const-string v0, "Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MainActivity---onNewEventReply--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    sget-object v0, Lcom/lzx/iteam/MainActivity;->mActivity:Lcom/lzx/iteam/MainActivity;

    new-instance v1, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;-><init>(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1013
    return-void
.end method

.method public onNewMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 3
    .param p1, "message"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 925
    const-string v0, "Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MainActivity---onNewMessage--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    sget-object v0, Lcom/lzx/iteam/MainActivity;->mActivity:Lcom/lzx/iteam/MainActivity;

    new-instance v1, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;-><init>(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 967
    return-void
.end method
