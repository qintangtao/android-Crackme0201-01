.class public interface abstract Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;
.super Ljava/lang/Object;
.source "ChatLoginResultInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract HandleLogin(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract SaslFailed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
