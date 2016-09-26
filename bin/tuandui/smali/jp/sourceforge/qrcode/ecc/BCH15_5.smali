.class public Ljp/sourceforge/qrcode/ecc/BCH15_5;
.super Ljava/lang/Object;
.source "BCH15_5.java"


# static fields
.field static bitName:[Ljava/lang/String;


# instance fields
.field gf16:[[I

.field numCorrectedError:I

.field receiveData:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 99
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "c0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "c1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "c2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "c3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "c4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "c5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "c6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "c7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "c8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "c9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 100
    const-string v2, "d0"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "d1"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "d2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "d3"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "d4"

    aput-object v2, v0, v1

    .line 99
    sput-object v0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->bitName:[Ljava/lang/String;

    .line 2
    return-void
.end method

.method public constructor <init>([Z)V
    .locals 1
    .param p1, "source"    # [Z

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/ecc/BCH15_5;->createGF16()[[I

    move-result-object v0

    iput-object v0, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->gf16:[[I

    .line 8
    iput-object p1, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->receiveData:[Z

    .line 10
    return-void
.end method


# virtual methods
.method addGF(II)I
    .locals 8
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    const/16 v7, 0xf

    const/4 v6, 0x4

    const/4 v4, 0x0

    .line 117
    new-array v1, v6, [I

    .line 118
    .local v1, "p":[I
    const/4 v0, 0x0

    .local v0, "m":I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 123
    invoke-virtual {p0, v1}, Ljp/sourceforge/qrcode/ecc/BCH15_5;->searchElement([I)I

    move-result v4

    return v4

    .line 119
    :cond_0
    if-ltz p1, :cond_1

    if-lt p1, v7, :cond_3

    :cond_1
    move v2, v4

    .line 120
    .local v2, "w1":I
    :goto_1
    if-ltz p2, :cond_2

    if-lt p2, v7, :cond_4

    :cond_2
    move v3, v4

    .line 121
    .local v3, "w2":I
    :goto_2
    add-int v5, v2, v3

    rem-int/lit8 v5, v5, 0x2

    aput v5, v1, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v2    # "w1":I
    .end local v3    # "w2":I
    :cond_3
    iget-object v5, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->gf16:[[I

    aget-object v5, v5, p1

    aget v2, v5, v0

    goto :goto_1

    .line 120
    .restart local v2    # "w1":I
    :cond_4
    iget-object v5, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->gf16:[[I

    aget-object v5, v5, p2

    aget v3, v5, v0

    goto :goto_2
.end method

.method calcErrorPositionVariable([I)[I
    .locals 12
    .param p1, "s"    # [I

    .prologue
    const/4 v11, 0x4

    const/4 v5, -0x1

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 201
    new-array v1, v11, [I

    .line 203
    .local v1, "e":[I
    aget v6, p1, v8

    aput v6, v1, v8

    .line 207
    aget v6, p1, v8

    aget v7, p1, v9

    add-int/2addr v6, v7

    rem-int/lit8 v3, v6, 0xf

    .line 208
    .local v3, "t":I
    aget v6, p1, v10

    invoke-virtual {p0, v6, v3}, Ljp/sourceforge/qrcode/ecc/BCH15_5;->addGF(II)I

    move-result v2

    .line 209
    .local v2, "mother":I
    const/16 v6, 0xf

    if-lt v2, v6, :cond_0

    move v2, v5

    .line 211
    :cond_0
    aget v6, p1, v10

    aget v7, p1, v9

    add-int/2addr v6, v7

    rem-int/lit8 v3, v6, 0xf

    .line 212
    aget v6, p1, v11

    invoke-virtual {p0, v6, v3}, Ljp/sourceforge/qrcode/ecc/BCH15_5;->addGF(II)I

    move-result v0

    .line 213
    .local v0, "child":I
    const/16 v6, 0xf

    if-lt v0, v6, :cond_1

    move v0, v5

    .line 214
    :cond_1
    if-gez v0, :cond_2

    if-gez v2, :cond_2

    :goto_0
    aput v5, v1, v9

    .line 219
    aget v5, p1, v9

    aget v6, v1, v8

    add-int/2addr v5, v6

    rem-int/lit8 v3, v5, 0xf

    .line 220
    aget v5, p1, v10

    invoke-virtual {p0, v5, v3}, Ljp/sourceforge/qrcode/ecc/BCH15_5;->addGF(II)I

    move-result v4

    .line 221
    .local v4, "t1":I
    aget v5, p1, v8

    aget v6, v1, v9

    add-int/2addr v5, v6

    rem-int/lit8 v3, v5, 0xf

    .line 222
    invoke-virtual {p0, v4, v3}, Ljp/sourceforge/qrcode/ecc/BCH15_5;->addGF(II)I

    move-result v5

    aput v5, v1, v10

    .line 225
    return-object v1

    .line 214
    .end local v4    # "t1":I
    :cond_2
    sub-int v5, v0, v2

    add-int/lit8 v5, v5, 0xf

    rem-int/lit8 v5, v5, 0xf

    goto :goto_0
.end method

.method calcSyndrome([Z)[I
    .locals 11
    .param p1, "y"    # [Z

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v4, -0x1

    const/16 v9, 0xf

    const/4 v8, 0x4

    .line 144
    const/4 v5, 0x5

    new-array v3, v5, [I

    .line 145
    .local v3, "s":[I
    new-array v2, v8, [I

    .line 147
    .local v2, "p":[I
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    if-lt v0, v9, :cond_2

    .line 151
    invoke-virtual {p0, v2}, Ljp/sourceforge/qrcode/ecc/BCH15_5;->searchElement([I)I

    move-result v0

    .line 152
    if-lt v0, v9, :cond_0

    move v0, v4

    .end local v0    # "k":I
    :cond_0
    aput v0, v3, v7

    .line 158
    aget v5, v3, v7

    if-gez v5, :cond_5

    move v5, v4

    :goto_1
    aput v5, v3, v10

    .line 164
    new-array v2, v8, [I

    .line 165
    const/4 v0, 0x0

    .restart local v0    # "k":I
    :goto_2
    if-lt v0, v9, :cond_6

    .line 170
    invoke-virtual {p0, v2}, Ljp/sourceforge/qrcode/ecc/BCH15_5;->searchElement([I)I

    move-result v0

    .line 172
    const/4 v5, 0x2

    if-lt v0, v9, :cond_1

    move v0, v4

    .end local v0    # "k":I
    :cond_1
    aput v0, v3, v5

    .line 178
    const/4 v6, 0x3

    aget v5, v3, v10

    if-gez v5, :cond_9

    move v5, v4

    :goto_3
    aput v5, v3, v6

    .line 184
    new-array v2, v8, [I

    .line 185
    const/4 v0, 0x0

    .restart local v0    # "k":I
    :goto_4
    if-lt v0, v9, :cond_a

    .line 189
    invoke-virtual {p0, v2}, Ljp/sourceforge/qrcode/ecc/BCH15_5;->searchElement([I)I

    move-result v0

    .line 190
    if-lt v0, v9, :cond_d

    :goto_5
    aput v4, v3, v8

    .line 196
    return-object v3

    .line 148
    :cond_2
    aget-boolean v5, p1, v0

    if-eqz v5, :cond_3

    const/4 v1, 0x0

    .local v1, "m":I
    :goto_6
    if-lt v1, v8, :cond_4

    .line 147
    .end local v1    # "m":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .restart local v1    # "m":I
    :cond_4
    aget v5, v2, v1

    iget-object v6, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->gf16:[[I

    aget-object v6, v6, v0

    aget v6, v6, v1

    add-int/2addr v5, v6

    rem-int/lit8 v5, v5, 0x2

    aput v5, v2, v1

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 158
    .end local v0    # "k":I
    .end local v1    # "m":I
    :cond_5
    aget v5, v3, v7

    mul-int/lit8 v5, v5, 0x2

    rem-int/lit8 v5, v5, 0xf

    goto :goto_1

    .line 166
    .restart local v0    # "k":I
    :cond_6
    aget-boolean v5, p1, v0

    if-eqz v5, :cond_7

    const/4 v1, 0x0

    .restart local v1    # "m":I
    :goto_7
    if-lt v1, v8, :cond_8

    .line 165
    .end local v1    # "m":I
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 167
    .restart local v1    # "m":I
    :cond_8
    aget v5, v2, v1

    iget-object v6, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->gf16:[[I

    mul-int/lit8 v7, v0, 0x3

    rem-int/lit8 v7, v7, 0xf

    aget-object v6, v6, v7

    aget v6, v6, v1

    add-int/2addr v5, v6

    rem-int/lit8 v5, v5, 0x2

    aput v5, v2, v1

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 178
    .end local v0    # "k":I
    .end local v1    # "m":I
    :cond_9
    aget v5, v3, v10

    mul-int/lit8 v5, v5, 0x2

    rem-int/lit8 v5, v5, 0xf

    goto :goto_3

    .line 186
    .restart local v0    # "k":I
    :cond_a
    aget-boolean v5, p1, v0

    if-eqz v5, :cond_b

    const/4 v1, 0x0

    .restart local v1    # "m":I
    :goto_8
    if-lt v1, v8, :cond_c

    .line 185
    .end local v1    # "m":I
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 187
    .restart local v1    # "m":I
    :cond_c
    aget v5, v2, v1

    iget-object v6, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->gf16:[[I

    mul-int/lit8 v7, v0, 0x5

    rem-int/lit8 v7, v7, 0xf

    aget-object v6, v6, v7

    aget v6, v6, v1

    add-int/2addr v5, v6

    rem-int/lit8 v5, v5, 0x2

    aput v5, v2, v1

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .end local v1    # "m":I
    :cond_d
    move v4, v0

    .line 190
    goto :goto_5
.end method

.method public correct()[Z
    .locals 4

    .prologue
    .line 13
    iget-object v3, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->receiveData:[Z

    invoke-virtual {p0, v3}, Ljp/sourceforge/qrcode/ecc/BCH15_5;->calcSyndrome([Z)[I

    move-result-object v2

    .line 15
    .local v2, "s":[I
    invoke-virtual {p0, v2}, Ljp/sourceforge/qrcode/ecc/BCH15_5;->detectErrorBitPosition([I)[I

    move-result-object v0

    .line 16
    .local v0, "errorPos":[I
    iget-object v3, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->receiveData:[Z

    invoke-virtual {p0, v3, v0}, Ljp/sourceforge/qrcode/ecc/BCH15_5;->correctErrorBit([Z[I)[Z

    move-result-object v1

    .line 17
    .local v1, "output":[Z
    return-object v1
.end method

.method correctErrorBit([Z[I)[Z
    .locals 4
    .param p1, "y"    # [Z
    .param p2, "errorPos"    # [I

    .prologue
    const/4 v2, 0x0

    .line 282
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    aget v1, p2, v2

    if-le v0, v1, :cond_0

    .line 285
    aget v1, p2, v2

    iput v1, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->numCorrectedError:I

    .line 287
    return-object p1

    .line 283
    :cond_0
    aget v3, p2, v0

    aget v1, p2, v0

    aget-boolean v1, p1, v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    aput-boolean v1, p1, v3

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method createGF16()[[I
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x1

    const/4 v6, 0x4

    .line 21
    filled-new-array {v8, v6}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->gf16:[[I

    .line 22
    new-array v2, v6, [I

    const/4 v3, 0x0

    aput v7, v2, v3

    aput v7, v2, v7

    .line 23
    .local v2, "seed":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 25
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v6, :cond_1

    .line 27
    const/4 v0, 0x5

    :goto_2
    if-lt v0, v8, :cond_2

    .line 36
    iget-object v3, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->gf16:[[I

    return-object v3

    .line 24
    :cond_0
    iget-object v3, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->gf16:[[I

    aget-object v3, v3, v0

    aput v7, v3, v0

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_1
    iget-object v3, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->gf16:[[I

    aget-object v3, v3, v6

    aget v4, v2, v0

    aput v4, v3, v0

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 28
    :cond_2
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_3
    if-lt v1, v6, :cond_4

    .line 31
    iget-object v3, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->gf16:[[I

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    const/4 v4, 0x3

    aget v3, v3, v4

    if-ne v3, v7, :cond_3

    .line 32
    const/4 v1, 0x0

    :goto_4
    if-lt v1, v6, :cond_5

    .line 27
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 29
    :cond_4
    iget-object v3, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->gf16:[[I

    aget-object v3, v3, v0

    iget-object v4, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->gf16:[[I

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    aput v4, v3, v1

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 33
    :cond_5
    iget-object v3, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->gf16:[[I

    aget-object v3, v3, v0

    iget-object v4, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->gf16:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    aget v5, v2, v1

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x2

    aput v4, v3, v1

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method detectErrorBitPosition([I)[I
    .locals 12
    .param p1, "s"    # [I

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Ljp/sourceforge/qrcode/ecc/BCH15_5;->calcErrorPositionVariable([I)[I

    move-result-object v1

    .line 231
    .local v1, "e":[I
    const/4 v10, 0x4

    new-array v2, v10, [I

    .line 232
    .local v2, "errorPos":[I
    const/4 v10, 0x0

    aget v10, v1, v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-object v2

    .line 236
    :cond_1
    const/4 v10, 0x1

    aget v10, v1, v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 240
    const/4 v10, 0x0

    const/4 v11, 0x1

    aput v11, v2, v10

    .line 241
    const/4 v10, 0x1

    const/4 v11, 0x0

    aget v11, v1, v11

    aput v11, v2, v10

    goto :goto_0

    .line 252
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v10, 0xf

    if-ge v3, v10, :cond_0

    .line 254
    mul-int/lit8 v10, v3, 0x3

    rem-int/lit8 v9, v10, 0xf

    .line 255
    .local v9, "x3":I
    mul-int/lit8 v10, v3, 0x2

    rem-int/lit8 v8, v10, 0xf

    .line 256
    .local v8, "x2":I
    move v7, v3

    .line 260
    .local v7, "x1":I
    const/4 v10, 0x0

    aget v10, v1, v10

    add-int/2addr v10, v8

    rem-int/lit8 v4, v10, 0xf

    .line 261
    .local v4, "t":I
    invoke-virtual {p0, v9, v4}, Ljp/sourceforge/qrcode/ecc/BCH15_5;->addGF(II)I

    move-result v5

    .line 263
    .local v5, "t1":I
    const/4 v10, 0x1

    aget v10, v1, v10

    add-int/2addr v10, v7

    rem-int/lit8 v4, v10, 0xf

    .line 264
    const/4 v10, 0x2

    aget v10, v1, v10

    invoke-virtual {p0, v4, v10}, Ljp/sourceforge/qrcode/ecc/BCH15_5;->addGF(II)I

    move-result v6

    .line 266
    .local v6, "t2":I
    invoke-virtual {p0, v5, v6}, Ljp/sourceforge/qrcode/ecc/BCH15_5;->addGF(II)I

    move-result v0

    .line 268
    .local v0, "anError":I
    const/16 v10, 0xf

    if-lt v0, v10, :cond_3

    .line 272
    const/4 v10, 0x0

    aget v11, v2, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v2, v10

    .line 273
    const/4 v10, 0x0

    aget v10, v2, v10

    aput v3, v2, v10

    .line 252
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method getCode(I)[I
    .locals 13
    .param p1, "input"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x7

    .line 69
    const/16 v6, 0xf

    new-array v0, v6, [I

    .line 70
    .local v0, "f":[I
    const/16 v6, 0x8

    new-array v2, v6, [I

    .line 72
    .local v2, "r":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v6, 0xf

    if-lt v1, v6, :cond_0

    .line 96
    return-object v0

    .line 77
    :cond_0
    aget v3, v2, v8

    .line 78
    .local v3, "w1":I
    if-ge v1, v8, :cond_1

    .line 79
    rsub-int/lit8 v6, v1, 0x6

    shr-int v6, p1, v6

    rem-int/lit8 v5, v6, 0x2

    .line 80
    .local v5, "yin":I
    add-int v6, v5, v3

    rem-int/lit8 v4, v6, 0x2

    .line 86
    .local v4, "w2":I
    :goto_1
    const/4 v6, 0x6

    aget v6, v2, v6

    add-int/2addr v6, v4

    rem-int/lit8 v6, v6, 0x2

    aput v6, v2, v8

    .line 87
    const/4 v6, 0x6

    const/4 v7, 0x5

    aget v7, v2, v7

    add-int/2addr v7, v4

    rem-int/lit8 v7, v7, 0x2

    aput v7, v2, v6

    .line 88
    const/4 v6, 0x5

    const/4 v7, 0x4

    aget v7, v2, v7

    aput v7, v2, v6

    .line 89
    const/4 v6, 0x4

    aget v7, v2, v12

    add-int/2addr v7, v4

    rem-int/lit8 v7, v7, 0x2

    aput v7, v2, v6

    .line 90
    aget v6, v2, v11

    aput v6, v2, v12

    .line 91
    aget v6, v2, v10

    aput v6, v2, v11

    .line 92
    aget v6, v2, v9

    aput v6, v2, v10

    .line 93
    aput v4, v2, v9

    .line 94
    rsub-int/lit8 v6, v1, 0xe

    aput v5, v0, v6

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v4    # "w2":I
    .end local v5    # "yin":I
    :cond_1
    move v5, v3

    .line 84
    .restart local v5    # "yin":I
    const/4 v4, 0x0

    .restart local v4    # "w2":I
    goto :goto_1
.end method

.method public getNumCorrectedError()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->numCorrectedError:I

    return v0
.end method

.method searchElement([I)I
    .locals 7
    .param p1, "x"    # [I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    .line 48
    :cond_0
    return v0

    .line 42
    :cond_1
    aget v1, p1, v3

    iget-object v2, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->gf16:[[I

    aget-object v2, v2, v0

    aget v2, v2, v3

    if-ne v1, v2, :cond_2

    .line 43
    aget v1, p1, v4

    iget-object v2, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->gf16:[[I

    aget-object v2, v2, v0

    aget v2, v2, v4

    if-ne v1, v2, :cond_2

    .line 44
    aget v1, p1, v5

    iget-object v2, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->gf16:[[I

    aget-object v2, v2, v0

    aget v2, v2, v5

    if-ne v1, v2, :cond_2

    .line 45
    aget v1, p1, v6

    iget-object v2, p0, Ljp/sourceforge/qrcode/ecc/BCH15_5;->gf16:[[I

    aget-object v2, v2, v0

    aget v2, v2, v6

    if-eq v1, v2, :cond_0

    .line 41
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
