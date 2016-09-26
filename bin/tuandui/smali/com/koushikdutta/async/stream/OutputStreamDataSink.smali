.class public Lcom/koushikdutta/async/stream/OutputStreamDataSink;
.super Ljava/lang/Object;
.source "OutputStreamDataSink.java"

# interfaces
.implements Lcom/koushikdutta/async/DataSink;


# instance fields
.field closeException:Ljava/lang/Exception;

.field closeReported:Z

.field mClosedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field mStream:Ljava/io/OutputStream;

.field mWritable:Lcom/koushikdutta/async/callback/WritableCallback;

.field outputStreamCallback:Lcom/koushikdutta/async/callback/WritableCallback;

.field server:Lcom/koushikdutta/async/AsyncServer;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;)V
    .locals 1
    .param p1, "server"    # Lcom/koushikdutta/async/AsyncServer;

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/OutputStream;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "server"    # Lcom/koushikdutta/async/AsyncServer;
    .param p2, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->server:Lcom/koushikdutta/async/AsyncServer;

    .line 38
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->setOutputStream(Ljava/io/OutputStream;)V

    .line 39
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->end()V

    .line 33
    return-void
.end method

.method public end()V
    .locals 2

    .prologue
    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->mStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->mStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 23
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->reportClose(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->reportClose(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->mClosedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->mStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->server:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->mWritable:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->closeReported:Z

    return v0
.end method

.method public reportClose(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->closeReported:Z

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->closeReported:Z

    .line 101
    iput-object p1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->closeException:Ljava/lang/Exception;

    .line 103
    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->mClosedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->mClosedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    iget-object v1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->closeException:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0
    .param p1, "handler"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->mClosedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 111
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->mStream:Ljava/io/OutputStream;

    .line 44
    return-void
.end method

.method public setOutputStreamWritableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 0
    .param p1, "outputStreamCallback"    # Lcom/koushikdutta/async/callback/WritableCallback;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->outputStreamCallback:Lcom/koushikdutta/async/callback/WritableCallback;

    .line 126
    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 0
    .param p1, "handler"    # Lcom/koushikdutta/async/callback/WritableCallback;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->mWritable:Lcom/koushikdutta/async/callback/WritableCallback;

    .line 83
    return-void
.end method

.method public write(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 6
    .param p1, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 65
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->size()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_0

    .line 75
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    .line 77
    :goto_1
    return-void

    .line 66
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remove()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 67
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 68
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->reportClose(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    goto :goto_1

    .line 74
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 75
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    .line 76
    throw v2
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v5, 0x0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 59
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 60
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/stream/OutputStreamDataSink;->reportClose(Ljava/lang/Exception;)V

    goto :goto_0
.end method
