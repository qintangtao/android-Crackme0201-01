.class public Ljp/sourceforge/qrcode/ecc/ReedSolomon;
.super Ljava/lang/Object;
.source "ReedSolomon.java"


# instance fields
.field ErasureLocs:[I

.field ErrorLocs:[I

.field Lambda:[I

.field MAXDEG:I

.field NErasures:I

.field NErrors:I

.field NPAR:I

.field Omega:[I

.field correctionSucceeded:Z

.field gexp:[I

.field glog:[I

.field synBytes:[I

.field y:[I


# direct methods
.method public constructor <init>([II)V
    .locals 2
    .param p1, "source"    # [I
    .param p2, "NPAR"    # I

    .prologue
    const/16 v1, 0x100

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0x200

    new-array v0, v0, [I

    iput-object v0, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gexp:[I

    .line 14
    new-array v0, v1, [I

    iput-object v0, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->glog:[I

    .line 29
    new-array v0, v1, [I

    iput-object v0, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->ErrorLocs:[I

    .line 33
    new-array v0, v1, [I

    iput-object v0, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->ErasureLocs:[I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->NErasures:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->correctionSucceeded:Z

    .line 39
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->initializeGaloisTables()V

    .line 40
    iput-object p1, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->y:[I

    .line 42
    iput p2, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->NPAR:I

    .line 43
    iget v0, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->NPAR:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    .line 44
    iget v0, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    new-array v0, v0, [I

    iput-object v0, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->synBytes:[I

    .line 45
    iget v0, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    new-array v0, v0, [I

    iput-object v0, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->Lambda:[I

    .line 46
    iget v0, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    new-array v0, v0, [I

    iput-object v0, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->Omega:[I

    .line 47
    return-void
.end method


# virtual methods
.method Find_Roots()V
    .locals 6

    .prologue
    .line 314
    const/4 v3, 0x0

    iput v3, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->NErrors:I

    .line 316
    const/4 v1, 0x1

    .local v1, "r":I
    :goto_0
    const/16 v3, 0x100

    if-lt v1, v3, :cond_0

    .line 328
    return-void

    .line 317
    :cond_0
    const/4 v2, 0x0

    .line 319
    .local v2, "sum":I
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_1
    iget v3, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->NPAR:I

    add-int/lit8 v3, v3, 0x1

    if-lt v0, v3, :cond_2

    .line 322
    if-nez v2, :cond_1

    .line 324
    iget-object v3, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->ErrorLocs:[I

    iget v4, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->NErrors:I

    rsub-int v5, v1, 0xff

    aput v5, v3, v4

    iget v3, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->NErrors:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->NErrors:I

    .line 316
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    :cond_2
    iget-object v3, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gexp:[I

    mul-int v4, v0, v1

    rem-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    iget-object v4, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->Lambda:[I

    aget v4, v4, v0

    invoke-virtual {p0, v3, v4}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gmult(II)I

    move-result v3

    xor-int/2addr v2, v3

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method Modified_Berlekamp_Massey()V
    .locals 12

    .prologue
    .line 138
    iget v10, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    new-array v8, v10, [I

    .line 139
    .local v8, "psi":[I
    iget v10, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    new-array v9, v10, [I

    .line 140
    .local v9, "psi2":[I
    iget v10, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    new-array v0, v10, [I

    .line 141
    .local v0, "D":[I
    iget v10, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    new-array v4, v10, [I

    .line 144
    .local v4, "gamma":[I
    invoke-virtual {p0, v4}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->init_gamma([I)V

    .line 147
    invoke-virtual {p0, v0, v4}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->copy_poly([I[I)V

    .line 148
    invoke-virtual {p0, v0}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->mul_z_poly([I)V

    .line 150
    invoke-virtual {p0, v8, v4}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->copy_poly([I[I)V

    .line 151
    const/4 v6, -0x1

    .local v6, "k":I
    iget v1, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->NErasures:I

    .line 153
    .local v1, "L":I
    iget v7, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->NErasures:I

    .local v7, "n":I
    :goto_0
    const/16 v10, 0x8

    if-lt v7, v10, :cond_0

    .line 178
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget v10, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    if-lt v5, v10, :cond_6

    .line 179
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->compute_modified_omega()V

    .line 182
    return-void

    .line 155
    .end local v5    # "i":I
    :cond_0
    iget-object v10, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->synBytes:[I

    invoke-virtual {p0, v8, v10, v1, v7}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->compute_discrepancy([I[III)I

    move-result v3

    .line 157
    .local v3, "d":I
    if-eqz v3, :cond_2

    .line 160
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    iget v10, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    if-lt v5, v10, :cond_3

    .line 163
    sub-int v10, v7, v6

    if-ge v1, v10, :cond_1

    .line 164
    sub-int v2, v7, v6

    .line 165
    .local v2, "L2":I
    sub-int v6, v7, v1

    .line 167
    const/4 v5, 0x0

    :goto_3
    iget v10, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    if-lt v5, v10, :cond_4

    .line 168
    move v1, v2

    .line 172
    .end local v2    # "L2":I
    :cond_1
    const/4 v5, 0x0

    :goto_4
    iget v10, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    if-lt v5, v10, :cond_5

    .line 175
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {p0, v0}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->mul_z_poly([I)V

    .line 153
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 160
    .restart local v5    # "i":I
    :cond_3
    aget v10, v8, v5

    aget v11, v0, v5

    invoke-virtual {p0, v3, v11}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gmult(II)I

    move-result v11

    xor-int/2addr v10, v11

    aput v10, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 167
    .restart local v2    # "L2":I
    :cond_4
    aget v10, v8, v5

    invoke-virtual {p0, v3}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->ginv(I)I

    move-result v11

    invoke-virtual {p0, v10, v11}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gmult(II)I

    move-result v10

    aput v10, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 172
    .end local v2    # "L2":I
    :cond_5
    aget v10, v9, v5

    aput v10, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 178
    .end local v3    # "d":I
    :cond_6
    iget-object v10, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->Lambda:[I

    aget v11, v8, v5

    aput v11, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method add_polys([I[I)V
    .locals 3
    .param p1, "dst"    # [I
    .param p2, "src"    # [I

    .prologue
    .line 272
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    if-lt v0, v1, :cond_0

    .line 273
    return-void

    .line 272
    :cond_0
    aget v1, p1, v0

    aget v2, p2, v0

    xor-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method compute_discrepancy([I[III)I
    .locals 4
    .param p1, "lambda"    # [I
    .param p2, "S"    # [I
    .param p3, "L"    # I
    .param p4, "n"    # I

    .prologue
    .line 260
    const/4 v1, 0x0

    .line 262
    .local v1, "sum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-le v0, p3, :cond_0

    .line 264
    return v1

    .line 263
    :cond_0
    aget v2, p1, v0

    sub-int v3, p4, v0

    aget v3, p2, v3

    invoke-virtual {p0, v2, v3}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gmult(II)I

    move-result v2

    xor-int/2addr v1, v2

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method compute_modified_omega()V
    .locals 4

    .prologue
    .line 192
    iget v2, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [I

    .line 194
    .local v1, "product":[I
    iget-object v2, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->Lambda:[I

    iget-object v3, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->synBytes:[I

    invoke-virtual {p0, v1, v2, v3}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->mult_polys([I[I[I)V

    .line 195
    iget-object v2, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->Omega:[I

    invoke-virtual {p0, v2}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->zero_poly([I)V

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->NPAR:I

    if-lt v0, v2, :cond_0

    .line 198
    return-void

    .line 196
    :cond_0
    iget-object v2, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->Omega:[I

    aget v3, v1, v0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method compute_next_omega(I[I[I[I)V
    .locals 3
    .param p1, "d"    # I
    .param p2, "A"    # [I
    .param p3, "dst"    # [I
    .param p4, "src"    # [I

    .prologue
    .line 250
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    if-lt v0, v1, :cond_0

    .line 253
    return-void

    .line 251
    :cond_0
    aget v1, p4, v0

    aget v2, p2, v0

    invoke-virtual {p0, p1, v2}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gmult(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p3, v0

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method copy_poly([I[I)V
    .locals 2
    .param p1, "dst"    # [I
    .param p2, "src"    # [I

    .prologue
    .line 278
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    if-lt v0, v1, :cond_0

    .line 279
    return-void

    .line 278
    :cond_0
    aget v1, p2, v0

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public correct()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 114
    iget-object v2, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->y:[I

    invoke-virtual {p0, v2}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->decode_data([I)V

    .line 115
    iput-boolean v5, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->correctionSucceeded:Z

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "hasError":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->synBytes:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 122
    if-eqz v0, :cond_0

    .line 123
    iget-object v2, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->y:[I

    iget-object v3, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->y:[I

    array-length v3, v3

    const/4 v4, 0x0

    new-array v5, v5, [I

    invoke-virtual {p0, v2, v3, v4, v5}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->correct_errors_erasures([III[I)Z

    move-result v2

    iput-boolean v2, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->correctionSucceeded:Z

    .line 124
    :cond_0
    return-void

    .line 119
    :cond_1
    iget-object v2, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->synBytes:[I

    aget v2, v2, v1

    if-eqz v2, :cond_2

    .line 120
    const/4 v0, 0x1

    .line 117
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method correct_errors_erasures([III[I)Z
    .locals 10
    .param p1, "codeword"    # [I
    .param p2, "csize"    # I
    .param p3, "nerasures"    # I
    .param p4, "erasures"    # [I

    .prologue
    const/4 v6, 0x0

    .line 353
    iput p3, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->NErasures:I

    .line 354
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v7, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->NErasures:I

    if-lt v2, v7, :cond_2

    .line 356
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->Modified_Berlekamp_Massey()V

    .line 357
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->Find_Roots()V

    .line 360
    iget v7, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->NErrors:I

    iget v8, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->NPAR:I

    if-le v7, v8, :cond_0

    iget v7, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->NErrors:I

    if-lez v7, :cond_1

    .line 363
    :cond_0
    const/4 v5, 0x0

    .local v5, "r":I
    :goto_1
    iget v7, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->NErrors:I

    if-lt v5, v7, :cond_3

    .line 371
    const/4 v5, 0x0

    :goto_2
    iget v6, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->NErrors:I

    if-lt v5, v6, :cond_4

    .line 394
    const/4 v6, 0x1

    .line 399
    .end local v5    # "r":I
    :cond_1
    return v6

    .line 354
    :cond_2
    iget-object v7, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->ErasureLocs:[I

    aget v8, p4, v2

    aput v8, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    .restart local v5    # "r":I
    :cond_3
    iget-object v7, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->ErrorLocs:[I

    aget v7, v7, v5

    if-ge v7, p2, :cond_1

    .line 363
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 373
    :cond_4
    iget-object v6, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->ErrorLocs:[I

    aget v2, v6, v5

    .line 376
    const/4 v4, 0x0

    .line 377
    .local v4, "num":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    iget v6, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    if-lt v3, v6, :cond_5

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "denom":I
    const/4 v3, 0x1

    :goto_4
    iget v6, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    if-lt v3, v6, :cond_6

    .line 386
    invoke-virtual {p0, v0}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->ginv(I)I

    move-result v6

    invoke-virtual {p0, v4, v6}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gmult(II)I

    move-result v1

    .line 389
    .local v1, "err":I
    sub-int v6, p2, v2

    add-int/lit8 v6, v6, -0x1

    aget v7, p1, v6

    xor-int/2addr v7, v1

    aput v7, p1, v6

    .line 371
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 378
    .end local v0    # "denom":I
    .end local v1    # "err":I
    :cond_5
    iget-object v6, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->Omega:[I

    aget v6, v6, v3

    iget-object v7, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gexp:[I

    rsub-int v8, v2, 0xff

    mul-int/2addr v8, v3

    rem-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-virtual {p0, v6, v7}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gmult(II)I

    move-result v6

    xor-int/2addr v4, v6

    .line 377
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 383
    .restart local v0    # "denom":I
    :cond_6
    iget-object v6, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->Lambda:[I

    aget v6, v6, v3

    iget-object v7, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gexp:[I

    rsub-int v8, v2, 0xff

    add-int/lit8 v9, v3, -0x1

    mul-int/2addr v8, v9

    rem-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    invoke-virtual {p0, v6, v7}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gmult(II)I

    move-result v6

    xor-int/2addr v0, v6

    .line 382
    add-int/lit8 v3, v3, 0x2

    goto :goto_4
.end method

.method decode_data([I)V
    .locals 6
    .param p1, "data"    # [I

    .prologue
    .line 103
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget v3, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    if-lt v1, v3, :cond_0

    .line 110
    return-void

    .line 104
    :cond_0
    const/4 v2, 0x0

    .line 105
    .local v2, "sum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-lt v0, v3, :cond_1

    .line 108
    iget-object v3, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->synBytes:[I

    aput v2, v3, v1

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_1
    aget v3, p1, v0

    iget-object v4, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gexp:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    invoke-virtual {p0, v4, v2}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gmult(II)I

    move-result v4

    xor-int v2, v3, v4

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getNumCorrectedErrors()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->NErrors:I

    return v0
.end method

.method ginv(I)I
    .locals 2
    .param p1, "elt"    # I

    .prologue
    .line 97
    iget-object v0, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gexp:[I

    iget-object v1, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->glog:[I

    aget v1, v1, p1

    rsub-int v1, v1, 0xff

    aget v0, v0, v1

    return v0
.end method

.method gmult(II)I
    .locals 4
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 88
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 91
    :goto_0
    return v2

    .line 89
    :cond_1
    iget-object v2, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->glog:[I

    aget v0, v2, p1

    .line 90
    .local v0, "i":I
    iget-object v2, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->glog:[I

    aget v1, v2, p2

    .line 91
    .local v1, "j":I
    iget-object v2, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gexp:[I

    add-int v3, v0, v1

    aget v2, v2, v3

    goto :goto_0
.end method

.method init_gamma([I)V
    .locals 4
    .param p1, "gamma"    # [I

    .prologue
    .line 230
    iget v2, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    new-array v1, v2, [I

    .line 232
    .local v1, "tmp":[I
    invoke-virtual {p0, p1}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->zero_poly([I)V

    .line 233
    invoke-virtual {p0, v1}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->zero_poly([I)V

    .line 234
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, p1, v2

    .line 236
    const/4 v0, 0x0

    .local v0, "e":I
    :goto_0
    iget v2, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->NErasures:I

    if-lt v0, v2, :cond_0

    .line 242
    return-void

    .line 237
    :cond_0
    invoke-virtual {p0, v1, p1}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->copy_poly([I[I)V

    .line 238
    iget-object v2, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gexp:[I

    iget-object v3, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->ErasureLocs:[I

    aget v3, v3, v0

    aget v2, v2, v3

    invoke-virtual {p0, v2, v1}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->scale_poly(I[I)V

    .line 239
    invoke-virtual {p0, v1}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->mul_z_poly([I)V

    .line 240
    invoke-virtual {p0, p1, v1}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->add_polys([I[I)V

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method initializeGaloisTables()V
    .locals 15

    .prologue
    .line 53
    const/4 v8, 0x0

    .local v8, "p8":I
    move v7, v8

    .local v7, "p7":I
    move v6, v8

    .local v6, "p6":I
    move v5, v8

    .local v5, "p5":I
    move v4, v8

    .local v4, "p4":I
    move v3, v8

    .local v3, "p3":I
    move v2, v8

    .local v2, "p2":I
    move v9, v8

    .line 54
    .local v9, "pinit":I
    const/4 v1, 0x1

    .line 56
    .local v1, "p1":I
    iget-object v11, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gexp:[I

    const/4 v12, 0x0

    const/4 v13, 0x1

    aput v13, v11, v12

    .line 57
    iget-object v11, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gexp:[I

    const/16 v12, 0xff

    iget-object v13, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gexp:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    aput v13, v11, v12

    .line 58
    iget-object v11, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->glog:[I

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 60
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v11, 0x100

    if-lt v0, v11, :cond_0

    .line 74
    const/4 v0, 0x1

    :goto_1
    const/16 v11, 0x100

    if-lt v0, v11, :cond_1

    .line 82
    return-void

    .line 61
    :cond_0
    move v9, v8

    .line 62
    move v8, v7

    .line 63
    move v7, v6

    .line 64
    move v6, v5

    .line 65
    xor-int v5, v4, v9

    .line 66
    xor-int v4, v3, v9

    .line 67
    xor-int v3, v2, v9

    .line 68
    move v2, v1

    .line 69
    move v1, v9

    .line 70
    iget-object v11, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gexp:[I

    mul-int/lit8 v12, v2, 0x2

    add-int/2addr v12, v1

    mul-int/lit8 v13, v3, 0x4

    add-int/2addr v12, v13

    mul-int/lit8 v13, v4, 0x8

    add-int/2addr v12, v13

    mul-int/lit8 v13, v5, 0x10

    add-int/2addr v12, v13

    mul-int/lit8 v13, v6, 0x20

    add-int/2addr v12, v13

    mul-int/lit8 v13, v7, 0x40

    add-int/2addr v12, v13

    mul-int/lit16 v13, v8, 0x80

    add-int/2addr v12, v13

    aput v12, v11, v0

    .line 71
    iget-object v11, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gexp:[I

    add-int/lit16 v12, v0, 0xff

    iget-object v13, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gexp:[I

    aget v13, v13, v0

    aput v13, v11, v12

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    const/4 v10, 0x0

    .local v10, "z":I
    :goto_2
    const/16 v11, 0x100

    if-lt v10, v11, :cond_2

    .line 74
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    :cond_2
    iget-object v11, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gexp:[I

    aget v11, v11, v10

    if-ne v11, v0, :cond_3

    .line 77
    iget-object v11, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->glog:[I

    aput v10, v11, v0

    goto :goto_3

    .line 75
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2
.end method

.method public isCorrectionSucceeded()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->correctionSucceeded:Z

    return v0
.end method

.method mul_z_poly([I)V
    .locals 3
    .param p1, "src"    # [I

    .prologue
    const/4 v2, 0x0

    .line 299
    iget v1, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gtz v0, :cond_0

    .line 300
    aput v2, p1, v2

    .line 301
    return-void

    .line 299
    :cond_0
    add-int/lit8 v1, v0, -0x1

    aget v1, p1, v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method mult_polys([I[I[I)V
    .locals 6
    .param p1, "dst"    # [I
    .param p2, "p1"    # [I
    .param p3, "p2"    # [I

    .prologue
    const/4 v5, 0x0

    .line 205
    iget v3, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [I

    .line 207
    .local v2, "tmp1":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    mul-int/lit8 v3, v3, 0x2

    if-lt v0, v3, :cond_0

    .line 209
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    if-lt v0, v3, :cond_1

    .line 221
    return-void

    .line 207
    :cond_0
    aput v5, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_1
    iget v1, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    .local v1, "j":I
    :goto_2
    iget v3, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    mul-int/lit8 v3, v3, 0x2

    if-lt v1, v3, :cond_2

    .line 213
    const/4 v1, 0x0

    :goto_3
    iget v3, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    if-lt v1, v3, :cond_3

    .line 215
    iget v3, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v3, -0x1

    :goto_4
    if-ge v1, v0, :cond_4

    .line 216
    const/4 v1, 0x0

    :goto_5
    if-lt v1, v0, :cond_5

    .line 219
    const/4 v1, 0x0

    :goto_6
    iget v3, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    mul-int/lit8 v3, v3, 0x2

    if-lt v1, v3, :cond_6

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    :cond_2
    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 213
    :cond_3
    aget v3, p3, v1

    aget v4, p2, v0

    invoke-virtual {p0, v3, v4}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gmult(II)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 215
    :cond_4
    sub-int v3, v1, v0

    aget v3, v2, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 216
    :cond_5
    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 219
    :cond_6
    aget v3, p1, v1

    aget v4, v2, v1

    xor-int/2addr v3, v4

    aput v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method scale_poly(I[I)V
    .locals 2
    .param p1, "k"    # I
    .param p2, "poly"    # [I

    .prologue
    .line 284
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    if-lt v0, v1, :cond_0

    .line 285
    return-void

    .line 284
    :cond_0
    aget v1, p2, v0

    invoke-virtual {p0, p1, v1}, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->gmult(II)I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method zero_poly([I)V
    .locals 2
    .param p1, "poly"    # [I

    .prologue
    .line 291
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljp/sourceforge/qrcode/ecc/ReedSolomon;->MAXDEG:I

    if-lt v0, v1, :cond_0

    .line 292
    return-void

    .line 291
    :cond_0
    const/4 v1, 0x0

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
