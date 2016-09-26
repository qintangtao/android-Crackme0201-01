.class Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "ResponseCacheMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/ResponseCacheMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BodyCacher"
.end annotation


# instance fields
.field cached:Lcom/koushikdutta/async/ByteBufferList;

.field editor:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;)V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->editor:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->editor:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->abort()V

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->editor:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;

    .line 377
    :cond_0
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->editor:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->editor:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->commit()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->editor:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;

    .line 384
    :cond_0
    return-void
.end method

.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 6
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 327
    iget-object v3, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->cached:Lcom/koushikdutta/async/ByteBufferList;

    if-eqz v3, :cond_2

    .line 328
    iget-object v3, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->cached:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, v3}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 330
    iget-object v3, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->cached:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v3}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v3

    if-lez v3, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->cached:Lcom/koushikdutta/async/ByteBufferList;

    .line 336
    :cond_2
    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 338
    .local v1, "copy":Lcom/koushikdutta/async/ByteBufferList;
    :try_start_0
    iget-object v3, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->editor:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;

    if-eqz v3, :cond_3

    .line 339
    iget-object v3, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->editor:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->newOutputStream(I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 340
    .local v2, "outputStream":Ljava/io/OutputStream;
    if-eqz v2, :cond_5

    .line 341
    :goto_1
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-eqz v3, :cond_4

    .line 360
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    :cond_3
    :goto_2
    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 361
    invoke-virtual {v1, p2}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 364
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/FilteredDataEmitter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 366
    iget-object v3, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->editor:Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v3

    if-lez v3, :cond_0

    .line 367
    new-instance v3, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v3}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v3, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->cached:Lcom/koushikdutta/async/ByteBufferList;

    .line 368
    iget-object v3, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->cached:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v3}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_0

    .line 342
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :cond_4
    :try_start_1
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remove()Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 344
    .local v0, "b":Ljava/nio/ByteBuffer;
    :try_start_2
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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    :try_start_3
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 357
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    :try_start_4
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->abort()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 360
    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 361
    invoke-virtual {v1, p2}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_3

    .line 346
    .restart local v0    # "b":Ljava/nio/ByteBuffer;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v3

    .line 347
    :try_start_5
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    .line 348
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 359
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    .line 360
    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 361
    invoke-virtual {v1, p2}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 362
    throw v3

    .line 352
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :cond_5
    :try_start_6
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->abort()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2
.end method

.method protected report(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 320
    invoke-super {p0, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->report(Ljava/lang/Exception;)V

    .line 321
    if-eqz p1, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$BodyCacher;->abort()V

    .line 323
    :cond_0
    return-void
.end method
