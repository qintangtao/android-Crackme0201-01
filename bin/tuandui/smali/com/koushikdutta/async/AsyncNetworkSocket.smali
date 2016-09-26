.class public Lcom/koushikdutta/async/AsyncNetworkSocket;
.super Ljava/lang/Object;
.source "AsyncNetworkSocket.java"

# interfaces
.implements Lcom/koushikdutta/async/AsyncSocket;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field allocator:Lcom/koushikdutta/async/util/Allocator;

.field closeReported:Z

.field private mChannel:Lcom/koushikdutta/async/ChannelWrapper;

.field mClosedHander:Lcom/koushikdutta/async/callback/CompletedCallback;

.field private mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field mDataHandler:Lcom/koushikdutta/async/callback/DataCallback;

.field mEndReported:Z

.field private mKey:Ljava/nio/channels/SelectionKey;

.field mPaused:Z

.field mPendingEndException:Ljava/lang/Exception;

.field private mServer:Lcom/koushikdutta/async/AsyncServer;

.field mWriteableHandler:Lcom/koushikdutta/async/callback/WritableCallback;

.field private pending:Lcom/koushikdutta/async/ByteBufferList;

.field socketAddress:Ljava/net/InetSocketAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/AsyncNetworkSocket;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPaused:Z

    .line 19
    return-void
.end method

.method private handleRemaining(I)V
    .locals 2
    .param p1, "remaining"    # I

    .prologue
    .line 95
    if-lez p1, :cond_1

    .line 97
    sget-boolean v0, Lcom/koushikdutta/async/AsyncNetworkSocket;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0
.end method

.method private spitPending()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 315
    :cond_0
    return-void
.end method


# virtual methods
.method attach(Ljava/nio/channels/DatagramChannel;)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/koushikdutta/async/DatagramChannelWrapper;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/DatagramChannelWrapper;-><init>(Ljava/nio/channels/DatagramChannel;)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    .line 41
    new-instance v0, Lcom/koushikdutta/async/util/Allocator;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/util/Allocator;-><init>(I)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->allocator:Lcom/koushikdutta/async/util/Allocator;

    .line 42
    return-void
.end method

.method attach(Ljava/nio/channels/SocketChannel;Ljava/net/InetSocketAddress;)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "socketAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    iput-object p2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->socketAddress:Ljava/net/InetSocketAddress;

    .line 33
    new-instance v0, Lcom/koushikdutta/async/util/Allocator;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/Allocator;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->allocator:Lcom/koushikdutta/async/util/Allocator;

    .line 34
    new-instance v0, Lcom/koushikdutta/async/SocketChannelWrapper;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/SocketChannelWrapper;-><init>(Ljava/nio/channels/SocketChannel;)V

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    .line 35
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->closeInternal()V

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportClose(Ljava/lang/Exception;)V

    .line 207
    return-void
.end method

.method public closeInternal()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public end()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->shutdownOutput()V

    .line 24
    return-void
.end method

.method getChannel()Lcom/koushikdutta/async/ChannelWrapper;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    return-object v0
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mClosedHander:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mDataHandler:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->socketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public getSocket()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->getChannel()Lcom/koushikdutta/async/ChannelWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->getSocket()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mWriteableHandler:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ChannelWrapper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPaused:Z

    return v0
.end method

.method public onDataWritable()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mWriteableHandler:Lcom/koushikdutta/async/callback/WritableCallback;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mWriteableHandler:Lcom/koushikdutta/async/callback/WritableCallback;

    invoke-interface {v0}, Lcom/koushikdutta/async/callback/WritableCallback;->onWriteable()V

    .line 52
    :cond_0
    return-void
.end method

