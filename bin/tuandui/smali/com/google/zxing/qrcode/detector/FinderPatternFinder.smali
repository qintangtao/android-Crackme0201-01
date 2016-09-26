.class public Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$1;,
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;,
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
    }
.end annotation


# static fields
.field private static final CENTER_QUORUM:I = 0x2

.field private static final INTEGER_MATH_SHIFT:I = 0x8

.field protected static final MAX_MODULES:I = 0x39

.field protected static final MIN_SKIP:I = 0x3


# instance fields
.field private final crossCheckStateCount:[I

.field private hasSkipped:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final possibleCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation
.end field

.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;
    .param p2, "resultPointCallback"    # Lcom/google/zxing/ResultPointCallback;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    .line 66
    iput-object p2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 67
    return-void
.end method

.method private static centerFromEnd([II)F
    .locals 3
    .param p0, "stateCount"    # [I
    .param p1, "end"    # I

    .prologue
    .line 192
    const/4 v0, 0x4

    aget v0, p0, v0

    sub-int v0, p1, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private crossCheckDiagonal(IIII)Z
    .locals 8
    .param p1, "startI"    # I
    .param p2, "centerJ"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .prologue
    .line 244
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 245
    .local v1, "maxI":I
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    .line 246
    .local v2, "maxJ":I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .line 249
    .local v3, "stateCount":[I
    const/4 v0, 0x0

    .line 250
    .local v0, "i":I
    :goto_0
    sub-int v5, p1, v0

    if-ltz v5, :cond_0

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 251
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_0
    sub-int v5, p1, v0

    if-ltz v5, :cond_1

    sub-int v5, p2, v0

    if-gez v5, :cond_2

    .line 256
    :cond_1
    const/4 v5, 0x0

    .line 312
    :goto_1
    return v5

    .line 260
    :cond_2
    :goto_2
    sub-int v5, p1, v0

    if-ltz v5, :cond_3

    sub-int v5, p2, v0

    if-ltz v5, :cond_3

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    aget v5, v3, v5

    if-gt v5, p3, :cond_3

    .line 261
    const/4 v5, 0x1

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 266
    :cond_3
    sub-int v5, p1, v0

    if-ltz v5, :cond_4

    sub-int v5, p2, v0

    if-ltz v5, :cond_4

    const/4 v5, 0x1

    aget v5, v3, v5

    if-le v5, p3, :cond_5

    .line 267
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 271
    :cond_5
    :goto_3
    sub-int v5, p1, v0

    if-ltz v5, :cond_6

    sub-int v5, p2, v0

    if-ltz v5, :cond_6

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    sub-int v6, p2, v0

    sub-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    aget v5, v3, v5

    if-gt v5, p3, :cond_6

    .line 272
    const/4 v5, 0x0

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 275
    :cond_6
    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v5, p3, :cond_7

    .line 276
    const/4 v5, 0x0

    goto :goto_1

    .line 280
    :cond_7
    const/4 v0, 0x1

    .line 281
    :goto_4
    add-int v5, p1, v0

    if-ge v5, v1, :cond_8

    add-int v5, p2, v0

    if-ge v5, v2, :cond_8

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 282
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 287
    :cond_8
    add-int v5, p1, v0

    if-ge v5, v1, :cond_9

    add-int v5, p2, v0

    if-lt v5, v2, :cond_a

    .line 288
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 291
    :cond_a
    :goto_5
    add-int v5, p1, v0

    if-ge v5, v1, :cond_b

    add-int v5, p2, v0

    if-ge v5, v2, :cond_b

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v5, 0x3

    aget v5, v3, v5

    if-ge v5, p3, :cond_b

    .line 292
    const/4 v5, 0x3

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 296
    :cond_b
    add-int v5, p1, v0

    if-ge v5, v1, :cond_c

    add-int v5, p2, v0

    if-ge v5, v2, :cond_c

    const/4 v5, 0x3

    aget v5, v3, v5

    if-lt v5, p3, :cond_d

    .line 297
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 300
    :cond_d
    :goto_6
    add-int v5, p1, v0

    if-ge v5, v1, :cond_e

    add-int v5, p2, v0

    if-ge v5, v2, :cond_e

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    add-int v6, p2, v0

    add-int v7, p1, v0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x4

    aget v5, v3, v5

    if-ge v5, p3, :cond_e

    .line 301
    const/4 v5, 0x4

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 305
    :cond_e
    const/4 v5, 0x4

    aget v5, v3, v5

    if-lt v5, p3, :cond_f

    .line 306
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 311
    :cond_f
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int v4, v5, v6

    .line 312
    .local v4, "stateCountTotal":I
    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v6, p4, 0x2

    if-ge v5, v6, :cond_10

    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method private crossCheckHorizontal(IIII)F
    .locals 7
    .param p1, "startJ"    # I
    .param p2, "centerI"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 404
    .local v0, "image":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    .line 405
    .local v2, "maxJ":I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .line 407
    .local v3, "stateCount":[I
    move v1, p1

    .line 408
    .local v1, "j":I
    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 409
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 410
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 412
    :cond_0
    if-gez v1, :cond_1

    .line 413
    const/high16 v5, 0x7fc00000    # NaNf

    .line 461
    :goto_1
    return v5

    .line 415
    :cond_1
    :goto_2
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    aget v5, v3, v5

    if-gt v5, p3, :cond_2

    .line 416
    const/4 v5, 0x1

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 417
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 419
    :cond_2
    if-ltz v1, :cond_3

    const/4 v5, 0x1

    aget v5, v3, v5

    if-le v5, p3, :cond_4

    .line 420
    :cond_3
    const/high16 v5, 0x7fc00000    # NaNf

    goto :goto_1

    .line 422
    :cond_4
    :goto_3
    if-ltz v1, :cond_5

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    aget v5, v3, v5

    if-gt v5, p3, :cond_5

    .line 423
    const/4 v5, 0x0

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 424
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 426
    :cond_5
    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v5, p3, :cond_6

    .line 427
    const/high16 v5, 0x7fc00000    # NaNf

    goto :goto_1

    .line 430
    :cond_6
    add-int/lit8 v1, p1, 0x1

    .line 431
    :goto_4
    if-ge v1, v2, :cond_7

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 432
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 433
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 435
    :cond_7
    if-ne v1, v2, :cond_8

    .line 436
    const/high16 v5, 0x7fc00000    # NaNf

    goto :goto_1

    .line 438
    :cond_8
    :goto_5
    if-ge v1, v2, :cond_9

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x3

    aget v5, v3, v5

    if-ge v5, p3, :cond_9

    .line 439
    const/4 v5, 0x3

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 442
    :cond_9
    if-eq v1, v2, :cond_a

    const/4 v5, 0x3

    aget v5, v3, v5

    if-lt v5, p3, :cond_b

    .line 443
    :cond_a
    const/high16 v5, 0x7fc00000    # NaNf

    goto :goto_1

    .line 445
    :cond_b
    :goto_6
    if-ge v1, v2, :cond_c

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x4

    aget v5, v3, v5

    if-ge v5, p3, :cond_c

    .line 446
    const/4 v5, 0x4

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 449
    :cond_c
    const/4 v5, 0x4

    aget v5, v3, v5

    if-lt v5, p3, :cond_d

    .line 450
    const/high16 v5, 0x7fc00000    # NaNf

    goto/16 :goto_1

    .line 455
    :cond_d
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int v4, v5, v6

    .line 457
    .local v4, "stateCountTotal":I
    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    if-lt v5, p4, :cond_e

    .line 458
    const/high16 v5, 0x7fc00000    # NaNf

    goto/16 :goto_1

    .line 461
    :cond_e
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {v3, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v5

    goto/16 :goto_1

    :cond_f
    const/high16 v5, 0x7fc00000    # NaNf

    goto/16 :goto_1
.end method

.method private crossCheckVertical(IIII)F
    .locals 7
    .param p1, "startI"    # I
    .param p2, "centerJ"    # I
    .param p3, "maxCount"    # I
    .param p4, "originalStateCountTotal"    # I

    .prologue
    .line 330
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 332
    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    .line 333
    .local v2, "maxI":I
    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v3

    .line 336
    .local v3, "stateCount":[I
    move v0, p1

    .line 337
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 338
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 339
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 341
    :cond_0
    if-gez v0, :cond_1

    .line 342
    const/high16 v5, 0x7fc00000    # NaNf

    .line 392
    :goto_1
    return v5

    .line 344
    :cond_1
    :goto_2
    if-ltz v0, :cond_2

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    aget v5, v3, v5

    if-gt v5, p3, :cond_2

    .line 345
    const/4 v5, 0x1

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 346
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 349
    :cond_2
    if-ltz v0, :cond_3

    const/4 v5, 0x1

    aget v5, v3, v5

    if-le v5, p3, :cond_4

    .line 350
    :cond_3
    const/high16 v5, 0x7fc00000    # NaNf

    goto :goto_1

    .line 352
    :cond_4
    :goto_3
    if-ltz v0, :cond_5

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    aget v5, v3, v5

    if-gt v5, p3, :cond_5

    .line 353
    const/4 v5, 0x0

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 354
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 356
    :cond_5
    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v5, p3, :cond_6

    .line 357
    const/high16 v5, 0x7fc00000    # NaNf

    goto :goto_1

    .line 361
    :cond_6
    add-int/lit8 v0, p1, 0x1

    .line 362
    :goto_4
    if-ge v0, v2, :cond_7

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 363
    const/4 v5, 0x2

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 366
    :cond_7
    if-ne v0, v2, :cond_8

    .line 367
    const/high16 v5, 0x7fc00000    # NaNf

    goto :goto_1

    .line 369
    :cond_8
    :goto_5
    if-ge v0, v2, :cond_9

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x3

    aget v5, v3, v5

    if-ge v5, p3, :cond_9

    .line 370
    const/4 v5, 0x3

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 373
    :cond_9
    if-eq v0, v2, :cond_a

    const/4 v5, 0x3

    aget v5, v3, v5

    if-lt v5, p3, :cond_b

    .line 374
    :cond_a
    const/high16 v5, 0x7fc00000    # NaNf

    goto :goto_1

    .line 376
    :cond_b
    :goto_6
    if-ge v0, v2, :cond_c

    invoke-virtual {v1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x4

    aget v5, v3, v5

    if-ge v5, p3, :cond_c

    .line 377
    const/4 v5, 0x4

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 380
    :cond_c
    const/4 v5, 0x4

    aget v5, v3, v5

    if-lt v5, p3, :cond_d

    .line 381
    const/high16 v5, 0x7fc00000    # NaNf

    goto/16 :goto_1

    .line 386
    :cond_d
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    add-int/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v3, v6

    add-int v4, v5, v6

    .line 388
    .local v4, "stateCountTotal":I
    sub-int v5, v4, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    mul-int/lit8 v6, p4, 0x2

    if-lt v5, v6, :cond_e

    .line 389
    const/high16 v5, 0x7fc00000    # NaNf

    goto/16 :goto_1

    .line 392
    :cond_e
    invoke-static {v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {v3, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v5

    goto/16 :goto_1

    :cond_f
    const/high16 v5, 0x7fc00000    # NaNf

    goto/16 :goto_1
.end method

.method private findRowSkip()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 523
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 524
    .local v3, "max":I
    if-gt v3, v7, :cond_1

    .line 544
    :cond_0
    :goto_0
    return v4

    .line 527
    :cond_1
    const/4 v1, 0x0

    .line 528
    .local v1, "firstConfirmedCenter":Lcom/google/zxing/ResultPoint;
    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 529
    .local v0, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 530
    if-nez v1, :cond_3

    .line 531
    move-object v1, v0

    goto :goto_1

    .line 538
    :cond_3
    iput-boolean v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    .line 539
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    goto :goto_0
.end method

.method protected static foundPatternCross([I)Z
    .locals 9
    .param p0, "stateCount"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 201
    const/4 v4, 0x0

    .line 202
    .local v4, "totalModuleSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v7, 0x5

    if-ge v1, v7, :cond_2

    .line 203
    aget v0, p0, v1

    .line 204
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 215
    .end local v0    # "count":I
    :cond_0
    :goto_1
    return v6

    .line 207
    .restart local v0    # "count":I
    :cond_1
    add-int/2addr v4, v0

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "count":I
    :cond_2
    const/4 v7, 0x7

    if-lt v4, v7, :cond_0

    .line 212
    shl-int/lit8 v7, v4, 0x8

    div-int/lit8 v3, v7, 0x7

    .line 213
    .local v3, "moduleSize":I
    div-int/lit8 v2, v3, 0x2

    .line 215
    .local v2, "maxVariance":I
    aget v7, p0, v6

    shl-int/lit8 v7, v7, 0x8

    sub-int v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v2, :cond_3

    aget v7, p0, v5

    shl-int/lit8 v7, v7, 0x8

    sub-int v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v2, :cond_3

    mul-int/lit8 v7, v3, 0x3

    const/4 v8, 0x2

    aget v8, p0, v8

    shl-int/lit8 v8, v8, 0x8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    mul-int/lit8 v8, v2, 0x3

    if-ge v7, v8, :cond_3

    const/4 v7, 0x3

    aget v7, p0, v7

    shl-int/lit8 v7, v7, 0x8

    sub-int v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v2, :cond_3

    const/4 v7, 0x4

    aget v7, p0, v7

    shl-int/lit8 v7, v7, 0x8

    sub-int v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v2, :cond_3

    :goto_2
    move v6, v5

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2
.end method

.method private getCrossCheckStateCount()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    aput v2, v0, v2

    .line 224
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 225
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 226
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 227
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 228
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    return-object v0
.end method

.method private haveMultiplyConfirmedCenters()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 553
    const/4 v1, 0x0

    .line 554
    .local v1, "confirmedCount":I
    const/4 v6, 0x0

    .line 555
    .local v6, "totalModuleSize":F
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    .line 556
    .local v3, "max":I
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 557
    .local v4, "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    .line 558
    add-int/lit8 v1, v1, 0x1

    .line 559
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    add-float/2addr v6, v8

    goto :goto_0

    .line 562
    .end local v4    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_1
    const/4 v8, 0x3

    if-ge v1, v8, :cond_3

    .line 574
    :cond_2
    :goto_1
    return v7

    .line 569
    :cond_3
    int-to-float v8, v3

    div-float v0, v6, v8

    .line 570
    .local v0, "average":F
    const/4 v5, 0x0

    .line 571
    .local v5, "totalDeviation":F
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 572
    .restart local v4    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    sub-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v5, v8

    .line 573
    goto :goto_2

    .line 574
    .end local v4    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_4
    const v8, 0x3d4ccccd    # 0.05f

    mul-float/2addr v8, v6

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_2

    const/4 v7, 0x1

    goto :goto_1
.end method

.method private selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 585
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v11

    .line 586
    .local v11, "startSize":I
    const/4 v14, 0x3

    if-ge v11, v14, :cond_0

    .line 588
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 592
    :cond_0
    const/4 v14, 0x3

    if-le v11, v14, :cond_3

    .line 594
    const/4 v13, 0x0

    .line 595
    .local v13, "totalModuleSize":F
    const/4 v10, 0x0

    .line 596
    .local v10, "square":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 597
    .local v3, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v9

    .line 598
    .local v9, "size":F
    add-float/2addr v13, v9

    .line 599
    mul-float v14, v9, v9

    add-float/2addr v10, v14

    .line 600
    goto :goto_0

    .line 601
    .end local v3    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v9    # "size":F
    :cond_1
    int-to-float v14, v11

    div-float v2, v13, v14

    .line 602
    .local v2, "average":F
    int-to-float v14, v11

    div-float v14, v10, v14

    mul-float v15, v2, v2

    sub-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v12, v14

    .line 604
    .local v12, "stdDev":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v15, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v15, v2, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 606
    const v14, 0x3e4ccccd    # 0.2f

    mul-float/2addr v14, v2

    invoke-static {v14, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 608
    .local v6, "limit":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v4, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x3

    if-le v14, v15, :cond_3

    .line 609
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 610
    .local v7, "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v14

    sub-float/2addr v14, v2

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpl-float v14, v14, v6

    if-lez v14, :cond_2

    .line 611
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 612
    add-int/lit8 v4, v4, -0x1

    .line 608
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 617
    .end local v2    # "average":F
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "limit":F
    .end local v7    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v10    # "square":F
    .end local v12    # "stdDev":F
    .end local v13    # "totalModuleSize":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x3

    if-le v14, v15, :cond_5

    .line 620
    const/4 v13, 0x0

    .line 621
    .restart local v13    # "totalModuleSize":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 622
    .local v8, "possibleCenter":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v14

    add-float/2addr v13, v14

    .line 623
    goto :goto_2

    .line 625
    .end local v8    # "possibleCenter":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    int-to-float v14, v14

    div-float v2, v13, v14

    .line 627
    .restart local v2    # "average":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v15, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v15, v2, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-interface/range {v14 .. v16}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 632
    .end local v2    # "average":F
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v13    # "totalModuleSize":F
    :cond_5
    const/4 v14, 0x3

    new-array v15, v14, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v14, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v14, v15, v16

    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v14, v15, v16

    return-object v15
.end method


# virtual methods
.method final find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-eqz p1, :cond_3

    sget-object v14, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v13, 0x1

    .line 79
    .local v13, "tryHarder":Z
    :goto_0
    if-eqz p1, :cond_4

    sget-object v14, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v10, 0x1

    .line 80
    .local v10, "pureBarcode":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v14}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    .line 81
    .local v7, "maxI":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v14}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    .line 89
    .local v8, "maxJ":I
    mul-int/lit8 v14, v7, 0x3

    div-int/lit16 v5, v14, 0xe4

    .line 90
    .local v5, "iSkip":I
    const/4 v14, 0x3

    if-lt v5, v14, :cond_0

    if-eqz v13, :cond_1

    .line 91
    :cond_0
    const/4 v5, 0x3

    .line 94
    :cond_1
    const/4 v3, 0x0

    .line 95
    .local v3, "done":Z
    const/4 v14, 0x5

    new-array v12, v14, [I

    .line 96
    .local v12, "stateCount":[I
    add-int/lit8 v4, v5, -0x1

    .local v4, "i":I
    :goto_2
    if-ge v4, v7, :cond_e

    if-nez v3, :cond_e

    .line 98
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 99
    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 100
    const/4 v14, 0x2

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 101
    const/4 v14, 0x3

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 102
    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 103
    const/4 v2, 0x0

    .line 104
    .local v2, "currentState":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    if-ge v6, v8, :cond_c

    .line 105
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v14, v6, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 107
    and-int/lit8 v14, v2, 0x1

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 108
    add-int/lit8 v2, v2, 0x1

    .line 110
    :cond_2
    aget v14, v12, v2

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v2

    .line 104
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 78
    .end local v2    # "currentState":I
    .end local v3    # "done":Z
    .end local v4    # "i":I
    .end local v5    # "iSkip":I
    .end local v6    # "j":I
    .end local v7    # "maxI":I
    .end local v8    # "maxJ":I
    .end local v10    # "pureBarcode":Z
    .end local v12    # "stateCount":[I
    .end local v13    # "tryHarder":Z
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 79
    .restart local v13    # "tryHarder":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 112
    .restart local v2    # "currentState":I
    .restart local v3    # "done":Z
    .restart local v4    # "i":I
    .restart local v5    # "iSkip":I
    .restart local v6    # "j":I
    .restart local v7    # "maxI":I
    .restart local v8    # "maxJ":I
    .restart local v10    # "pureBarcode":Z
    .restart local v12    # "stateCount":[I
    :cond_5
    and-int/lit8 v14, v2, 0x1

    if-nez v14, :cond_b

    .line 113
    const/4 v14, 0x4

    if-ne v2, v14, :cond_a

    .line 114
    invoke-static {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 115
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4, v6, v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v1

    .line 116
    .local v1, "confirmed":Z
    if-eqz v1, :cond_8

    .line 119
    const/4 v5, 0x2

    .line 120
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v14, :cond_7

    .line 121
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v3

    .line 147
    :cond_6
    :goto_5
    const/4 v2, 0x0

    .line 148
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 149
    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 150
    const/4 v14, 0x2

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 151
    const/4 v14, 0x3

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 152
    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v12, v14

    goto :goto_4

    .line 123
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->findRowSkip()I

    move-result v11

    .line 124
    .local v11, "rowSkip":I
    const/4 v14, 0x2

    aget v14, v12, v14

    if-le v11, v14, :cond_6

    .line 133
    const/4 v14, 0x2

    aget v14, v12, v14

    sub-int v14, v11, v14

    sub-int/2addr v14, v5

    add-int/2addr v4, v14

    .line 134
    add-int/lit8 v6, v8, -0x1

    goto :goto_5

    .line 138
    .end local v11    # "rowSkip":I
    :cond_8
    const/4 v14, 0x0

    const/4 v15, 0x2

    aget v15, v12, v15

    aput v15, v12, v14

    .line 139
    const/4 v14, 0x1

    const/4 v15, 0x3

    aget v15, v12, v15

    aput v15, v12, v14

    .line 140
    const/4 v14, 0x2

    const/4 v15, 0x4

    aget v15, v12, v15

    aput v15, v12, v14

    .line 141
    const/4 v14, 0x3

    const/4 v15, 0x1

    aput v15, v12, v14

    .line 142
    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 143
    const/4 v2, 0x3

    .line 144
    goto :goto_4

    .line 154
    .end local v1    # "confirmed":Z
    :cond_9
    const/4 v14, 0x0

    const/4 v15, 0x2

    aget v15, v12, v15

    aput v15, v12, v14

    .line 155
    const/4 v14, 0x1

    const/4 v15, 0x3

    aget v15, v12, v15

    aput v15, v12, v14

    .line 156
    const/4 v14, 0x2

    const/4 v15, 0x4

    aget v15, v12, v15

    aput v15, v12, v14

    .line 157
    const/4 v14, 0x3

    const/4 v15, 0x1

    aput v15, v12, v14

    .line 158
    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 159
    const/4 v2, 0x3

    goto/16 :goto_4

    .line 162
    :cond_a
    add-int/lit8 v2, v2, 0x1

    aget v14, v12, v2

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v2

    goto/16 :goto_4

    .line 165
    :cond_b
    aget v14, v12, v2

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v2

    goto/16 :goto_4

    .line 169
    :cond_c
    invoke-static {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 170
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4, v8, v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v1

    .line 171
    .restart local v1    # "confirmed":Z
    if-eqz v1, :cond_d

    .line 172
    const/4 v14, 0x0

    aget v5, v12, v14

    .line 173
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v14, :cond_d

    .line 175
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v3

    .line 96
    .end local v1    # "confirmed":Z
    :cond_d
    add-int/2addr v4, v5

    goto/16 :goto_2

    .line 181
    .end local v2    # "currentState":I
    .end local v6    # "j":I
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v9

    .line 182
    .local v9, "patternInfo":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-static {v9}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 184
    new-instance v14, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v14, v9}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    return-object v14
.end method

.method protected final getImage()Lcom/google/zxing/common/BitMatrix;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method protected final getPossibleCenters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    return-object v0
.end method

.method protected final handlePossibleCenter([IIIZ)Z
    .locals 11
    .param p1, "stateCount"    # [I
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "pureBarcode"    # Z

    .prologue
    .line 483
    const/4 v8, 0x0

    aget v8, p1, v8

    const/4 v9, 0x1

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x2

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x3

    aget v9, p1, v9

    add-int/2addr v8, v9

    const/4 v9, 0x4

    aget v9, p1, v9

    add-int v7, v8, v9

    .line 485
    .local v7, "stateCountTotal":I
    invoke-static {p1, p3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v2

    .line 486
    .local v2, "centerJ":F
    float-to-int v8, v2

    const/4 v9, 0x2

    aget v9, p1, v9

    invoke-direct {p0, p2, v8, v9, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckVertical(IIII)F

    move-result v1

    .line 487
    .local v1, "centerI":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_4

    .line 489
    float-to-int v8, v2

    float-to-int v9, v1

    const/4 v10, 0x2

    aget v10, p1, v10

    invoke-direct {p0, v8, v9, v10, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckHorizontal(IIII)F

    move-result v2

    .line 490
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz p4, :cond_0

    float-to-int v8, v1

    float-to-int v9, v2

    const/4 v10, 0x2

    aget v10, p1, v10

    invoke-direct {p0, v8, v9, v10, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckDiagonal(IIII)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 492
    :cond_0
    int-to-float v8, v7

    const/high16 v9, 0x40e00000    # 7.0f

    div-float v3, v8, v9

    .line 493
    .local v3, "estimatedModuleSize":F
    const/4 v4, 0x0

    .line 494
    .local v4, "found":Z
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 495
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 497
    .local v0, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->aboutEquals(FFF)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 498
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 499
    const/4 v4, 0x1

    .line 503
    .end local v0    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_1
    if-nez v4, :cond_2

    .line 504
    new-instance v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {v6, v2, v1, v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFF)V

    .line 505
    .local v6, "point":Lcom/google/zxing/qrcode/detector/FinderPattern;
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    if-eqz v8, :cond_2

    .line 507
    iget-object v8, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-interface {v8, v6}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 510
    .end local v6    # "point":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_2
    const/4 v8, 0x1

    .line 513
    .end local v3    # "estimatedModuleSize":F
    .end local v4    # "found":Z
    .end local v5    # "index":I
    :goto_1
    return v8

    .line 494
    .restart local v0    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .restart local v3    # "estimatedModuleSize":F
    .restart local v4    # "found":Z
    .restart local v5    # "index":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 513
    .end local v0    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v3    # "estimatedModuleSize":F
    .end local v4    # "found":Z
    .end local v5    # "index":I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method
