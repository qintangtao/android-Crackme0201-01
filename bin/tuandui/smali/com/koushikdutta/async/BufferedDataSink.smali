.class public Lcom/koushikdutta/async/BufferedDataSink;
.super Ljava/lang/Object;
.source "BufferedDataSink.java"

# interfaces
.implements Lcom/koushikdutta/async/DataSink;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field endPending:Z

.field mDataSink:Lcom/koushikdutta/async/DataSink;

.field mMaxBuffer:I

.field mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

.field mWritable:Lcom/koushikdutta/async/callback/WritableCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/BufferedDataSink;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/koushikdutta/async/DataSink;)V
    .locals 1
    .param p1, "datasink"    # Lcom/koushikdutta/async/DataSink;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    .line 102
    const v0, 0x7fffffff

    iput v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mMaxBuffer:I

    .line 11
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/BufferedDataSink;->setDataSink(Lcom/koushikdutta/async/DataSink;)V

    .line 12
    return-void
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/BufferedDataSink;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/koushikdutta/async/BufferedDataSink;->writePending()V

    return-void
.end method

.method private writePending()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->endPending:Z

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->end()V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mWritable:Lcom/koushikdutta/async/callback/WritableCallback;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mWritable:Lcom/koushikdutta/async/callback/WritableCallback;

    invoke-interface {v0}, Lcom/koushikdutta/async/callback/WritableCallback;->onWriteable()V

    .line 43
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->close()V

    .line 120
    return-void
.end method

.method public end()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->endPending:Z

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->end()V

    goto :goto_0
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    return-object v0
.end method

.method public getDataSink()Lcom/koushikdutta/async/DataSink;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    return-object v0
.end method

.method public getMaxBuffer()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mMaxBuffer:I

    return v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mWritable:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object v0
.end method

.method public isBuffering()Z
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->isOpen()Z

    move-result v0

    return v0
.end method

.method public remaining()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    return v0
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1
    .param p1, "handler"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 135
    return-void
.end method

.method public setDataSink(Lcom/koushikdutta/async/DataSink;)V
    .locals 2
    .param p1, "datasink"    # Lcom/koushikdutta/async/DataSink;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    new-instance v1, Lcom/koushikdutta/async/BufferedDataSink$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/BufferedDataSink$1;-><init>(Lcom/koushikdutta/async/BufferedDataSink;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 30
    return-void
.end method

.method public setMaxBuffer(I)V
    .locals 1
    .param p1, "maxBuffer"    # I

    .prologue
    .line 108
    sget-boolean v0, Lcom/koushikdutta/async/BufferedDataSink;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 109
    :cond_0
    iput p1, p0, Lcom/koushikdutta/async/BufferedDataSink;->mMaxBuffer:I

    .line 110
    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 0
    .param p1, "handler"    # Lcom/koushikdutta/async/callback/WritableCallback;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/koushikdutta/async/BufferedDataSink;->mWritable:Lcom/koushikdutta/async/callback/WritableCallback;

    .line 91
    return-void
.end method

.method public write(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1
    .param p1, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;Z)V

    .line 71
    return-void
.end method

.method protected write(Lcom/koushikdutta/async/ByteBufferList;Z)V
    .locals 3
    .param p1, "bb"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "ignoreBuffer"    # Z

    .prologue
    .line 74
    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v1, p1}, Lcom/koushikdutta/async/DataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    if-lez v1, :cond_2

    .line 78
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    iget v2, p0, Lcom/koushikdutta/async/BufferedDataSink;->mMaxBuffer:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 79
    .local v0, "toRead":I
    if-eqz p2, :cond_1

    .line 80
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    .line 81
    :cond_1
    if-lez v0, :cond_2

    .line 82
    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1, v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 85
    .end local v0    # "toRead":I
    :cond_2
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/koushikdutta/async/BufferedDataSink;->remaining()I

    move-result v2

    invoke-virtual {p0}, Lcom/koushikdutta/async/BufferedDataSink;->getMaxBuffer()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const/4 v1, 0x1

    .line 53
    .local v1, "needsWrite":Z
    iget-object v2, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_2

    .line 54
    const/4 v1, 0x0

    .line 55
    iget-object v2, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v2, p1}, Lcom/koushikdutta/async/DataSink;->write(Ljava/nio/ByteBuffer;)V

    .line 58
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 60
    .local v0, "dup":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 62
    iget-object v2, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    .line 63
    if-eqz v1, :cond_0

    .line 64
    iget-object v2, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    iget-object v3, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/DataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_0
.end method
