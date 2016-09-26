.class Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "ResponseCacheMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/ResponseCacheMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedBodyEmitter"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private allocator:Lcom/koushikdutta/async/util/Allocator;

.field allowEnd:Z

.field cacheResponse:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;

.field private paused:Z

.field pending:Lcom/koushikdutta/async/ByteBufferList;

.field spewRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 387
    const-class v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;J)V
    .locals 2
    .param p1, "cacheResponse"    # Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;
    .param p2, "contentLength"    # J

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 389
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->pending:Lcom/koushikdutta/async/ByteBufferList;

    .line 391
    new-instance v0, Lcom/koushikdutta/async/util/Allocator;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/Allocator;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->allocator:Lcom/koushikdutta/async/util/Allocator;

    .line 398
    new-instance v0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter$1;-><init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->spewRunnable:Ljava/lang/Runnable;

    .line 394
    iput-object p1, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->cacheResponse:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;

    .line 395
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->allocator:Lcom/koushikdutta/async/util/Allocator;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/Allocator;->setCurrentAlloc(I)V

    .line 396
    return-void
.end method


# virtual methods
.method public isPaused()Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->paused:Z

    return v0
.end method

.method protected report(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->allowEnd:Z

    if-nez v0, :cond_0

    .line 462
    :goto_0
    return-void

    .line 459
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 460
    iget-object v2, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->cacheResponse:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;->getBody()Ljava/io/FileInputStream;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 461
    invoke-super {p0, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->report(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->paused:Z

    .line 446
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->spew()V

    .line 447
    return-void
.end method

.method spew()V
    .locals 2

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->spewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 441
    return-void
.end method

.method spewInternal()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 406
    iget-object v4, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v4}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v4

    if-lez v4, :cond_1

    .line 407
    iget-object v4, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, v4}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 408
    iget-object v4, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v4}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v4

    if-lez v4, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->allocator:Lcom/koushikdutta/async/util/Allocator;

    invoke-virtual {v4}, Lcom/koushikdutta/async/util/Allocator;->allocate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 415
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-boolean v4, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    .line 427
    .local v2, "e":Ljava/io/IOException;
    iput-boolean v7, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->allowEnd:Z

    .line 428
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->report(Ljava/lang/Exception;)V

    goto :goto_0

    .line 416
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->cacheResponse:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryCacheResponse;->getBody()Ljava/io/FileInputStream;

    move-result-object v1

    .line 417
    .local v1, "din":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 418
    .local v3, "read":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 419
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->allowEnd:Z

    .line 420
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->report(Ljava/lang/Exception;)V

    goto :goto_0

    .line 423
    :cond_3
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 424
    iget-object v4, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 431
    iget-object v4, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, v4}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 432
    iget-object v4, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v4}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v4

    if-gtz v4, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v4

    iget-object v5, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$CachedBodyEmitter;->spewRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xa

    invoke-virtual {v4, v5, v6, v7}, Lcom/koushikdutta/async/AsyncServer;->postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;

    goto :goto_0
.end method
