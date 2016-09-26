.class public interface abstract Lcom/lzx/iteam/net/EventListCenter$EventDataListener;
.super Ljava/lang/Object;
.source "EventListCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/net/EventListCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventDataListener"
.end annotation


# virtual methods
.method public abstract onAddMore(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
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
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onNoChange(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;)V"
        }
    .end annotation
.end method
