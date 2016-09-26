.class Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;
.super Ljava/lang/Object;
.source "Socks5Client.java"


# instance fields
.field protected digest:Ljava/lang/String;

.field protected streamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;Ljava/lang/String;)V
    .locals 0
    .param p1, "streamHost"    # Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    .param p2, "digest"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->streamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    .line 55
    iput-object p2, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->digest:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private createSocks5ConnectRequest()[B
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 189
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->digest:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 191
    .local v0, "addr":[B
    array-length v2, v0

    add-int/lit8 v2, v2, 0x7

    new-array v1, v2, [B

    .line 192
    .local v1, "data":[B
    aput-byte v6, v1, v4

    .line 193
    aput-byte v3, v1, v3

    .line 194
    const/4 v2, 0x2

    aput-byte v4, v1, v2

    .line 195
    aput-byte v5, v1, v5

    .line 196
    const/4 v2, 0x4

    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 197
    array-length v2, v0

    invoke-static {v0, v4, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    aput-byte v4, v1, v2

    .line 199
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-byte v4, v1, v2

    .line 201
    return-object v1
.end method


# virtual methods
.method protected establish(Ljava/net/Socket;)Z
    .locals 11
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 140
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 141
    .local v3, "in":Ljava/io/DataInputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 144
    .local v4, "out":Ljava/io/DataOutputStream;
    const/4 v7, 0x3

    new-array v0, v7, [B

    .line 146
    .local v0, "cmd":[B
    aput-byte v10, v0, v6

    .line 147
    aput-byte v8, v0, v8

    .line 148
    aput-byte v6, v0, v9

    .line 150
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 151
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 153
    new-array v5, v9, [B

    .line 154
    .local v5, "response":[B
    invoke-virtual {v3, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 157
    aget-byte v7, v5, v6

    if-ne v7, v10, :cond_0

    aget-byte v7, v5, v8

    if-eqz v7, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v6

    .line 162
    :cond_1
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->createSocks5ConnectRequest()[B

    move-result-object v1

    .line 163
    .local v1, "connectionRequest":[B
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 164
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 169
    :try_start_0
    invoke-static {v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Utils;->receiveSocks5Message(Ljava/io/DataInputStream;)[B
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 176
    .local v2, "connectionResponse":[B
    aput-byte v6, v1, v8

    .line 177
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    goto :goto_0

    .line 172
    .end local v2    # "connectionResponse":[B
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public getSocket(I)Ljava/net/Socket;
    .locals 7
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v4, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client$1;

    invoke-direct {v4, p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client$1;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;)V

    invoke-direct {v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 96
    .local v3, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/net/Socket;>;"
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 97
    .local v2, "executor":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 101
    int-to-long v4, p1

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/Socket;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 105
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 107
    instance-of v4, v0, Ljava/io/IOException;

    if-eqz v4, :cond_0

    .line 108
    check-cast v0, Ljava/io/IOException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 110
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    instance-of v4, v0, Lorg/jivesoftware/smack/XMPPException;

    if-eqz v4, :cond_1

    .line 111
    check-cast v0, Lorg/jivesoftware/smack/XMPPException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 116
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Error while connection to SOCKS5 proxy"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
