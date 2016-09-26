.class public interface abstract Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;
.super Ljava/lang/Object;
.source "TalkListCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/net/TalkListCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TalkDataListener"
.end annotation


# virtual methods
.method public abstract onAddMore(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/TalkListData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onChange(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/TalkListData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onNoChange()V
.end method