.method onReadable()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 142
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->spitPending()V

    .line 146
    iget-boolean v6, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPaused:Z

    if-eqz v6, :cond_1

    .line 147
    const/4 v3, 0x0

    .line 189
    :cond_0
    :goto_0
    return v3

    .line 148
    :cond_1
    const/4 v3, 0x0

    .line 150
    .local v3, "total":I
    const/4 v1, 0x0

    .line 153
    .local v1, "closed":Z
    :try_start_0
    iget-object v6, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->allocator:Lcom/koushikdutta/async/util/Allocator;

    invoke-virtual {v6}, Lcom/koushikdutta/async/util/Allocator;->allocate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 157
    .local v0, "b":Ljava/nio/ByteBuffer;
    iget-object v6, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v6, v0}, Lcom/koushikdutta/async/ChannelWrapper;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    int-to-long v4, v6

    .line 158
    .local v4, "read":J
    cmp-long v6, v4, v8

    if-gez v6, :cond_3

    .line 159
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->closeInternal()V

    .line 160
    const/4 v1, 0x1

    .line 165
    :goto_1
    cmp-long v6, v4, v8

    if-lez v6, :cond_2

    .line 166
    iget-object v6, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->allocator:Lcom/koushikdutta/async/util/Allocator;

    invoke-virtual {v6, v4, v5}, Lcom/koushikdutta/async/util/Allocator;->track(J)V

    .line 167
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 174
    iget-object v6, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v6, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    .line 175
    iget-object v6, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, v6}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 178
    :cond_2
    if-eqz v1, :cond_0

    .line 179
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportEndPending(Ljava/lang/Exception;)V

    .line 180
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportClose(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    .end local v4    # "read":J
    :catch_0
    move-exception v2

    .line 184
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->closeInternal()V

    .line 185
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportEndPending(Ljava/lang/Exception;)V

    .line 186
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportClose(Ljava/lang/Exception;)V

    goto :goto_0

    .line 163
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "b":Ljava/nio/ByteBuffer;
    .restart local v4    # "read":J
    :cond_3
    int-to-long v6, v3

    add-long/2addr v6, v4

    long-to-int v3, v6

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->getAffinity()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 291
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    new-instance v1, Lcom/koushikdutta/async/AsyncNetworkSocket$3;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/AsyncNetworkSocket$3;-><init>(Lcom/koushikdutta/async/AsyncNetworkSocket;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPaused:Z

    if-nez v0, :cond_0

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPaused:Z

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected reportClose(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->closeReported:Z

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->closeReported:Z

    .line 197
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mClosedHander:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mClosedHander:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mClosedHander:Lcom/koushikdutta/async/callback/CompletedCallback;

    goto :goto_0
.end method

.method reportEnd(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mEndReported:Z

    if-eqz v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mEndReported:Z

    .line 255
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    goto :goto_0

    .line 257
    :cond_2
    if-eqz p1, :cond_0

    .line 258
    const-string v0, "NIO"

    const-string v1, "Unhandled exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method reportEndPending(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPendingEndException:Ljava/lang/Exception;

    .line 269
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportEnd(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->getAffinity()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 320
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    new-instance v1, Lcom/koushikdutta/async/AsyncNetworkSocket$4;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/AsyncNetworkSocket$4;-><init>(Lcom/koushikdutta/async/AsyncNetworkSocket;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPaused:Z

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPaused:Z

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_1
    invoke-direct {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->spitPending()V

    .line 338
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPendingEndException:Ljava/lang/Exception;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportEndPending(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0
    .param p1, "handler"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mClosedHander:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 239
    return-void
.end method

.method public setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/DataCallback;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mDataHandler:Lcom/koushikdutta/async/callback/DataCallback;

    .line 228
    return-void
.end method

.method public setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 275
    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 0
    .param p1, "handler"    # Lcom/koushikdutta/async/callback/WritableCallback;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mWriteableHandler:Lcom/koushikdutta/async/callback/WritableCallback;

    .line 222
    return-void
.end method

.method setup(Lcom/koushikdutta/async/AsyncServer;Ljava/nio/channels/SelectionKey;)V
    .locals 0
    .param p1, "server"    # Lcom/koushikdutta/async/AsyncServer;
    .param p2, "key"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    .line 60
    iput-object p2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mKey:Ljava/nio/channels/SelectionKey;

    .line 61
    return-void
.end method

.method public write(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 5
    .param p1, "list"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 65
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v3}, Lcom/koushikdutta/async/AsyncServer;->getAffinity()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 66
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    new-instance v4, Lcom/koushikdutta/async/AsyncNetworkSocket$1;

    invoke-direct {v4, p0, p1}, Lcom/koushikdutta/async/AsyncNetworkSocket$1;-><init>(Lcom/koushikdutta/async/AsyncNetworkSocket;Lcom/koushikdutta/async/ByteBufferList;)V

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v3}, Lcom/koushikdutta/async/ChannelWrapper;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 75
    sget-boolean v3, Lcom/koushikdutta/async/AsyncNetworkSocket;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v3}, Lcom/koushikdutta/async/ChannelWrapper;->isChunked()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 80
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    .line 81
    .local v1, "before":I
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->getAllArray()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 82
    .local v0, "arr":[Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v3, v0}, Lcom/koushikdutta/async/ChannelWrapper;->write([Ljava/nio/ByteBuffer;)I

    .line 83
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->addAll([Ljava/nio/ByteBuffer;)V

    .line 84
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/koushikdutta/async/AsyncNetworkSocket;->handleRemaining(I)V

    .line 85
    iget-object v3, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/AsyncServer;->onDataSent(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v0    # "arr":[Ljava/nio/ByteBuffer;
    .end local v1    # "before":I
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->closeInternal()V

    .line 89
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportEndPending(Ljava/lang/Exception;)V

    .line 90
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportClose(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "b"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 108
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v2}, Lcom/koushikdutta/async/AsyncServer;->getAffinity()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 109
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    new-instance v3, Lcom/koushikdutta/async/AsyncNetworkSocket$2;

    invoke-direct {v3, p0, p1}, Lcom/koushikdutta/async/AsyncNetworkSocket$2;-><init>(Lcom/koushikdutta/async/AsyncNetworkSocket;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v2}, Lcom/koushikdutta/async/ChannelWrapper;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
    sget-boolean v2, Lcom/koushikdutta/async/AsyncNetworkSocket;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v2}, Lcom/koushikdutta/async/ChannelWrapper;->isChunked()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->closeInternal()V

    .line 132
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportEndPending(Ljava/lang/Exception;)V

    .line 133
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->reportClose(Ljava/lang/Exception;)V

    goto :goto_0

    .line 125
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 126
    .local v0, "before":I
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mChannel:Lcom/koushikdutta/async/ChannelWrapper;

    invoke-virtual {v2, p1}, Lcom/koushikdutta/async/ChannelWrapper;->write(Ljava/nio/ByteBuffer;)I

    .line 127
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/koushikdutta/async/AsyncNetworkSocket;->handleRemaining(I)V

    .line 128
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/AsyncServer;->onDataSent(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
