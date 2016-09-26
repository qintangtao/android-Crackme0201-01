.class public interface abstract Lcom/lzx/iteam/service/aidl/INetService;
.super Ljava/lang/Object;
.source "INetService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/service/aidl/INetService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addNewMessageInterface(Lcom/lzx/iteam/service/aidl/NewMessageInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createSocketIOConnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract disSocketIOConnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getMessageTag()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract loginXMPPServer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeNewMessageInterface(Lcom/lzx/iteam/service/aidl/NewMessageInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendImageIQ(Ljava/lang/String;[BLcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendImageMessage(Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendSoundIQ(Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendSoundMessage(Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendTextMessage(Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
