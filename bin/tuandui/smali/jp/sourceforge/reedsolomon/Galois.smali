.class public final Ljp/sourceforge/reedsolomon/Galois;
.super Ljava/lang/Object;
.source "Galois.java"


# static fields
.field public static final POLYNOMIAL:I = 0x1d

.field private static final instance:Ljp/sourceforge/reedsolomon/Galois;


# instance fields
.field private expTbl:[I

.field private logTbl:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljp/sourceforge/reedsolomon/Galois;

    invoke-direct {v0}, Ljp/sourceforge/reedsolomon/Galois;-><init>()V

    sput-object v0, Ljp/sourceforge/reedsolomon/Galois;->instance:Ljp/sourceforge/reedsolomon/Galois;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x1fe

    new-array v0, v0, [I

    iput-object v0, p0, Ljp/sourceforge/reedsolomon/Galois;->expTbl:[I

    .line 15
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Ljp/sourceforge/reedsolomon/Galois;->logTbl:[I

    .line 18
    invoke-direct {p0}, Ljp/sourceforge/reedsolomon/Galois;->initGaloisTable()V

    .line 19
    return-void
.end method

.method public static getInstance()Ljp/sourceforge/reedsolomon/Galois;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Ljp/sourceforge/reedsolomon/Galois;->instance:Ljp/sourceforge/reedsolomon/Galois;

    return-object v0
.end method

.method private initGaloisTable()V
    .locals 5

    .prologue
    .line 29
    const/4 v0, 0x1

    .line 30
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xff

    if-lt v1, v2, :cond_0

    .line 38
    return-void

    .line 31
    :cond_0
    iget-object v2, p0, Ljp/sourceforge/reedsolomon/Galois;->expTbl:[I

    iget-object v3, p0, Ljp/sourceforge/reedsolomon/Galois;->expTbl:[I

    add-int/lit16 v4, v1, 0xff

    aput v0, v3, v4

    aput v0, v2, v1

    .line 32
    iget-object v2, p0, Ljp/sourceforge/reedsolomon/Galois;->logTbl:[I

    aput v1, v2, v0

    .line 33
    shl-int/lit8 v0, v0, 0x1

    .line 34
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_1

    .line 35
    xor-int/lit8 v2, v0, 0x1d

    and-int/lit16 v0, v2, 0xff

    .line 30
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public calcSyndrome([II[I)Z
    .locals 8
    .param p1, "data"    # [I
    .param p2, "length"    # I
    .param p3, "syn"    # [I

    .prologue
    const/4 v5, 0x0

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "hasErr":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p3

    if-lt v1, v4, :cond_1

    .line 177
    if-nez v0, :cond_0

    const/4 v5, 0x1

    :cond_0
    return v5

    .line 170
    :cond_1
    const/4 v3, 0x0

    .line 171
    .local v3, "wk":I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_1
    if-lt v2, p2, :cond_2

    .line 174
    aput v3, p3, v1

    .line 175
    or-int/2addr v0, v3

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_2
    aget v6, p1, v2

    if-nez v3, :cond_3

    move v4, v5

    :goto_2
    xor-int v3, v6, v4

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 172
    :cond_3
    iget-object v4, p0, Ljp/sourceforge/reedsolomon/Galois;->expTbl:[I

    iget-object v7, p0, Ljp/sourceforge/reedsolomon/Galois;->logTbl:[I

    aget v7, v7, v3

    add-int/2addr v7, v1

    aget v4, v4, v7

    goto :goto_2
.end method

.method public div(II)I
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 107
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljp/sourceforge/reedsolomon/Galois;->expTbl:[I

    iget-object v1, p0, Ljp/sourceforge/reedsolomon/Galois;->logTbl:[I

    aget v1, v1, p1

    iget-object v2, p0, Ljp/sourceforge/reedsolomon/Galois;->logTbl:[I

    aget v2, v2, p2

    sub-int/2addr v1, v2

    add-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    goto :goto_0
.end method

.method public divExp(II)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 119
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljp/sourceforge/reedsolomon/Galois;->expTbl:[I

    iget-object v1, p0, Ljp/sourceforge/reedsolomon/Galois;->logTbl:[I

    aget v1, v1, p1

    sub-int/2addr v1, p2

    add-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    goto :goto_0
.end method

.method public inv(I)I
    .locals 2
    .param p1, "a"    # I

    .prologue
    .line 130
    iget-object v0, p0, Ljp/sourceforge/reedsolomon/Galois;->expTbl:[I

    iget-object v1, p0, Ljp/sourceforge/reedsolomon/Galois;->logTbl:[I

    aget v1, v1, p1

    rsub-int v1, v1, 0xff

    aget v0, v0, v1

    return v0
.end method

.method public mul(II)I
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 83
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Ljp/sourceforge/reedsolomon/Galois;->expTbl:[I

    iget-object v1, p0, Ljp/sourceforge/reedsolomon/Galois;->logTbl:[I

    aget v1, v1, p1

    iget-object v2, p0, Ljp/sourceforge/reedsolomon/Galois;->logTbl:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    aget v0, v0, v1

    goto :goto_0
.end method

.method public mulExp(II)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 95
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljp/sourceforge/reedsolomon/Galois;->expTbl:[I

    iget-object v1, p0, Ljp/sourceforge/reedsolomon/Galois;->logTbl:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    aget v0, v0, v1

    goto :goto_0
.end method

.method public mulPoly([I[I[I)V
    .locals 9
    .param p1, "seki"    # [I
    .param p2, "a"    # [I
    .param p3, "b"    # [I

    .prologue
    .line 142
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/util/Arrays;->fill([II)V

    .line 143
    const/4 v0, 0x0

    .local v0, "ia":I
    :goto_0
    array-length v4, p2

    if-lt v0, v4, :cond_0

    .line 154
    return-void

    .line 144
    :cond_0
    aget v4, p2, v0

    if-eqz v4, :cond_1

    .line 145
    iget-object v4, p0, Ljp/sourceforge/reedsolomon/Galois;->logTbl:[I

    aget v5, p2, v0

    aget v3, v4, v5

    .line 146
    .local v3, "loga":I
    array-length v4, p3

    array-length v5, p1

    sub-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 147
    .local v2, "ib2":I
    const/4 v1, 0x0

    .local v1, "ib":I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 143
    .end local v1    # "ib":I
    .end local v2    # "ib2":I
    .end local v3    # "loga":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .restart local v1    # "ib":I
    .restart local v2    # "ib2":I
    .restart local v3    # "loga":I
    :cond_2
    aget v4, p3, v1

    if-eqz v4, :cond_3

    .line 149
    add-int v4, v0, v1

    aget v5, p1, v4

    iget-object v6, p0, Ljp/sourceforge/reedsolomon/Galois;->expTbl:[I

    iget-object v7, p0, Ljp/sourceforge/reedsolomon/Galois;->logTbl:[I

    aget v8, p3, v1

    aget v7, v7, v8

    add-int/2addr v7, v3

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, p1, v4

    .line 147
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public toExp(I)I
    .locals 1
    .param p1, "a"    # I

    .prologue
    .line 47
    iget-object v0, p0, Ljp/sourceforge/reedsolomon/Galois;->expTbl:[I

    aget v0, v0, p1

    return v0
.end method

.method public toLog(I)I
    .locals 1
    .param p1, "a"    # I

    .prologue
    .line 57
    iget-object v0, p0, Ljp/sourceforge/reedsolomon/Galois;->logTbl:[I

    aget v0, v0, p1

    return v0
.end method

.method public toPos(II)I
    .locals 2
    .param p1, "length"    # I
    .param p2, "a"    # I

    .prologue
    .line 71
    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Ljp/sourceforge/reedsolomon/Galois;->logTbl:[I

    aget v1, v1, p2

    sub-int/2addr v0, v1

    return v0
.end method
