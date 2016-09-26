.class Lcom/koushikdutta/async/PushParser$ByteBufferListWaiter;
.super Lcom/koushikdutta/async/PushParser$Waiter;
.source "PushParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/PushParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteBufferListWaiter"
.end annotation


# instance fields
.field callback:Lcom/koushikdutta/async/PushParser$ParseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/PushParser$ParseCallback",
            "<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/koushikdutta/async/PushParser$ParseCallback;)V
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/koushikdutta/async/PushParser$ParseCallback",
            "<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, "callback":Lcom/koushikdutta/async/PushParser$ParseCallback;, "Lcom/koushikdutta/async/PushParser$ParseCallback<Lcom/koushikdutta/async/ByteBufferList;>;"
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/PushParser$Waiter;-><init>(I)V

    .line 83
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length should be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iput-object p2, p0, Lcom/koushikdutta/async/PushParser$ByteBufferListWaiter;->callback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    .line 85
    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;
    .locals 2
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser$ByteBufferListWaiter;->callback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    iget v1, p0, Lcom/koushikdutta/async/PushParser$ByteBufferListWaiter;->length:I

    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/ByteBufferList;->get(I)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/PushParser$ParseCallback;->parsed(Ljava/lang/Object;)V

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method
