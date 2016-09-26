.class public Lcom/koushikdutta/async/http/AsyncSocketMiddleware;
.super Lcom/koushikdutta/async/http/SimpleMiddleware;
.source "AsyncSocketMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;,
        Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;
    }
.end annotation


# instance fields
.field connectAllAddresses:Z

.field connectionInfo:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field idleTimeoutMs:I

.field mClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field maxConnectionCount:I

.field port:I

.field proxyAddress:Ljava/net/InetSocketAddress;

.field proxyHost:Ljava/lang/String;

.field proxyPort:I

.field scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V
    .locals 2
    .param p1, "client"    # Lcom/koushikdutta/async/http/AsyncHttpClient;

    .prologue
    .line 50
    const-string v0, "http"

    const/16 v1, 0x50

    invoke-direct {p0, p1, v0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/lang/String;I)V
    .locals 1
    .param p1, "client"    # Lcom/koushikdutta/async/http/AsyncHttpClient;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/koushikdutta/async/http/SimpleMiddleware;-><init>()V

    .line 26
    const v0, 0x493e0

    iput v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->idleTimeoutMs:I

    .line 110
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectionInfo:Ljava/util/Hashtable;

    .line 112
    const v0, 0x7fffffff

    iput v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->maxConnectionCount:I

    .line 29
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->mClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    .line 30
    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->scheme:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->port:I

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->idleSocket(Lcom/koushikdutta/async/AsyncSocket;)V

    return-void
.end method

