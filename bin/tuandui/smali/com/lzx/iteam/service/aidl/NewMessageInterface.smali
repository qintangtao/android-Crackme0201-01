.class public interface abstract Lcom/lzx/iteam/service/aidl/NewMessageInterface;
.super Ljava/lang/Object;
.source "NewMessageInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/service/aidl/NewMessageInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract notifyPage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNewActivityApply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNewEvent(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNewEventReply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNewMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
