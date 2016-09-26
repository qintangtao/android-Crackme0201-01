.class public final Ljp/sourceforge/reedsolomon/BCH_15_5;
.super Ljava/lang/Object;
.source "BCH_15_5.java"


# static fields
.field private static final GX:I = 0x137

.field private static final instance:Ljp/sourceforge/reedsolomon/BCH_15_5;


# instance fields
.field private trueCodes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljp/sourceforge/reedsolomon/BCH_15_5;

    invoke-direct {v0}, Ljp/sourceforge/reedsolomon/BCH_15_5;-><init>()V

    sput-object v0, Ljp/sourceforge/reedsolomon/BCH_15_5;->instance:Ljp/sourceforge/reedsolomon/BCH_15_5;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Ljp/sourceforge/reedsolomon/BCH_15_5;->trueCodes:[I

    .line 15
    invoke-direct {p0}, Ljp/sourceforge/reedsolomon/BCH_15_5;->makeTrueCodes()V

    .line 16
    return-void
.end method

.method private static calcDistance(II)I
    .locals 3
    .param p0, "c1"    # I
    .param p1, "c2"    # I

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "n":I
    xor-int v1, p0, p1

    .line 58
    .local v1, "wk":I
    :goto_0
    if-nez v1, :cond_0

    .line 64
    return v0

    .line 59
    :cond_0
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 62
    :cond_1
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getInstance()Ljp/sourceforge/reedsolomon/BCH_15_5;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Ljp/sourceforge/reedsolomon/BCH_15_5;->instance:Ljp/sourceforge/reedsolomon/BCH_15_5;

    return-object v0
.end method

.method private makeTrueCodes()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljp/sourceforge/reedsolomon/BCH_15_5;->trueCodes:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 29
    return-void

    .line 27
    :cond_0
    iget-object v1, p0, Ljp/sourceforge/reedsolomon/BCH_15_5;->trueCodes:[I

    invoke-direct {p0, v0}, Ljp/sourceforge/reedsolomon/BCH_15_5;->slowEncode(I)I

    move-result v2

    aput v2, v1, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private slowEncode(I)I
    .locals 4
    .param p1, "data"    # I

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, "wk":I
    shl-int/lit8 p1, p1, 0x5

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 41
    and-int/lit16 v2, p1, 0x7c00

    and-int/lit16 v3, v1, 0x3ff

    or-int/2addr v2, v3

    return v2

    .line 35
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 36
    shl-int/lit8 p1, p1, 0x1

    .line 37
    xor-int v2, v1, p1

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_1

    .line 38
    xor-int/lit16 v1, v1, 0x137

    .line 34
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public decode(I)I
    .locals 4
    .param p1, "data"    # I

    .prologue
    .line 77
    and-int/lit16 p1, p1, 0x7fff

    .line 86
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljp/sourceforge/reedsolomon/BCH_15_5;->trueCodes:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 92
    const/4 v0, -0x1

    :cond_0
    return v0

    .line 87
    :cond_1
    iget-object v2, p0, Ljp/sourceforge/reedsolomon/BCH_15_5;->trueCodes:[I

    aget v0, v2, v1

    .line 88
    .local v0, "code":I
    invoke-static {p1, v0}, Ljp/sourceforge/reedsolomon/BCH_15_5;->calcDistance(II)I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public encode(I)I
    .locals 2
    .param p1, "data"    # I

    .prologue
    .line 45
    iget-object v0, p0, Ljp/sourceforge/reedsolomon/BCH_15_5;->trueCodes:[I

    and-int/lit8 v1, p1, 0x1f

    aget v0, v0, v1

    return v0
.end method
