.class Lcom/koushikdutta/async/PushParser$UntilWaiter;
.super Lcom/koushikdutta/async/PushParser$Waiter;
.source "PushParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/PushParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UntilWaiter"
.end annotation


# instance fields
.field callback:Lcom/koushikdutta/async/callback/DataCallback;

.field value:B


# direct methods
.method public constructor <init>(BLcom/koushikdutta/async/callback/DataCallback;)V
    .locals 1
    .param p1, "value"    # B
    .param p2, "callback"    # Lcom/koushikdutta/async/callback/DataCallback;

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/PushParser$Waiter;-><init>(I)V

    .line 115
    iput-byte p1, p0, Lcom/koushikdutta/async/PushParser$UntilWaiter;->value:B

    .line 116
    iput-object p2, p0, Lcom/koushikdutta/async/PushParser$UntilWaiter;->callback:Lcom/koushikdutta/async/callback/DataCallback;

    .line 117
    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;
    .locals 6
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 121
    const/4 v2, 0x1

    .line 122
    .local v2, "found":Z
    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 123
    .local v1, "cb":Lcom/koushikdutta/async/ByteBufferList;
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 142
    :goto_1
    iget-object v4, p0, Lcom/koushikdutta/async/PushParser$UntilWaiter;->callback:Lcom/koushikdutta/async/callback/DataCallback;

    invoke-interface {v4, p1, v1}, Lcom/koushikdutta/async/callback/DataCallback;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 144
    if-eqz v2, :cond_0

    .line 145
    const/4 p0, 0x0

    .line 147
    .end local p0    # "this":Lcom/koushikdutta/async/PushParser$UntilWaiter;
    :cond_0
    return-object p0

    .line 124
    .restart local p0    # "this":Lcom/koushikdutta/async/PushParser$UntilWaiter;
    :cond_1
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remove()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 125
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 126
    const/4 v3, 0x0

    .line 127
    .local v3, "index":I
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iget-byte v5, p0, Lcom/koushikdutta/async/PushParser$UntilWaiter;->value:B

    if-ne v4, v5, :cond_4

    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_3

    .line 130
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 131
    if-eqz v2, :cond_5

    .line 132
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->addFirst(Ljava/nio/ByteBuffer;)V

    .line 133
    invoke-virtual {p2, v1, v3}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 135
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    goto :goto_1

    .line 128
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 127
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 138
    :cond_5
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method
