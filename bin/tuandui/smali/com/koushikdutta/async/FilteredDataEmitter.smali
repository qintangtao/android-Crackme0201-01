.class public Lcom/koushikdutta/async/FilteredDataEmitter;
.super Lcom/koushikdutta/async/DataEmitterBase;
.source "FilteredDataEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/DataEmitter;
.implements Lcom/koushikdutta/async/callback/DataCallback;
.implements Lcom/koushikdutta/async/wrapper/DataEmitterWrapper;
.implements Lcom/koushikdutta/async/DataTrackingEmitter;


# instance fields
.field mEmitter:Lcom/koushikdutta/async/DataEmitter;

.field totalRead:I

.field tracker:Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/koushikdutta/async/DataEmitterBase;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->close()V

    .line 87
    return-void
.end method

.method public getBytesRead()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->totalRead:I

    return v0
.end method

.method public getDataEmitter()Lcom/koushikdutta/async/DataEmitter;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    return-object v0
.end method

.method public getDataTracker()Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->tracker:Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->isPaused()Z

    move-result v0

    return v0
.end method

.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 2
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 48
    if-eqz p2, :cond_0

    .line 49
    iget v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->totalRead:I

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->totalRead:I

    .line 50
    :cond_0
    invoke-static {p0, p2}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 51
    if-eqz p2, :cond_1

    .line 52
    iget v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->totalRead:I

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->totalRead:I

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->tracker:Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 54
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->tracker:Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;

    iget v1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->totalRead:I

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;->onData(I)V

    .line 57
    :cond_2
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->pause()V

    .line 67
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->resume()V

    .line 72
    return-void
.end method

.method public setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V
    .locals 2
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    .line 20
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0, p0}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 21
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    new-instance v1, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;-><init>(Lcom/koushikdutta/async/FilteredDataEmitter;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 27
    return-void
.end method

.method public setDataTracker(Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;)V
    .locals 0
    .param p1, "tracker"    # Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->tracker:Lcom/koushikdutta/async/DataTrackingEmitter$DataTracker;

    .line 42
    return-void
.end method
