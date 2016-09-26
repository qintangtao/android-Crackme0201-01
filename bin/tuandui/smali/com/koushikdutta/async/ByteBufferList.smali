.class public Lcom/koushikdutta/async/ByteBufferList;
.super Ljava/lang/Object;
.source "ByteBufferList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/ByteBufferList$Reclaimer;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final EMPTY_BYTEBUFFER:Ljava/nio/ByteBuffer;

.field private static final LOCK:Ljava/lang/Object;

.field public static MAX_ITEM_SIZE:I

.field private static MAX_SIZE:I

.field static currentSize:I

.field static maxItem:I

.field static reclaimed:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mBuffers:Lcom/koushikdutta/async/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/ArrayDeque",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field order:Ljava/nio/ByteOrder;

.field private remaining:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 13
    const-class v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/ByteBufferList;->$assertionsDisabled:Z

    .line 381
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v2, 0x8

    new-instance v3, Lcom/koushikdutta/async/ByteBufferList$Reclaimer;

    invoke-direct {v3}, Lcom/koushikdutta/async/ByteBufferList$Reclaimer;-><init>()V

    invoke-direct {v0, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    sput-object v0, Lcom/koushikdutta/async/ByteBufferList;->reclaimed:Ljava/util/PriorityQueue;

    .line 389
    const/high16 v0, 0x100000

    sput v0, Lcom/koushikdutta/async/ByteBufferList;->MAX_SIZE:I

    .line 390
    const/high16 v0, 0x40000

    sput v0, Lcom/koushikdutta/async/ByteBufferList;->MAX_ITEM_SIZE:I

    .line 391
    sput v1, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    .line 392
    sput v1, Lcom/koushikdutta/async/ByteBufferList;->maxItem:I

    .line 449
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/ByteBufferList;->LOCK:Ljava/lang/Object;

    .line 505
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/ByteBufferList;->EMPTY_BYTEBUFFER:Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    move v0, v1

    .line 13
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/koushikdutta/async/ArrayDeque;

    invoke-direct {v0}, Lcom/koushikdutta/async/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    .line 16
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    .line 27
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v1, Lcom/koushikdutta/async/ArrayDeque;

    invoke-direct {v1}, Lcom/koushikdutta/async/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    .line 16
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    .line 70
    const/4 v1, 0x0

    iput v1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    .line 35
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 36
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    .line 37
    return-void
.end method

.method public varargs constructor <init>([Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "b"    # [Ljava/nio/ByteBuffer;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/koushikdutta/async/ArrayDeque;

    invoke-direct {v0}, Lcom/koushikdutta/async/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    .line 16
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    .line 30
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ByteBufferList;->addAll([Ljava/nio/ByteBuffer;)V

    .line 31
    return-void
.end method

.method private addRemaining(I)V
    .locals 1
    .param p1, "remaining"    # I

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-ltz v0, :cond_0

    .line 324
    iget v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    .line 325
    :cond_0
    return-void
.end method

.method private static getReclaimed()Ljava/util/PriorityQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/PriorityQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 385
    const/4 v0, 0x0

    .line 386
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/koushikdutta/async/ByteBufferList;->reclaimed:Ljava/util/PriorityQueue;

    goto :goto_0
.end method

.method public static obtain(I)Ljava/nio/ByteBuffer;
    .locals 7
    .param p0, "size"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 452
    sget v2, Lcom/koushikdutta/async/ByteBufferList;->maxItem:I

    if-gt p0, v2, :cond_1

    .line 453
    invoke-static {}, Lcom/koushikdutta/async/ByteBufferList;->getReclaimed()Ljava/util/PriorityQueue;

    move-result-object v0

    .line 454
    .local v0, "r":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/nio/ByteBuffer;>;"
    if-eqz v0, :cond_1

    .line 455
    sget-object v6, Lcom/koushikdutta/async/ByteBufferList;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 456
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 455
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    .end local v0    # "r":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/nio/ByteBuffer;>;"
    :cond_1
    const/16 v2, 0x2000

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 474
    .local v1, "ret":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v1

    .line 457
    .end local v1    # "ret":Ljava/nio/ByteBuffer;
    .restart local v0    # "r":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/nio/ByteBuffer;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 458
    .restart local v1    # "ret":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 459
    const/4 v2, 0x0

    sput v2, Lcom/koushikdutta/async/ByteBufferList;->maxItem:I

    .line 460
    :cond_3
    sget v2, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    sub-int/2addr v2, v5

    sput v2, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    .line 461
    sget-boolean v2, Lcom/koushikdutta/async/ByteBufferList;->$assertionsDisabled:Z

    if-nez v2, :cond_6

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-eqz v2, :cond_4

    move v5, v3

    :goto_1
    sget v2, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    if-nez v2, :cond_5

    move v2, v3

    :goto_2
    xor-int/2addr v2, v5

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 455
    .end local v1    # "ret":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v1    # "ret":Ljava/nio/ByteBuffer;
    :cond_4
    move v5, v4

    .line 461
    goto :goto_1

    :cond_5
    move v2, v4

    goto :goto_2

    .line 462
    :cond_6
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-lt v2, p0, :cond_0

    .line 464
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static obtainArray([Ljava/nio/ByteBuffer;I)V
    .locals 12
    .param p0, "arr"    # [Ljava/nio/ByteBuffer;
    .param p1, "size"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 478
    invoke-static {}, Lcom/koushikdutta/async/ByteBufferList;->getReclaimed()Ljava/util/PriorityQueue;

    move-result-object v5

    .line 479
    .local v5, "r":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/nio/ByteBuffer;>;"
    const/4 v2, 0x0

    .line 480
    .local v2, "index":I
    const/4 v6, 0x0

    .line 482
    .local v6, "total":I
    if-eqz v5, :cond_7

    .line 483
    sget-object v11, Lcom/koushikdutta/async/ByteBufferList;->LOCK:Ljava/lang/Object;

    monitor-enter v11

    move v3, v2

    .line 484
    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v7

    if-lez v7, :cond_0

    if-ge v6, p1, :cond_0

    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    if-lt v3, v7, :cond_1

    .line 483
    :cond_0
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    :goto_1
    if-ge v6, p1, :cond_6

    .line 496
    const/16 v7, 0x2000

    sub-int v8, p1, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 497
    .local v0, "b":Ljava/nio/ByteBuffer;
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aput-object v0, p0, v3

    .line 500
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    :goto_2
    move v1, v2

    .local v1, "i":I
    :goto_3
    array-length v7, p0

    if-lt v1, v7, :cond_5

    .line 503
    return-void

    .line 485
    .end local v1    # "i":I
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 486
    .restart local v0    # "b":Ljava/nio/ByteBuffer;
    sget v7, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    sub-int/2addr v7, v10

    sput v7, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    .line 487
    sget-boolean v7, Lcom/koushikdutta/async/ByteBufferList;->$assertionsDisabled:Z

    if-nez v7, :cond_4

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v7

    if-eqz v7, :cond_2

    move v10, v8

    :goto_4
    sget v7, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    if-nez v7, :cond_3

    move v7, v8

    :goto_5
    xor-int/2addr v7, v10

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v7

    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    :goto_6
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v7

    .end local v2    # "index":I
    .restart local v0    # "b":Ljava/nio/ByteBuffer;
    .restart local v3    # "index":I
    :cond_2
    move v10, v9

    .line 487
    goto :goto_4

    :cond_3
    move v7, v9

    goto :goto_5

    .line 488
    :cond_4
    sub-int v7, p1, v6

    :try_start_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    .line 489
    .local v4, "needed":I
    add-int/2addr v6, v4

    .line 490
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    :try_start_4
    aput-object v0, p0, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 501
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    .end local v3    # "index":I
    .end local v4    # "needed":I
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    :cond_5
    sget-object v7, Lcom/koushikdutta/async/ByteBufferList;->EMPTY_BYTEBUFFER:Ljava/nio/ByteBuffer;

    aput-object v7, p0, v1

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 483
    .end local v1    # "i":I
    :catchall_1
    move-exception v7

    goto :goto_6

    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_6
    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_2

    :cond_7
    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_1
.end method

.method private read(I)Ljava/nio/ByteBuffer;
    .locals 16
    .param p1, "count"    # I

    .prologue
    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v11

    move/from16 v0, p1

    if-ge v11, v0, :cond_0

    .line 190
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "count : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 192
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v11}, Lcom/koushikdutta/async/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 193
    .local v5, "first":Ljava/nio/ByteBuffer;
    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 198
    :cond_1
    if-nez v5, :cond_3

    .line 199
    sget-object v11, Lcom/koushikdutta/async/ByteBufferList;->EMPTY_BYTEBUFFER:Ljava/nio/ByteBuffer;

    .line 265
    :goto_1
    return-object v11

    .line 194
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v11}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/nio/ByteBuffer;

    invoke-static {v11}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v11}, Lcom/koushikdutta/async/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "first":Ljava/nio/ByteBuffer;
    check-cast v5, Ljava/nio/ByteBuffer;

    .restart local v5    # "first":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 202
    :cond_3
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    move/from16 v0, p1

    if-lt v11, v0, :cond_4

    .line 203
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    goto :goto_1

    .line 206
    :cond_4
    const/4 v7, 0x0

    .line 207
    .local v7, "ret":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .line 208
    .local v8, "retOffset":I
    const/4 v1, 0x0

    .line 212
    .local v1, "allocSize":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v11}, Lcom/koushikdutta/async/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_6

    .line 223
    :cond_5
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    if-le v11, v1, :cond_b

    .line 225
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    add-int/2addr v14, v8

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    .line 227
    .local v9, "retRemaining":I
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 228
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 229
    const/4 v1, 0x0

    .line 230
    :goto_3
    move/from16 v0, p1

    if-lt v1, v0, :cond_9

    .line 241
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v11, v7}, Lcom/koushikdutta/async/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    goto :goto_1

    .line 212
    .end local v9    # "retRemaining":I
    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 213
    .local v2, "b":Ljava/nio/ByteBuffer;
    move/from16 v0, p1

    if-ge v1, v0, :cond_5

    .line 216
    if-eqz v7, :cond_7

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v12

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v13

    if-le v12, v13, :cond_8

    :cond_7
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v12

    move/from16 v0, p1

    if-lt v12, v0, :cond_8

    .line 217
    move-object v7, v2

    .line 218
    move v8, v1

    .line 220
    :cond_8
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    add-int/2addr v1, v12

    goto :goto_2

    .line 231
    .end local v2    # "b":Ljava/nio/ByteBuffer;
    .restart local v9    # "retRemaining":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v11}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 232
    .restart local v2    # "b":Ljava/nio/ByteBuffer;
    if-eq v2, v7, :cond_a

    .line 233
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    add-int/2addr v14, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    add-int/2addr v1, v11

    .line 235
    invoke-static {v2}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    goto :goto_3

    .line 238
    :cond_a
    add-int/2addr v1, v9

    goto :goto_3

    .line 245
    .end local v2    # "b":Ljava/nio/ByteBuffer;
    .end local v9    # "retRemaining":I
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 246
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 247
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 248
    .local v4, "bytes":[B
    const/4 v6, 0x0

    .line 249
    .local v6, "offset":I
    const/4 v3, 0x0

    .line 250
    .local v3, "bb":Ljava/nio/ByteBuffer;
    :cond_c
    :goto_4
    move/from16 v0, p1

    if-lt v6, v0, :cond_e

    .line 262
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-lez v11, :cond_d

    .line 263
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v11, v3}, Lcom/koushikdutta/async/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 264
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v11, v7}, Lcom/koushikdutta/async/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    goto/16 :goto_1

    .line 251
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v11}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "bb":Ljava/nio/ByteBuffer;
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 252
    .restart local v3    # "bb":Ljava/nio/ByteBuffer;
    sub-int v11, p1, v6

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 253
    .local v10, "toRead":I
    invoke-virtual {v3, v4, v6, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 254
    add-int/2addr v6, v10

    .line 255
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-nez v11, :cond_c

    .line 256
    invoke-static {v3}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    .line 257
    const/4 v3, 0x0

    goto :goto_4
.end method

.method public static reclaim(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 411
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 415
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    const/16 v5, 0x2000

    if-lt v2, v5, :cond_0

    .line 417
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    sget v5, Lcom/koushikdutta/async/ByteBufferList;->MAX_ITEM_SIZE:I

    if-gt v2, v5, :cond_0

    .line 420
    invoke-static {}, Lcom/koushikdutta/async/ByteBufferList;->getReclaimed()Ljava/util/PriorityQueue;

    move-result-object v1

    .line 421
    .local v1, "r":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/nio/ByteBuffer;>;"
    if-eqz v1, :cond_0

    .line 424
    sget-object v6, Lcom/koushikdutta/async/ByteBufferList;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 425
    :goto_1
    :try_start_0
    sget v2, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    sget v5, Lcom/koushikdutta/async/ByteBufferList;->MAX_SIZE:I

    if-le v2, v5, :cond_2

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-lt v2, v5, :cond_3

    .line 431
    :cond_2
    sget v2, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    sget v5, Lcom/koushikdutta/async/ByteBufferList;->MAX_SIZE:I

    if-le v2, v5, :cond_4

    .line 433
    monitor-exit v6

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 427
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 428
    .local v0, "head":Ljava/nio/ByteBuffer;
    sget v2, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    sub-int/2addr v2, v5

    sput v2, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    goto :goto_1

    .line 436
    .end local v0    # "head":Ljava/nio/ByteBuffer;
    :cond_4
    sget-boolean v2, Lcom/koushikdutta/async/ByteBufferList;->$assertionsDisabled:Z

    if-nez v2, :cond_5

    invoke-static {p0}, Lcom/koushikdutta/async/ByteBufferList;->reclaimedContains(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 438
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 439
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 440
    sget v2, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    add-int/2addr v2, v5

    sput v2, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    .line 442
    invoke-virtual {v1, p0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 443
    sget-boolean v2, Lcom/koushikdutta/async/ByteBufferList;->$assertionsDisabled:Z

    if-nez v2, :cond_8

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-eqz v2, :cond_6

    move v5, v3

    :goto_2
    sget v2, Lcom/koushikdutta/async/ByteBufferList;->currentSize:I

    if-nez v2, :cond_7

    move v2, v3

    :goto_3
    xor-int/2addr v2, v5

    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_6
    move v5, v4

    goto :goto_2

    :cond_7
    move v2, v4

    goto :goto_3

    .line 445
    :cond_8
    sget v2, Lcom/koushikdutta/async/ByteBufferList;->maxItem:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sput v2, Lcom/koushikdutta/async/ByteBufferList;->maxItem:I

    .line 424
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private static reclaimedContains(Ljava/nio/ByteBuffer;)Z
    .locals 3
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 403
    sget-object v1, Lcom/koushikdutta/async/ByteBufferList;->reclaimed:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 407
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 403
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 404
    .local v0, "other":Ljava/nio/ByteBuffer;
    if-ne v0, p0, :cond_0

    .line 405
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setMaxItemSize(I)V
    .locals 0
    .param p0, "size"    # I

    .prologue
    .line 399
    sput p0, Lcom/koushikdutta/async/ByteBufferList;->MAX_ITEM_SIZE:I

    .line 400
    return-void
.end method

.method public static setMaxPoolSize(I)V
    .locals 0
    .param p0, "size"    # I

    .prologue
    .line 395
    sput p0, Lcom/koushikdutta/async/ByteBufferList;->MAX_SIZE:I

    .line 396
    return-void
.end method


# virtual methods
.method public add(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "b"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 274
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gtz v1, :cond_0

    .line 276
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    .line 298
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/koushikdutta/async/ByteBufferList;->addRemaining(I)V

    .line 282
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 284
    .local v0, "last":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 285
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 286
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 287
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 288
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 289
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 290
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 291
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    .line 292
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->trim()V

    goto :goto_0

    .line 296
    .end local v0    # "last":Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1, p1}, Lcom/koushikdutta/async/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->trim()V

    goto :goto_0
.end method

.method public varargs addAll([Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "bb"    # [Ljava/nio/ByteBuffer;

    .prologue
    .line 40
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 42
    return-void

    .line 40
    :cond_0
    aget-object v0, p1, v1

    .line 41
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public addFirst(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "b"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 301
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gtz v1, :cond_0

    .line 302
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    .line 320
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/koushikdutta/async/ByteBufferList;->addRemaining(I)V

    .line 308
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 310
    .local v0, "first":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 311
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 312
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 313
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 314
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 315
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 319
    .end local v0    # "first":Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1, p1}, Lcom/koushikdutta/async/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public get()B
    .locals 2

    .prologue
    .line 98
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 99
    .local v0, "ret":B
    iget v1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    .line 100
    return v0
.end method

.method public get(I)Lcom/koushikdutta/async/ByteBufferList;
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 176
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 177
    .local v0, "ret":Lcom/koushikdutta/async/ByteBufferList;
    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 178
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/ByteBufferList;->order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v1

    return-object v1
.end method

.method public get(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1
    .param p1, "into"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 173
    return-void
.end method

.method public get(Lcom/koushikdutta/async/ByteBufferList;I)V
    .locals 7
    .param p1, "into"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "length"    # I

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v5

    if-ge v5, p2, :cond_0

    .line 136
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "length"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 137
    :cond_0
    const/4 v2, 0x0

    .line 139
    .local v2, "offset":I
    :goto_0
    if-lt v2, p2, :cond_2

    .line 168
    :cond_1
    iget v5, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    sub-int/2addr v5, p2

    iput v5, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    .line 169
    return-void

    .line 140
    :cond_2
    iget-object v5, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v5}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 141
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 143
    .local v3, "remaining":I
    if-nez v3, :cond_3

    .line 144
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 148
    :cond_3
    add-int v5, v2, v3

    if-le v5, p2, :cond_5

    .line 149
    sub-int v1, p2, v2

    .line 151
    .local v1, "need":I
    invoke-static {v1}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 152
    .local v4, "subset":Ljava/nio/ByteBuffer;
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 153
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 154
    invoke-virtual {p1, v4}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    .line 155
    iget-object v5, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v5, v0}, Lcom/koushikdutta/async/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 156
    sget-boolean v5, Lcom/koushikdutta/async/ByteBufferList;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-ge v5, v1, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 157
    :cond_4
    sget-boolean v5, Lcom/koushikdutta/async/ByteBufferList;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 162
    .end local v1    # "need":I
    .end local v4    # "subset":Ljava/nio/ByteBuffer;
    :cond_5
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    .line 165
    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public get([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 110
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/koushikdutta/async/ByteBufferList;->get([BII)V

    .line 111
    return-void
.end method

.method public get([BII)V
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v4

    if-ge v4, p3, :cond_0

    .line 115
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "length"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    :cond_0
    move v1, p3

    .line 118
    .local v1, "need":I
    :cond_1
    :goto_0
    if-gtz v1, :cond_2

    .line 131
    iget v4, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    sub-int/2addr v4, p3

    iput v4, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    .line 132
    return-void

    .line 119
    :cond_2
    iget-object v4, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v4}, Lcom/koushikdutta/async/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 120
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 121
    .local v2, "read":I
    invoke-virtual {v0, p1, p2, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 122
    sub-int/2addr v1, v2

    .line 123
    add-int/2addr p2, v2

    .line 124
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-nez v4, :cond_1

    .line 125
    iget-object v4, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v4}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 126
    .local v3, "removed":Ljava/nio/ByteBuffer;
    sget-boolean v4, Lcom/koushikdutta/async/ByteBufferList;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    if-eq v0, v3, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 127
    :cond_3
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method public getAll()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    .line 183
    sget-object v0, Lcom/koushikdutta/async/ByteBufferList;->EMPTY_BYTEBUFFER:Ljava/nio/ByteBuffer;

    .line 185
    :goto_0
    return-object v0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    .line 185
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remove()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public getAllArray()[Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 59
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v1

    new-array v0, v1, [Ljava/nio/ByteBuffer;

    .line 60
    .local v0, "ret":[Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ret":[Ljava/nio/ByteBuffer;
    check-cast v0, [Ljava/nio/ByteBuffer;

    .line 61
    .restart local v0    # "ret":[Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->clear()V

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    .line 63
    return-object v0
.end method

.method public getAllByteArray()[B
    .locals 3

    .prologue
    .line 47
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 48
    const/4 v1, 0x0

    iput v1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    .line 49
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    new-array v0, v1, [B

    .line 53
    .local v0, "ret":[B
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    goto :goto_0
.end method

.method public getByteChar()C
    .locals 2

    .prologue
    .line 86
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    int-to-char v0, v1

    .line 87
    .local v0, "ret":C
    iget v1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    .line 88
    return v0
.end method

.method public getInt()I
    .locals 2

    .prologue
    .line 80
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 81
    .local v0, "ret":I
    iget v1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    .line 82
    return v0
.end method

.method public getLong()J
    .locals 3

    .prologue
    .line 104
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 105
    .local v0, "ret":J
    iget v2, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    .line 106
    return-wide v0
.end method

.method public getShort()I
    .locals 2

    .prologue
    .line 92
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 93
    .local v0, "ret":I
    iget v1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    .line 94
    return v0
.end method

.method public hasRemaining()Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 0
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    .line 23
    return-object p0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public peekString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v2}, Lcom/koushikdutta/async/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 355
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 352
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 353
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public readString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v1, "builder":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v2, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v2}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 365
    const/4 v2, 0x0

    iput v2, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    .line 366
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 361
    :cond_0
    iget-object v2, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v2}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 362
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 328
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 331
    sget-boolean v0, Lcom/koushikdutta/async/ByteBufferList;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 332
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    .line 333
    return-void
.end method

.method public remaining()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    return v0
.end method

.method public remove()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 336
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 337
    .local v0, "ret":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    .line 338
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    return v0
.end method

.method public spewString()V
    .locals 2

    .prologue
    .line 346
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->peekString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public trim()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    .line 271
    return-void
.end method
