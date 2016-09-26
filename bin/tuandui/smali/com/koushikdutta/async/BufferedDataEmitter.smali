.class public Lcom/koushikdutta/async/BufferedDataEmitter;
.super Ljava/lang/Object;
.source "BufferedDataEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/DataEmitter;
.implements Lcom/koushikdutta/async/callback/DataCallback;


# instance fields
.field mBuffers:Lcom/koushikdutta/async/ByteBufferList;

.field mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

.field mEmitter:Lcom/koushikdutta/async/DataEmitter;

.field mEndCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field mEndException:Ljava/lang/Exception;

.field mEnded:Z

.field private mPaused:Z


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/DataEmitter;)V
    .locals 2
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEnded:Z

    .line 39
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mBuffers:Lcom/koushikdutta/async/ByteBufferList;

    .line 9
    iput-object p1, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    .line 10
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0, p0}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 12
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    new-instance v1, Lcom/koushikdutta/async/BufferedDataEmitter$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/BufferedDataEmitter$1;-><init>(Lcom/koushikdutta/async/BufferedDataEmitter;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 21
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->close()V

    .line 26
    return-void
.end method

.method public getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEndCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mPaused:Z

    return v0
.end method

.method public onDataAvailable()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mBuffers:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mBuffers:Lcom/koushikdutta/async/ByteBufferList;

    invoke-interface {v0, p0, v1}, Lcom/koushikdutta/async/callback/DataCallback;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 35
    :cond_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEnded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mBuffers:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-nez v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEndCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEndException:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 37
    :cond_1
    return-void
.end method

.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mBuffers:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 61
    invoke-virtual {p0}, Lcom/koushikdutta/async/BufferedDataEmitter;->onDataAvailable()V

    .line 62
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mPaused:Z

    .line 68
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mPaused:Z

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mPaused:Z

    .line 75
    invoke-virtual {p0}, Lcom/koushikdutta/async/BufferedDataEmitter;->onDataAvailable()V

    goto :goto_0
.end method

.method public setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/DataCallback;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    .line 45
    return-void
.end method

.method public setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEndCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 88
    return-void
.end method
