.class public Ljp/sourceforge/reedsolomon/RsEncode;
.super Ljava/lang/Object;
.source "RsEncode.java"


# static fields
.field public static final RS_PERM_ERROR:I = -0x1

.field private static final galois:Ljp/sourceforge/reedsolomon/Galois;


# instance fields
.field private encodeGx:[I

.field private npar:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Ljp/sourceforge/reedsolomon/Galois;->getInstance()Ljp/sourceforge/reedsolomon/Galois;

    move-result-object v0

    sput-object v0, Ljp/sourceforge/reedsolomon/RsEncode;->galois:Ljp/sourceforge/reedsolomon/Galois;

    .line 9
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "npar"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Ljp/sourceforge/reedsolomon/RsEncode;->npar:I

    .line 17
    invoke-direct {p0}, Ljp/sourceforge/reedsolomon/RsEncode;->makeEncodeGx()V

    .line 18
    return-void
.end method

.method private makeEncodeGx()V
    .locals 8

    .prologue
    .line 30
    iget v3, p0, Ljp/sourceforge/reedsolomon/RsEncode;->npar:I

    new-array v3, v3, [I

    iput-object v3, p0, Ljp/sourceforge/reedsolomon/RsEncode;->encodeGx:[I

    .line 31
    iget-object v3, p0, Ljp/sourceforge/reedsolomon/RsEncode;->encodeGx:[I

    iget v4, p0, Ljp/sourceforge/reedsolomon/RsEncode;->npar:I

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    aput v5, v3, v4

    .line 32
    const/4 v2, 0x0

    .local v2, "kou":I
    :goto_0
    iget v3, p0, Ljp/sourceforge/reedsolomon/RsEncode;->npar:I

    if-lt v2, v3, :cond_0

    .line 41
    return-void

    .line 33
    :cond_0
    sget-object v3, Ljp/sourceforge/reedsolomon/RsEncode;->galois:Ljp/sourceforge/reedsolomon/Galois;

    invoke-virtual {v3, v2}, Ljp/sourceforge/reedsolomon/Galois;->toExp(I)I

    move-result v0

    .line 35
    .local v0, "ex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, p0, Ljp/sourceforge/reedsolomon/RsEncode;->npar:I

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_1

    .line 39
    iget-object v3, p0, Ljp/sourceforge/reedsolomon/RsEncode;->encodeGx:[I

    iget v4, p0, Ljp/sourceforge/reedsolomon/RsEncode;->npar:I

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Ljp/sourceforge/reedsolomon/RsEncode;->galois:Ljp/sourceforge/reedsolomon/Galois;

    iget-object v6, p0, Ljp/sourceforge/reedsolomon/RsEncode;->encodeGx:[I

    iget v7, p0, Ljp/sourceforge/reedsolomon/RsEncode;->npar:I

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6, v0}, Ljp/sourceforge/reedsolomon/Galois;->mul(II)I

    move-result v5

    aput v5, v3, v4

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_1
    iget-object v3, p0, Ljp/sourceforge/reedsolomon/RsEncode;->encodeGx:[I

    sget-object v4, Ljp/sourceforge/reedsolomon/RsEncode;->galois:Ljp/sourceforge/reedsolomon/Galois;

    iget-object v5, p0, Ljp/sourceforge/reedsolomon/RsEncode;->encodeGx:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5, v0}, Ljp/sourceforge/reedsolomon/Galois;->mul(II)I

    move-result v4

    iget-object v5, p0, Ljp/sourceforge/reedsolomon/RsEncode;->encodeGx:[I

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    xor-int/2addr v4, v5

    aput v4, v3, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public encode([II[I)I
    .locals 1
    .param p1, "data"    # [I
    .param p2, "length"    # I
    .param p3, "parity"    # [I

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljp/sourceforge/reedsolomon/RsEncode;->encode([II[II)I

    move-result v0

    return v0
.end method

.method public encode([II[II)I
    .locals 10
    .param p1, "data"    # [I
    .param p2, "length"    # I
    .param p3, "parity"    # [I
    .param p4, "parityStartPos"    # I

    .prologue
    const/4 v5, 0x0

    .line 59
    if-ltz p2, :cond_0

    iget v6, p0, Ljp/sourceforge/reedsolomon/RsEncode;->npar:I

    add-int/2addr v6, p2

    const/16 v7, 0xff

    if-le v6, v7, :cond_2

    .line 60
    :cond_0
    const/4 v5, -0x1

    .line 82
    :cond_1
    :goto_0
    return v5

    .line 69
    :cond_2
    iget v6, p0, Ljp/sourceforge/reedsolomon/RsEncode;->npar:I

    new-array v4, v6, [I

    .line 71
    .local v4, "wr":[I
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_1
    if-lt v3, p2, :cond_3

    .line 79
    if-eqz p3, :cond_1

    .line 80
    iget v6, p0, Ljp/sourceforge/reedsolomon/RsEncode;->npar:I

    invoke-static {v4, v5, p3, p4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 72
    :cond_3
    aget v0, p1, v3

    .line 73
    .local v0, "code":I
    aget v6, v4, v5

    xor-int v2, v6, v0

    .line 74
    .local v2, "ib":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v6, p0, Ljp/sourceforge/reedsolomon/RsEncode;->npar:I

    add-int/lit8 v6, v6, -0x1

    if-lt v1, v6, :cond_4

    .line 77
    iget v6, p0, Ljp/sourceforge/reedsolomon/RsEncode;->npar:I

    add-int/lit8 v6, v6, -0x1

    sget-object v7, Ljp/sourceforge/reedsolomon/RsEncode;->galois:Ljp/sourceforge/reedsolomon/Galois;

    iget-object v8, p0, Ljp/sourceforge/reedsolomon/RsEncode;->encodeGx:[I

    iget v9, p0, Ljp/sourceforge/reedsolomon/RsEncode;->npar:I

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    invoke-virtual {v7, v2, v8}, Ljp/sourceforge/reedsolomon/Galois;->mul(II)I

    move-result v7

    aput v7, v4, v6

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 75
    :cond_4
    add-int/lit8 v6, v1, 0x1

    aget v6, v4, v6

    sget-object v7, Ljp/sourceforge/reedsolomon/RsEncode;->galois:Ljp/sourceforge/reedsolomon/Galois;

    iget-object v8, p0, Ljp/sourceforge/reedsolomon/RsEncode;->encodeGx:[I

    aget v8, v8, v1

    invoke-virtual {v7, v2, v8}, Ljp/sourceforge/reedsolomon/Galois;->mul(II)I

    move-result v7

    xor-int/2addr v6, v7

    aput v6, v4, v1

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public encode([I[I)I
    .locals 2
    .param p1, "data"    # [I
    .param p2, "parity"    # [I

    .prologue
    .line 90
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ljp/sourceforge/reedsolomon/RsEncode;->encode([II[II)I

    move-result v0

    return v0
.end method
