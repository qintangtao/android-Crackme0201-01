.class public Lcom/koushikdutta/async/util/Allocator;
.super Ljava/lang/Object;
.source "Allocator.java"


# instance fields
.field currentAlloc:I

.field final maxAlloc:I

.field minAlloc:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/util/Allocator;->currentAlloc:I

    .line 13
    const/16 v0, 0x1000

    iput v0, p0, Lcom/koushikdutta/async/util/Allocator;->minAlloc:I

    .line 20
    sget v0, Lcom/koushikdutta/async/ByteBufferList;->MAX_ITEM_SIZE:I

    iput v0, p0, Lcom/koushikdutta/async/util/Allocator;->maxAlloc:I

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxAlloc"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/util/Allocator;->currentAlloc:I

    .line 13
    const/16 v0, 0x1000

    iput v0, p0, Lcom/koushikdutta/async/util/Allocator;->minAlloc:I

    .line 16
    iput p1, p0, Lcom/koushikdutta/async/util/Allocator;->maxAlloc:I

    .line 17
    return-void
.end method


# virtual methods
.method public allocate()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 24
    iget v0, p0, Lcom/koushikdutta/async/util/Allocator;->currentAlloc:I

    iget v1, p0, Lcom/koushikdutta/async/util/Allocator;->minAlloc:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/koushikdutta/async/util/Allocator;->maxAlloc:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getMaxAlloc()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/koushikdutta/async/util/Allocator;->maxAlloc:I

    return v0
.end method

.method public getMinAlloc()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/koushikdutta/async/util/Allocator;->minAlloc:I

    return v0
.end method

.method public setCurrentAlloc(I)V
    .locals 0
    .param p1, "currentAlloc"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/koushikdutta/async/util/Allocator;->currentAlloc:I

    .line 37
    return-void
.end method

.method public setMinAlloc(I)V
    .locals 0
    .param p1, "minAlloc"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/koushikdutta/async/util/Allocator;->minAlloc:I

    .line 45
    return-void
.end method

.method public track(J)V
    .locals 1
    .param p1, "read"    # J

    .prologue
    .line 28
    long-to-int v0, p1

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/koushikdutta/async/util/Allocator;->currentAlloc:I

    .line 29
    return-void
.end method
