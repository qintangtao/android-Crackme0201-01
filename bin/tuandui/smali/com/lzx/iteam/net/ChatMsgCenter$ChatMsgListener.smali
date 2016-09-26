.class public interface abstract Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;
.super Ljava/lang/Object;
.source "ChatMsgCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/net/ChatMsgCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChatMsgListener"
.end annotation


# virtual methods
.method public abstract onChange(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onNoChange(I)V
.end method

.method public abstract onOver(I)V
.end method