.method static synthetic access$1(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->recycleSocket(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void
.end method

.method static synthetic access$2(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->maybeCleanupConnectionInfo(Ljava/lang/String;)V

    return-void
.end method

.method private getOrCreateConnectionInfo(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;
    .locals 2
    .param p1, "lookup"    # Ljava/lang/String;

    .prologue
    .line 258
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectionInfo:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    .line 259
    .local v0, "info":Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;
    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    .end local v0    # "info":Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;
    invoke-direct {v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;-><init>()V

    .line 261
    .restart local v0    # "info":Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectionInfo:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_0
    return-object v0
.end method

.method private idleSocket(Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 1
    .param p1, "socket"    # Lcom/koushikdutta/async/AsyncSocket;

    .prologue
    .line 309
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$3;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$3;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 315
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 318
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$4;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$4;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 326
    return-void
.end method

.method private maybeCleanupConnectionInfo(Ljava/lang/String;)V
    .locals 8
    .param p1, "lookup"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectionInfo:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    .line 268
    .local v1, "info":Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;
    if-nez v1, :cond_3

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v3, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->sockets:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v3}, Lcom/koushikdutta/async/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    .line 272
    .local v0, "idleSocketHolder":Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;
    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->socket:Lcom/koushikdutta/async/AsyncSocket;

    .line 273
    .local v2, "socket":Lcom/koushikdutta/async/AsyncSocket;
    iget-wide v4, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->idleTime:J

    iget v3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->idleTimeoutMs:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 278
    .end local v0    # "idleSocketHolder":Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;
    .end local v2    # "socket":Lcom/koushikdutta/async/AsyncSocket;
    :goto_1
    iget v3, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->openCount:I

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->queue:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v3}, Lcom/koushikdutta/async/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->sockets:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v3}, Lcom/koushikdutta/async/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectionInfo:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 275
    .restart local v0    # "idleSocketHolder":Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;
    .restart local v2    # "socket":Lcom/koushikdutta/async/AsyncSocket;
    :cond_2
    iget-object v3, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->sockets:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v3}, Lcom/koushikdutta/async/ArrayDeque;->pop()Ljava/lang/Object;

    .line 276
    invoke-interface {v2}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    .line 270
    .end local v0    # "idleSocketHolder":Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;
    .end local v2    # "socket":Lcom/koushikdutta/async/AsyncSocket;
    :cond_3
    iget-object v3, v1, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->sockets:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v3}, Lcom/koushikdutta/async/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1
.end method

.method private nextConnection(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 9
    .param p1, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .prologue
    .line 329
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 330
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v6}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->getSchemePort(Landroid/net/Uri;)I

    move-result v4

    .line 331
    .local v4, "port":I
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyPort()I

    move-result v8

    invoke-virtual {p0, v6, v4, v7, v8}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->computeLookup(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "key":Ljava/lang/String;
    monitor-enter p0

    .line 333
    :try_start_0
    iget-object v7, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectionInfo:Ljava/util/Hashtable;

    invoke-virtual {v7, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    .line 334
    .local v2, "info":Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;
    if-nez v2, :cond_0

    .line 335
    monitor-exit p0

    .line 347
    :goto_0
    return-void

    .line 336
    :cond_0
    iget v7, v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->openCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->openCount:I

    .line 337
    :cond_1
    :goto_1
    iget v7, v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->openCount:I

    iget v8, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->maxConnectionCount:I

    if-ge v7, v8, :cond_2

    iget-object v7, v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->queue:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v7}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v7

    if-gtz v7, :cond_3

    .line 345
    :cond_2
    invoke-direct {p0, v3}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->maybeCleanupConnectionInfo(Ljava/lang/String;)V

    .line 332
    monitor-exit p0

    goto :goto_0

    .end local v2    # "info":Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 338
    .restart local v2    # "info":Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;
    :cond_3
    :try_start_1
    iget-object v7, v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->queue:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v7}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    .line 339
    .local v1, "gsd":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;
    iget-object v5, v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->socketCancellable:Lcom/koushikdutta/async/future/Cancellable;

    check-cast v5, Lcom/koushikdutta/async/future/SimpleCancellable;

    .line 340
    .local v5, "socketCancellable":Lcom/koushikdutta/async/future/SimpleCancellable;
    invoke-virtual {v5}, Lcom/koushikdutta/async/future/SimpleCancellable;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 342
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v0

    .line 343
    .local v0, "connect":Lcom/koushikdutta/async/future/Cancellable;
    invoke-virtual {v5, v0}, Lcom/koushikdutta/async/future/SimpleCancellable;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleCancellable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private recycleSocket(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 9
    .param p1, "socket"    # Lcom/koushikdutta/async/AsyncSocket;
    .param p2, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 305
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v8

    .line 286
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v8}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->getSchemePort(Landroid/net/Uri;)I

    move-result v7

    .line 287
    .local v7, "port":I
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyPort()I

    move-result v1

    invoke-virtual {p0, v8, v7, v0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->computeLookup(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 289
    .local v5, "lookup":Ljava/lang/String;
    new-instance v3, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    invoke-direct {v3, p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 290
    .local v3, "idleSocketHolder":Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;
    monitor-enter p0

    .line 291
    :try_start_0
    invoke-direct {p0, v5}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->getOrCreateConnectionInfo(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    move-result-object v6

    .line 292
    .local v6, "info":Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;
    iget-object v2, v6, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->sockets:Lcom/koushikdutta/async/ArrayDeque;

    .line 293
    .local v2, "sockets":Lcom/koushikdutta/async/ArrayDeque;, "Lcom/koushikdutta/async/ArrayDeque<Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;>;"
    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 290
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$2;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/ArrayDeque;Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    goto :goto_0

    .line 290
    .end local v2    # "sockets":Lcom/koushikdutta/async/ArrayDeque;, "Lcom/koushikdutta/async/ArrayDeque<Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;>;"
    .end local v6    # "info":Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method computeLookup(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "port"    # I
    .param p3, "proxyHost"    # Ljava/lang/String;
    .param p4, "proxyPort"    # I

    .prologue
    .line 86
    if-eqz p3, :cond_1

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "proxy":Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?proxy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 89
    .end local v0    # "proxy":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    .restart local v0    # "proxy":Ljava/lang/String;
    goto :goto_0
.end method

.method public disableProxy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyPort:I

    .line 74
    iput-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyHost:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyAddress:Ljava/net/InetSocketAddress;

    .line 76
    return-void
.end method

.method public enableProxy(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 79
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyHost:Ljava/lang/String;

    .line 80
    iput p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyPort:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyAddress:Ljava/net/InetSocketAddress;

    .line 82
    return-void
.end method

.method public getConnectAllAddresses()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectAllAddresses:Z

    return v0
.end method

.method public getMaxConnectionCount()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->maxConnectionCount:I

    return v0
.end method

.method public getSchemePort(Landroid/net/Uri;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, -0x1

    .line 39
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 42
    iget v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->port:I

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method public getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
    .locals 18
    .param p1, "data"    # Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    .prologue
    .line 124
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v13}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v12

    .line 125
    .local v12, "uri":Landroid/net/Uri;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v13}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->getSchemePort(Landroid/net/Uri;)I

    move-result v5

    .line 126
    .local v5, "port":I
    const/4 v13, -0x1

    if-ne v5, v13, :cond_0

    .line 127
    const/4 v7, 0x0

    .line 193
    :goto_0
    return-object v7

    .line 130
    :cond_0
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v13}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyHost()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v14}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyPort()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v5, v13, v14}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->computeLookup(Landroid/net/Uri;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "lookup":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->getOrCreateConnectionInfo(Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;

    move-result-object v3

    .line 132
    .local v3, "info":Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;
    monitor-enter p0

    .line 133
    :try_start_0
    iget v13, v3, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->openCount:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->maxConnectionCount:I

    if-lt v13, v14, :cond_1

    .line 135
    new-instance v7, Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct {v7}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 136
    .local v7, "queueCancel":Lcom/koushikdutta/async/future/SimpleCancellable;
    iget-object v13, v3, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->queue:Lcom/koushikdutta/async/ArrayDeque;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/koushikdutta/async/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 137
    monitor-exit p0

    goto :goto_0

    .line 132
    .end local v7    # "queueCancel":Lcom/koushikdutta/async/future/SimpleCancellable;
    :catchall_0
    move-exception v13

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 140
    :cond_1
    :try_start_1
    iget v13, v3, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->openCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v3, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->openCount:I

    .line 142
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ".owned"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/koushikdutta/async/util/UntypedHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    :cond_2
    :goto_1
    iget-object v13, v3, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->sockets:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v13}, Lcom/koushikdutta/async/ArrayDeque;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 132
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectAllAddresses:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyHost:Ljava/lang/String;

    if-nez v13, :cond_3

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v13}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyHost()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 166
    :cond_3
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v14, "Connecting socket"

    invoke-virtual {v13, v14}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 169
    const/4 v6, 0x0

    .line 170
    .local v6, "proxied":Z
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v13}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyHost()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 171
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v13}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyHost()Ljava/lang/String;

    move-result-object v10

    .line 172
    .local v10, "unresolvedHost":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v13}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyPort()I

    move-result v11

    .line 174
    .local v11, "unresolvedPort":I
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v13}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v13

    invoke-virtual {v13}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v14}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 175
    const/4 v6, 0x1

    .line 188
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->mClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v13}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->connectCallback:Lcom/koushikdutta/async/callback/ConnectCallback;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12, v5, v6}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->wrapCallback(Lcom/koushikdutta/async/callback/ConnectCallback;Landroid/net/Uri;IZ)Lcom/koushikdutta/async/callback/ConnectCallback;

    move-result-object v14

    invoke-virtual {v13, v10, v11, v14}, Lcom/koushikdutta/async/AsyncServer;->connectSocket(Ljava/lang/String;ILcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v7

    goto/16 :goto_0

    .line 145
    .end local v6    # "proxied":Z
    .end local v10    # "unresolvedHost":Ljava/lang/String;
    .end local v11    # "unresolvedPort":I
    :cond_4
    :try_start_2
    iget-object v13, v3, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->sockets:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v13}, Lcom/koushikdutta/async/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;

    .line 146
    .local v2, "idleSocketHolder":Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;
    iget-object v9, v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->socket:Lcom/koushikdutta/async/AsyncSocket;

    .line 147
    .local v9, "socket":Lcom/koushikdutta/async/AsyncSocket;
    iget-wide v14, v2, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->idleTime:J

    move-object/from16 v0, p0

    iget v13, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->idleTimeoutMs:I

    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-gez v13, :cond_5

    .line 148
    invoke-interface {v9}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    goto/16 :goto_1

    .line 151
    :cond_5
    invoke-interface {v9}, Lcom/koushikdutta/async/AsyncSocket;->isOpen()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 154
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v14, "Reusing keep-alive socket"

    invoke-virtual {v13, v14}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->connectCallback:Lcom/koushikdutta/async/callback/ConnectCallback;

    const/4 v14, 0x0

    invoke-interface {v13, v14, v9}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 158
    new-instance v8, Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct {v8}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 159
    .local v8, "ret":Lcom/koushikdutta/async/future/SimpleCancellable;
    invoke-virtual {v8}, Lcom/koushikdutta/async/future/SimpleCancellable;->setComplete()Z

    .line 160
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v8

    goto/16 :goto_0

    .line 177
    .end local v2    # "idleSocketHolder":Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;
    .end local v8    # "ret":Lcom/koushikdutta/async/future/SimpleCancellable;
    .end local v9    # "socket":Lcom/koushikdutta/async/AsyncSocket;
    .restart local v6    # "proxied":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyHost:Ljava/lang/String;

    if-eqz v13, :cond_7

    .line 178
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyHost:Ljava/lang/String;

    .line 179
    .restart local v10    # "unresolvedHost":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->proxyPort:I

    .line 181
    .restart local v11    # "unresolvedPort":I
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v13}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v13

    invoke-virtual {v13}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v14}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getProxyRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 182
    const/4 v6, 0x1

    .line 183
    goto/16 :goto_2

    .line 185
    .end local v10    # "unresolvedHost":Ljava/lang/String;
    .end local v11    # "unresolvedPort":I
    :cond_7
    invoke-virtual {v12}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v10

    .line 186
    .restart local v10    # "unresolvedHost":Ljava/lang/String;
    move v11, v5

    .restart local v11    # "unresolvedPort":I
    goto/16 :goto_2

    .line 192
    .end local v6    # "proxied":Z
    .end local v10    # "unresolvedHost":Ljava/lang/String;
    .end local v11    # "unresolvedPort":I
    :cond_8
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v14, "Resolving domain and connecting to all available addresses"

    invoke-virtual {v13, v14}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->mClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v13}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v13

    invoke-virtual {v12}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/koushikdutta/async/AsyncServer;->getAllByName(Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object v13

    .line 194
    new-instance v14, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1, v5, v12}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$1;-><init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;ILandroid/net/Uri;)V

    invoke-interface {v13, v14}, Lcom/koushikdutta/async/future/Future;->then(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/FutureCallback;

    move-result-object v13

    check-cast v13, Lcom/koushikdutta/async/future/Cancellable;

    move-object v7, v13

    .line 193
    goto/16 :goto_0
.end method

.method public onRequestComplete(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;)V
    .locals 3
    .param p1, "data"    # Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;

    .prologue
    .line 351
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->state:Lcom/koushikdutta/async/util/UntypedHashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".owned"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/util/UntypedHashtable;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 356
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->idleSocket(Lcom/koushikdutta/async/AsyncSocket;)V

    .line 358
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 359
    :cond_1
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "closing out socket (exception)"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 360
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->nextConnection(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    goto :goto_0

    .line 363
    :cond_2
    :try_start_1
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->headers:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/HttpUtil;->isKeepAlive(Lcom/koushikdutta/async/http/libcore/RawHeaders;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/HttpUtil;->isKeepAlive(Lcom/koushikdutta/async/http/libcore/RawHeaders;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 364
    :cond_3
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "closing out socket (not keep alive)"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 365
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/AsyncSocket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->nextConnection(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    goto :goto_0

    .line 368
    :cond_4
    :try_start_2
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "Recycling keep-alive socket"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 369
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, v0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->recycleSocket(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 372
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->nextConnection(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    goto :goto_0

    .line 371
    :catchall_0
    move-exception v0

    .line 372
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-direct {p0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->nextConnection(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    .line 373
    throw v0
.end method

.method public setConnectAllAddresses(Z)V
    .locals 0
    .param p1, "connectAllAddresses"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->connectAllAddresses:Z

    .line 66
    return-void
.end method

.method public setIdleTimeoutMs(I)V
    .locals 0
    .param p1, "idleTimeoutMs"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->idleTimeoutMs:I

    .line 36
    return-void
.end method

.method public setMaxConnectionCount(I)V
    .locals 0
    .param p1, "maxConnectionCount"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->maxConnectionCount:I

    .line 120
    return-void
.end method

.method protected wrapCallback(Lcom/koushikdutta/async/callback/ConnectCallback;Landroid/net/Uri;IZ)Lcom/koushikdutta/async/callback/ConnectCallback;
    .locals 0
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/ConnectCallback;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "port"    # I
    .param p4, "proxied"    # Z

    .prologue
    .line 56
    return-object p1
.end method
