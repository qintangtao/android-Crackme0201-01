.class public Ljp/sourceforge/reedsolomon/RsDecode;
.super Ljava/lang/Object;
.source "RsDecode.java"


# static fields
.field public static final RS_CORRECT_ERROR:I = -0x2

.field public static final RS_PERM_ERROR:I = -0x1

.field private static final galois:Ljp/sourceforge/reedsolomon/Galois;


# instance fields
.field private npar:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Ljp/sourceforge/reedsolomon/Galois;->getInstance()Ljp/sourceforge/reedsolomon/Galois;

    move-result-object v0

    sput-object v0, Ljp/sourceforge/reedsolomon/RsDecode;->galois:Ljp/sourceforge/reedsolomon/Galois;

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
    iput p1, p0, Ljp/sourceforge/reedsolomon/RsDecode;->npar:I

    .line 17
    return-void
.end method

.method private chienSearch([III[I)I
    .locals 11
    .param p1, "pos"    # [I
    .param p2, "n"    # I
    .param p3, "jisu"    # I
    .param p4, "sigma"    # [I

    .prologue
    .line 104
    const/4 v8, 0x1

    aget v2, p4, v8

    .line 106
    .local v2, "last":I
    const/4 v8, 0x1

    if-ne p3, v8, :cond_1

    .line 108
    sget-object v8, Ljp/sourceforge/reedsolomon/RsDecode;->galois:Ljp/sourceforge/reedsolomon/Galois;

    invoke-virtual {v8, v2}, Ljp/sourceforge/reedsolomon/Galois;->toLog(I)I

    move-result v8

    if-lt v8, p2, :cond_0

    .line 109
    const/4 v8, -0x2

    .line 144
    :goto_0
    return v8

    .line 111
    :cond_0
    const/4 v8, 0x0

    aput v2, p1, v8

    .line 112
    const/4 v8, 0x0

    goto :goto_0

    .line 115
    :cond_1
    add-int/lit8 v3, p3, -0x1

    .line 116
    .local v3, "posIdx":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v4, v3

    .end local v3    # "posIdx":I
    .local v4, "posIdx":I
    :goto_1
    if-lt v0, p2, :cond_2

    .line 144
    const/4 v8, -0x2

    goto :goto_0

    .line 124
    :cond_2
    rsub-int v7, v0, 0xff

    .line 125
    .local v7, "z":I
    const/4 v6, 0x1

    .line 126
    .local v6, "wk":I
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_2
    if-le v1, p3, :cond_3

    .line 129
    if-nez v6, :cond_5

    .line 130
    sget-object v8, Ljp/sourceforge/reedsolomon/RsDecode;->galois:Ljp/sourceforge/reedsolomon/Galois;

    invoke-virtual {v8, v0}, Ljp/sourceforge/reedsolomon/Galois;->toExp(I)I

    move-result v5

    .line 131
    .local v5, "pv":I
    xor-int/2addr v2, v5

    .line 132
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "posIdx":I
    .restart local v3    # "posIdx":I
    aput v5, p1, v4

    .line 133
    if-nez v3, :cond_6

    .line 135
    sget-object v8, Ljp/sourceforge/reedsolomon/RsDecode;->galois:Ljp/sourceforge/reedsolomon/Galois;

    invoke-virtual {v8, v2}, Ljp/sourceforge/reedsolomon/Galois;->toLog(I)I

    move-result v8

    if-lt v8, p2, :cond_4

    .line 136
    const/4 v8, -0x2

    goto :goto_0

    .line 127
    .end local v3    # "posIdx":I
    .end local v5    # "pv":I
    .restart local v4    # "posIdx":I
    :cond_3
    sget-object v8, Ljp/sourceforge/reedsolomon/RsDecode;->galois:Ljp/sourceforge/reedsolomon/Galois;

    aget v9, p4, v1

    mul-int v10, v7, v1

    rem-int/lit16 v10, v10, 0xff

    invoke-virtual {v8, v9, v10}, Ljp/sourceforge/reedsolomon/Galois;->mulExp(II)I

    move-result v8

    xor-int/2addr v6, v8

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 138
    .end local v4    # "posIdx":I
    .restart local v3    # "posIdx":I
    .restart local v5    # "pv":I
    :cond_4
    const/4 v8, 0x0

    aput v2, p1, v8

    .line 139
    const/4 v8, 0x0

    goto :goto_0

    .end local v3    # "posIdx":I
    .end local v5    # "pv":I
    .restart local v4    # "posIdx":I
    :cond_5
    move v3, v4

    .line 116
    .end local v4    # "posIdx":I
    .restart local v3    # "posIdx":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3    # "posIdx":I
    .restart local v4    # "posIdx":I
    goto :goto_1
.end method

.method private doForney([III[I[I[I)V
    .locals 10
    .param p1, "data"    # [I
    .param p2, "length"    # I
    .param p3, "jisu"    # I
    .param p4, "pos"    # [I
    .param p5, "sigma"    # [I
    .param p6, "omega"    # [I

    .prologue
    .line 172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p3, :cond_0

    .line 195
    return-void

    .line 173
    :cond_0
    aget v4, p4, v1

    .line 174
    .local v4, "ps":I
    sget-object v6, Ljp/sourceforge/reedsolomon/RsDecode;->galois:Ljp/sourceforge/reedsolomon/Galois;

    invoke-virtual {v6, v4}, Ljp/sourceforge/reedsolomon/Galois;->toLog(I)I

    move-result v6

    rsub-int v5, v6, 0xff

    .line 177
    .local v5, "zlog":I
    const/4 v6, 0x0

    aget v3, p6, v6

    .line 178
    .local v3, "ov":I
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_1
    if-lt v2, p3, :cond_1

    .line 183
    const/4 v6, 0x1

    aget v0, p5, v6

    .line 184
    .local v0, "dv":I
    const/4 v2, 0x2

    :goto_2
    if-lt v2, p3, :cond_2

    .line 193
    sget-object v6, Ljp/sourceforge/reedsolomon/RsDecode;->galois:Ljp/sourceforge/reedsolomon/Galois;

    invoke-virtual {v6, p2, v4}, Ljp/sourceforge/reedsolomon/Galois;->toPos(II)I

    move-result v6

    aget v7, p1, v6

    sget-object v8, Ljp/sourceforge/reedsolomon/RsDecode;->galois:Ljp/sourceforge/reedsolomon/Galois;

    sget-object v9, Ljp/sourceforge/reedsolomon/RsDecode;->galois:Ljp/sourceforge/reedsolomon/Galois;

    invoke-virtual {v9, v3, v0}, Ljp/sourceforge/reedsolomon/Galois;->div(II)I

    move-result v9

    invoke-virtual {v8, v4, v9}, Ljp/sourceforge/reedsolomon/Galois;->mul(II)I

    move-result v8

    xor-int/2addr v7, v8

    aput v7, p1, v6

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "dv":I
    :cond_1
    sget-object v6, Ljp/sourceforge/reedsolomon/RsDecode;->galois:Ljp/sourceforge/reedsolomon/Galois;

    aget v7, p6, v2

    mul-int v8, v5, v2

    rem-int/lit16 v8, v8, 0xff

    invoke-virtual {v6, v7, v8}, Ljp/sourceforge/reedsolomon/Galois;->mulExp(II)I

    move-result v6

    xor-int/2addr v3, v6

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 185
    .restart local v0    # "dv":I
    :cond_2
    sget-object v6, Ljp/sourceforge/reedsolomon/RsDecode;->galois:Ljp/sourceforge/reedsolomon/Galois;

    add-int/lit8 v7, v2, 0x1

    aget v7, p5, v7

    mul-int v8, v5, v2

    rem-int/lit16 v8, v8, 0xff

    invoke-virtual {v6, v7, v8}, Ljp/sourceforge/reedsolomon/Galois;->mulExp(II)I

    move-result v6

    xor-int/2addr v0, v6

    .line 184
    add-int/lit8 v2, v2, 0x2

    goto :goto_2
.end method


# virtual methods
.method public calcSigmaMBM([I[I[I)I
    .locals 17
    .param p1, "sigma"    # [I
    .param p2, "omega"    # [I
    .param p3, "syn"    # [I

    .prologue
    .line 36
    move-object/from16 v0, p0

    iget v13, v0, Ljp/sourceforge/reedsolomon/RsDecode;->npar:I

    new-array v10, v13, [I

    .line 37
    .local v10, "sg0":[I
    move-object/from16 v0, p0

    iget v13, v0, Ljp/sourceforge/reedsolomon/RsDecode;->npar:I

    new-array v11, v13, [I

    .line 38
    .local v11, "sg1":[I
    const/4 v13, 0x1

    const/4 v14, 0x1

    aput v14, v10, v13

    .line 39
    const/4 v13, 0x0

    const/4 v14, 0x1

    aput v14, v11, v13

    .line 40
    const/4 v4, 0x1

    .line 41
    .local v4, "jisu0":I
    const/4 v5, 0x0

    .line 42
    .local v5, "jisu1":I
    const/4 v8, -0x1

    .line 44
    .local v8, "m":I
    const/4 v9, 0x0

    .local v9, "n":I
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Ljp/sourceforge/reedsolomon/RsDecode;->npar:I

    if-lt v9, v13, :cond_0

    .line 74
    sget-object v13, Ljp/sourceforge/reedsolomon/RsDecode;->galois:Ljp/sourceforge/reedsolomon/Galois;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v13, v0, v11, v1}, Ljp/sourceforge/reedsolomon/Galois;->mulPoly([I[I[I)V

    .line 75
    const/4 v13, 0x0

    const/4 v14, 0x0

    array-length v15, v11

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    move-object/from16 v0, p1

    invoke-static {v11, v13, v0, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v13, v5

    .line 76
    :goto_1
    return v13

    .line 46
    :cond_0
    aget v2, p3, v9

    .line 47
    .local v2, "d":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    if-le v3, v5, :cond_1

    .line 50
    if-eqz v2, :cond_5

    .line 51
    sget-object v13, Ljp/sourceforge/reedsolomon/RsDecode;->galois:Ljp/sourceforge/reedsolomon/Galois;

    invoke-virtual {v13, v2}, Ljp/sourceforge/reedsolomon/Galois;->toLog(I)I

    move-result v7

    .line 52
    .local v7, "logd":I
    move-object/from16 v0, p0

    iget v13, v0, Ljp/sourceforge/reedsolomon/RsDecode;->npar:I

    new-array v12, v13, [I

    .line 53
    .local v12, "wk":[I
    const/4 v3, 0x0

    :goto_3
    if-le v3, v9, :cond_2

    .line 56
    sub-int v6, v9, v8

    .line 57
    .local v6, "js":I
    if-le v6, v5, :cond_4

    .line 58
    sub-int v8, v9, v5

    .line 59
    move v5, v6

    .line 60
    move-object/from16 v0, p0

    iget v13, v0, Ljp/sourceforge/reedsolomon/RsDecode;->npar:I

    div-int/lit8 v13, v13, 0x2

    if-le v5, v13, :cond_3

    .line 61
    const/4 v13, -0x1

    goto :goto_1

    .line 48
    .end local v6    # "js":I
    .end local v7    # "logd":I
    .end local v12    # "wk":[I
    :cond_1
    sget-object v13, Ljp/sourceforge/reedsolomon/RsDecode;->galois:Ljp/sourceforge/reedsolomon/Galois;

    aget v14, v11, v3

    sub-int v15, v9, v3

    aget v15, p3, v15

    invoke-virtual {v13, v14, v15}, Ljp/sourceforge/reedsolomon/Galois;->mul(II)I

    move-result v13

    xor-int/2addr v2, v13

    .line 47
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 54
    .restart local v7    # "logd":I
    .restart local v12    # "wk":[I
    :cond_2
    aget v13, v11, v3

    sget-object v14, Ljp/sourceforge/reedsolomon/RsDecode;->galois:Ljp/sourceforge/reedsolomon/Galois;

    aget v15, v10, v3

    invoke-virtual {v14, v15, v7}, Ljp/sourceforge/reedsolomon/Galois;->mulExp(II)I

    move-result v14

    xor-int/2addr v13, v14

    aput v13, v12, v3

    .line 53
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 63
    .restart local v6    # "js":I
    :cond_3
    const/4 v3, 0x0

    :goto_4
    if-le v3, v4, :cond_6

    .line 66
    move v4, v5

    .line 68
    :cond_4
    move-object v11, v12

    .line 70
    .end local v6    # "js":I
    .end local v7    # "logd":I
    .end local v12    # "wk":[I
    :cond_5
    const/4 v13, 0x0

    const/4 v14, 0x1

    array-length v15, v10

    add-int/lit8 v15, v15, -0x1

    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-static {v10, v13, v10, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v10, v13

    .line 72
    add-int/lit8 v4, v4, 0x1

    .line 44
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 64
    .restart local v6    # "js":I
    .restart local v7    # "logd":I
    .restart local v12    # "wk":[I
    :cond_6
    sget-object v13, Ljp/sourceforge/reedsolomon/RsDecode;->galois:Ljp/sourceforge/reedsolomon/Galois;

    aget v14, v11, v3

    invoke-virtual {v13, v14, v7}, Ljp/sourceforge/reedsolomon/Galois;->divExp(II)I

    move-result v13

    aput v13, v10, v3

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method public decode([I)I
    .locals 2
    .param p1, "data"    # [I

    .prologue
    .line 245
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ljp/sourceforge/reedsolomon/RsDecode;->decode([IIZ)I

    move-result v0

    return v0
.end method

.method public decode([II)I
    .locals 1
    .param p1, "data"    # [I
    .param p2, "length"    # I

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljp/sourceforge/reedsolomon/RsDecode;->decode([IIZ)I

    move-result v0

    return v0
.end method

.method public decode([IIZ)I
    .locals 9
    .param p1, "data"    # [I
    .param p2, "length"    # I
    .param p3, "noCorrect"    # Z

    .prologue
    .line 212
    iget v0, p0, Ljp/sourceforge/reedsolomon/RsDecode;->npar:I

    if-lt p2, v0, :cond_0

    const/16 v0, 0xff

    if-le p2, v0, :cond_2

    .line 213
    :cond_0
    const/4 v7, -0x1

    .line 237
    :cond_1
    :goto_0
    return v7

    .line 216
    :cond_2
    iget v0, p0, Ljp/sourceforge/reedsolomon/RsDecode;->npar:I

    new-array v8, v0, [I

    .line 217
    .local v8, "syn":[I
    sget-object v0, Ljp/sourceforge/reedsolomon/RsDecode;->galois:Ljp/sourceforge/reedsolomon/Galois;

    invoke-virtual {v0, p1, p2, v8}, Ljp/sourceforge/reedsolomon/Galois;->calcSyndrome([II[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    const/4 v7, 0x0

    goto :goto_0

    .line 221
    :cond_3
    iget v0, p0, Ljp/sourceforge/reedsolomon/RsDecode;->npar:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    new-array v5, v0, [I

    .line 222
    .local v5, "sigma":[I
    iget v0, p0, Ljp/sourceforge/reedsolomon/RsDecode;->npar:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v6, v0, [I

    .line 223
    .local v6, "omega":[I
    invoke-virtual {p0, v5, v6, v8}, Ljp/sourceforge/reedsolomon/RsDecode;->calcSigmaMBM([I[I[I)I

    move-result v3

    .line 224
    .local v3, "jisu":I
    if-gtz v3, :cond_4

    .line 225
    const/4 v7, -0x2

    goto :goto_0

    .line 228
    :cond_4
    new-array v4, v3, [I

    .line 229
    .local v4, "pos":[I
    invoke-direct {p0, v4, p2, v3, v5}, Ljp/sourceforge/reedsolomon/RsDecode;->chienSearch([III[I)I

    move-result v7

    .line 230
    .local v7, "r":I
    if-ltz v7, :cond_1

    .line 233
    if-nez p3, :cond_5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 235
    invoke-direct/range {v0 .. v6}, Ljp/sourceforge/reedsolomon/RsDecode;->doForney([III[I[I[I)V

    :cond_5
    move v7, v3

    .line 237
    goto :goto_0
.end method
