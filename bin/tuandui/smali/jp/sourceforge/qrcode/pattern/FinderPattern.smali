.class public Ljp/sourceforge/qrcode/pattern/FinderPattern;
.super Ljava/lang/Object;
.source "FinderPattern.java"


# static fields
.field public static final DL:I = 0x2

.field public static final UL:I = 0x0

.field public static final UR:I = 0x1

.field static final VersionInfoBit:[I

.field static canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;


# instance fields
.field center:[Ljp/sourceforge/qrcode/geom/Point;

.field moduleSize:[I

.field sincos:[I

.field version:I

.field width:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljp/sourceforge/qrcode/pattern/FinderPattern;->VersionInfoBit:[I

    .line 29
    invoke-static {}, Ljp/sourceforge/qrcode/QRCodeDecoder;->getCanvas()Ljp/sourceforge/qrcode/util/DebugCanvas;

    move-result-object v0

    sput-object v0, Ljp/sourceforge/qrcode/pattern/FinderPattern;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    .line 15
    return-void

    .line 21
    :array_0
    .array-data 4
        0x7c94
        0x85bc
        0x9a99
        0xa4d3
        0xbbf6
        0xc762
        0xd847
        0xe60d
        0xf928
        0x10b78
        0x1145d
        0x12a17
        0x13532
        0x149a6
        0x15683
        0x168c9
        0x177ec
        0x18ec4
        0x191e1
        0x1afab
        0x1b08e
        0x1cc1a
        0x1d33f
        0x1ed75
        0x1f250
        0x209d5
        0x216f0
        0x228ba
        0x2379f
        0x24b0b
        0x2542e
        0x26a64
        0x27541
        0x28c69
    .end array-data
.end method

.method constructor <init>([Ljp/sourceforge/qrcode/geom/Point;I[I[I[I)V
    .locals 0
    .param p1, "center"    # [Ljp/sourceforge/qrcode/geom/Point;
    .param p2, "version"    # I
    .param p3, "sincos"    # [I
    .param p4, "width"    # [I
    .param p5, "moduleSize"    # [I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Ljp/sourceforge/qrcode/pattern/FinderPattern;->center:[Ljp/sourceforge/qrcode/geom/Point;

    .line 69
    iput p2, p0, Ljp/sourceforge/qrcode/pattern/FinderPattern;->version:I

    .line 70
    iput-object p3, p0, Ljp/sourceforge/qrcode/pattern/FinderPattern;->sincos:[I

    .line 71
    iput-object p4, p0, Ljp/sourceforge/qrcode/pattern/FinderPattern;->width:[I

    .line 72
    iput-object p5, p0, Ljp/sourceforge/qrcode/pattern/FinderPattern;->moduleSize:[I

    .line 73
    return-void
.end method

.method static calcExactVersion([Ljp/sourceforge/qrcode/geom/Point;[I[I[[Z)I
    .locals 12
    .param p0, "centers"    # [Ljp/sourceforge/qrcode/geom/Point;
    .param p1, "angle"    # [I
    .param p2, "moduleSize"    # [I
    .param p3, "image"    # [[Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/sourceforge/qrcode/exception/InvalidVersionInfoException;,
            Ljp/sourceforge/qrcode/exception/InvalidVersionException;
        }
    .end annotation

    .prologue
    .line 560
    const/16 v9, 0x12

    new-array v6, v9, [Z

    .line 561
    .local v6, "versionInformation":[Z
    const/16 v9, 0x12

    new-array v4, v9, [Ljp/sourceforge/qrcode/geom/Point;

    .line 563
    .local v4, "points":[Ljp/sourceforge/qrcode/geom/Point;
    new-instance v0, Ljp/sourceforge/qrcode/geom/Axis;

    const/4 v9, 0x1

    aget v9, p2, v9

    invoke-direct {v0, p1, v9}, Ljp/sourceforge/qrcode/geom/Axis;-><init>([II)V

    .line 564
    .local v0, "axis":Ljp/sourceforge/qrcode/geom/Axis;
    const/4 v9, 0x1

    aget-object v9, p0, v9

    invoke-virtual {v0, v9}, Ljp/sourceforge/qrcode/geom/Axis;->setOrigin(Ljp/sourceforge/qrcode/geom/Point;)V

    .line 566
    const/4 v8, 0x0

    .local v8, "y":I
    :goto_0
    const/4 v9, 0x6

    if-lt v8, v9, :cond_0

    .line 573
    sget-object v9, Ljp/sourceforge/qrcode/pattern/FinderPattern;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const v10, 0xff88888

    invoke-interface {v9, v4, v10}, Ljp/sourceforge/qrcode/util/DebugCanvas;->drawPoints([Ljp/sourceforge/qrcode/geom/Point;I)V

    .line 575
    const/4 v3, 0x0

    .line 577
    .local v3, "exactVersion":I
    :try_start_0
    invoke-static {v6}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->checkVersionInfo([Z)I
    :try_end_0
    .catch Ljp/sourceforge/qrcode/exception/InvalidVersionInfoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 598
    :goto_1
    return v3

    .line 567
    .end local v3    # "exactVersion":I
    :cond_0
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_2
    const/4 v9, 0x3

    if-lt v7, v9, :cond_1

    .line 566
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 568
    :cond_1
    add-int/lit8 v9, v7, -0x7

    add-int/lit8 v10, v8, -0x3

    invoke-virtual {v0, v9, v10}, Ljp/sourceforge/qrcode/geom/Axis;->translate(II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v5

    .line 569
    .local v5, "target":Ljp/sourceforge/qrcode/geom/Point;
    mul-int/lit8 v9, v8, 0x3

    add-int/2addr v9, v7

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v10

    aget-object v10, p3, v10

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v11

    aget-boolean v10, v10, v11

    aput-boolean v10, v6, v9

    .line 570
    mul-int/lit8 v9, v8, 0x3

    add-int/2addr v9, v7

    aput-object v5, v4, v9

    .line 567
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 578
    .end local v5    # "target":Ljp/sourceforge/qrcode/geom/Point;
    .end local v7    # "x":I
    .restart local v3    # "exactVersion":I
    :catch_0
    move-exception v1

    .line 579
    .local v1, "e":Ljp/sourceforge/qrcode/exception/InvalidVersionInfoException;
    sget-object v9, Ljp/sourceforge/qrcode/pattern/FinderPattern;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const-string v10, "Version info error. now retry with other place one."

    invoke-interface {v9, v10}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 580
    const/4 v9, 0x2

    aget-object v9, p0, v9

    invoke-virtual {v0, v9}, Ljp/sourceforge/qrcode/geom/Axis;->setOrigin(Ljp/sourceforge/qrcode/geom/Point;)V

    .line 581
    const/4 v9, 0x2

    aget v9, p2, v9

    invoke-virtual {v0, v9}, Ljp/sourceforge/qrcode/geom/Axis;->setModulePitch(I)V

    .line 583
    const/4 v7, 0x0

    .restart local v7    # "x":I
    :goto_3
    const/4 v9, 0x6

    if-lt v7, v9, :cond_2

    .line 590
    sget-object v9, Ljp/sourceforge/qrcode/pattern/FinderPattern;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const v10, 0xff88888

    invoke-interface {v9, v4, v10}, Ljp/sourceforge/qrcode/util/DebugCanvas;->drawPoints([Ljp/sourceforge/qrcode/geom/Point;I)V

    .line 593
    :try_start_1
    invoke-static {v6}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->checkVersionInfo([Z)I
    :try_end_1
    .catch Ljp/sourceforge/qrcode/exception/VersionInformationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_1

    .line 584
    :cond_2
    const/4 v8, 0x0

    :goto_4
    const/4 v9, 0x3

    if-lt v8, v9, :cond_3

    .line 583
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 585
    :cond_3
    add-int/lit8 v9, v7, -0x3

    add-int/lit8 v10, v8, -0x7

    invoke-virtual {v0, v9, v10}, Ljp/sourceforge/qrcode/geom/Axis;->translate(II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v5

    .line 586
    .restart local v5    # "target":Ljp/sourceforge/qrcode/geom/Point;
    mul-int/lit8 v9, v7, 0x3

    add-int/2addr v9, v8

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v10

    aget-object v10, p3, v10

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v11

    aget-boolean v10, v10, v11

    aput-boolean v10, v6, v9

    .line 587
    mul-int/lit8 v9, v8, 0x3

    add-int/2addr v9, v7

    aput-object v5, v4, v9

    .line 584
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 594
    .end local v5    # "target":Ljp/sourceforge/qrcode/geom/Point;
    :catch_1
    move-exception v2

    .line 595
    .local v2, "e2":Ljp/sourceforge/qrcode/exception/VersionInformationException;
    throw v2
.end method

.method static calcRoughVersion([Ljp/sourceforge/qrcode/geom/Point;[I)I
    .locals 9
    .param p0, "center"    # [Ljp/sourceforge/qrcode/geom/Point;
    .param p1, "width"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 545
    sget v1, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->DECIMAL_POINT:I

    .line 546
    .local v1, "dp":I
    new-instance v4, Ljp/sourceforge/qrcode/geom/Line;

    aget-object v5, p0, v7

    aget-object v6, p0, v8

    invoke-direct {v4, v5, v6}, Ljp/sourceforge/qrcode/geom/Line;-><init>(Ljp/sourceforge/qrcode/geom/Point;Ljp/sourceforge/qrcode/geom/Point;)V

    invoke-virtual {v4}, Ljp/sourceforge/qrcode/geom/Line;->getLength()I

    move-result v4

    shl-int v2, v4, v1

    .line 547
    .local v2, "lengthAdditionalLine":I
    aget v4, p1, v7

    aget v5, p1, v8

    add-int/2addr v4, v5

    shl-int/2addr v4, v1

    div-int/lit8 v0, v4, 0xe

    .line 548
    .local v0, "avarageWidth":I
    div-int v4, v2, v0

    add-int/lit8 v4, v4, -0xa

    div-int/lit8 v3, v4, 0x4

    .line 549
    .local v3, "roughVersion":I
    div-int v4, v2, v0

    add-int/lit8 v4, v4, -0xa

    rem-int/lit8 v4, v4, 0x4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 550
    add-int/lit8 v3, v3, 0x1

    .line 553
    :cond_0
    return v3
.end method

.method static cantNeighbor(Ljp/sourceforge/qrcode/geom/Line;Ljp/sourceforge/qrcode/geom/Line;)Z
    .locals 4
    .param p0, "line1"    # Ljp/sourceforge/qrcode/geom/Line;
    .param p1, "line2"    # Ljp/sourceforge/qrcode/geom/Line;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 282
    invoke-static {p0, p1}, Ljp/sourceforge/qrcode/geom/Line;->isCross(Ljp/sourceforge/qrcode/geom/Line;Ljp/sourceforge/qrcode/geom/Line;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/geom/Line;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v2

    invoke-virtual {v2}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v2

    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v3

    invoke-virtual {v3}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v2

    invoke-virtual {v2}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v2

    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v3

    invoke-virtual {v3}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static checkPattern([II)Z
    .locals 9
    .param p0, "buffer"    # [I
    .param p1, "pointer"    # I

    .prologue
    const/4 v8, 0x5

    .line 207
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    .line 209
    .local v3, "modelRatio":[I
    const/4 v0, 0x0

    .line 210
    .local v0, "baselength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v8, :cond_0

    .line 214
    sget v6, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->DECIMAL_POINT:I

    shl-int/2addr v0, v6

    .line 215
    div-int/lit8 v0, v0, 0x7

    .line 216
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v8, :cond_1

    .line 227
    const/4 v6, 0x1

    :goto_2
    return v6

    .line 211
    :cond_0
    aget v6, p0, v1

    add-int/2addr v0, v6

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_1
    aget v6, v3, v1

    mul-int/2addr v6, v0

    div-int/lit8 v7, v0, 0x2

    sub-int v2, v6, v7

    .line 218
    .local v2, "leastlength":I
    aget v6, v3, v1

    mul-int/2addr v6, v0

    div-int/lit8 v7, v0, 0x2

    add-int v4, v6, v7

    .line 222
    .local v4, "mostlength":I
    add-int v6, p1, v1

    add-int/lit8 v6, v6, 0x1

    rem-int/lit8 v6, v6, 0x5

    aget v6, p0, v6

    sget v7, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->DECIMAL_POINT:I

    shl-int v5, v6, v7

    .line 223
    .local v5, "targetlength":I
    if-lt v5, v2, :cond_2

    if-le v5, v4, :cond_3

    .line 224
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 216
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 207
    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x1
    .end array-data
.end method

.method static checkVersionInfo([Z)I
    .locals 7
    .param p0, "target"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/sourceforge/qrcode/exception/InvalidVersionInfoException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    .line 605
    const/4 v0, 0x0

    .line 606
    .local v0, "errorCount":I
    const/4 v2, 0x0

    .local v2, "versionBase":I
    :goto_0
    sget-object v3, Ljp/sourceforge/qrcode/pattern/FinderPattern;->VersionInfoBit:[I

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 614
    :cond_0
    if-gt v0, v6, :cond_5

    .line 615
    add-int/lit8 v3, v2, 0x7

    return v3

    .line 607
    :cond_1
    const/4 v0, 0x0

    .line 608
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v3, 0x12

    if-lt v1, v3, :cond_2

    .line 612
    if-le v0, v6, :cond_0

    .line 606
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 609
    :cond_2
    aget-boolean v5, p0, v1

    sget-object v3, Ljp/sourceforge/qrcode/pattern/FinderPattern;->VersionInfoBit:[I

    aget v3, v3, v2

    shr-int/2addr v3, v1

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v4, :cond_4

    move v3, v4

    :goto_2
    xor-int/2addr v3, v5

    if-eqz v3, :cond_3

    .line 610
    add-int/lit8 v0, v0, 0x1

    .line 608
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 609
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 617
    .end local v1    # "j":I
    :cond_5
    new-instance v3, Ljp/sourceforge/qrcode/exception/InvalidVersionInfoException;

    const-string v4, "Too many errors in version information"

    invoke-direct {v3, v4}, Ljp/sourceforge/qrcode/exception/InvalidVersionInfoException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static findFinderPattern([[Z)Ljp/sourceforge/qrcode/pattern/FinderPattern;
    .locals 13
    .param p0, "image"    # [[Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/sourceforge/qrcode/exception/FinderPatternNotFoundException;,
            Ljp/sourceforge/qrcode/exception/VersionInformationException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 39
    invoke-static {p0}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->findLineAcross([[Z)[Ljp/sourceforge/qrcode/geom/Line;

    move-result-object v7

    .line 40
    .local v7, "lineAcross":[Ljp/sourceforge/qrcode/geom/Line;
    invoke-static {v7}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->findLineCross([Ljp/sourceforge/qrcode/geom/Line;)[Ljp/sourceforge/qrcode/geom/Line;

    move-result-object v8

    .line 41
    .local v8, "lineCross":[Ljp/sourceforge/qrcode/geom/Line;
    const/4 v1, 0x0

    check-cast v1, [Ljp/sourceforge/qrcode/geom/Point;

    .line 43
    .local v1, "center":[Ljp/sourceforge/qrcode/geom/Point;
    :try_start_0
    invoke-static {v8}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getCenter([Ljp/sourceforge/qrcode/geom/Line;)[Ljp/sourceforge/qrcode/geom/Point;
    :try_end_0
    .catch Ljp/sourceforge/qrcode/exception/FinderPatternNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 47
    invoke-static {v1}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getAngle([Ljp/sourceforge/qrcode/geom/Point;)[I

    move-result-object v3

    .line 48
    .local v3, "sincos":[I
    invoke-static {v1, v3}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->sort([Ljp/sourceforge/qrcode/geom/Point;[I)[Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v1

    .line 49
    invoke-static {p0, v1, v3}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getWidth([[Z[Ljp/sourceforge/qrcode/geom/Point;[I)[I

    move-result-object v4

    .line 51
    .local v4, "width":[I
    const/4 v0, 0x3

    new-array v5, v0, [I

    aget v0, v4, v10

    sget v9, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->DECIMAL_POINT:I

    shl-int/2addr v0, v9

    div-int/lit8 v0, v0, 0x7

    aput v0, v5, v10

    .line 52
    aget v0, v4, v11

    sget v9, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->DECIMAL_POINT:I

    shl-int/2addr v0, v9

    div-int/lit8 v0, v0, 0x7

    aput v0, v5, v11

    .line 53
    aget v0, v4, v12

    sget v9, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->DECIMAL_POINT:I

    shl-int/2addr v0, v9

    div-int/lit8 v0, v0, 0x7

    aput v0, v5, v12

    .line 54
    .local v5, "moduleSize":[I
    invoke-static {v1, v4}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->calcRoughVersion([Ljp/sourceforge/qrcode/geom/Point;[I)I

    move-result v2

    .line 55
    .local v2, "version":I
    const/4 v0, 0x6

    if-le v2, v0, :cond_0

    .line 57
    :try_start_1
    invoke-static {v1, v3, v5, p0}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->calcExactVersion([Ljp/sourceforge/qrcode/geom/Point;[I[I[[Z)I
    :try_end_1
    .catch Ljp/sourceforge/qrcode/exception/VersionInformationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 64
    :cond_0
    :goto_0
    new-instance v0, Ljp/sourceforge/qrcode/pattern/FinderPattern;

    invoke-direct/range {v0 .. v5}, Ljp/sourceforge/qrcode/pattern/FinderPattern;-><init>([Ljp/sourceforge/qrcode/geom/Point;I[I[I[I)V

    return-object v0

    .line 44
    .end local v2    # "version":I
    .end local v3    # "sincos":[I
    .end local v4    # "width":[I
    .end local v5    # "moduleSize":[I
    :catch_0
    move-exception v6

    .line 45
    .local v6, "e":Ljp/sourceforge/qrcode/exception/FinderPatternNotFoundException;
    throw v6

    .line 58
    .end local v6    # "e":Ljp/sourceforge/qrcode/exception/FinderPatternNotFoundException;
    .restart local v2    # "version":I
    .restart local v3    # "sincos":[I
    .restart local v4    # "width":[I
    .restart local v5    # "moduleSize":[I
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static findLineAcross([[Z)[Ljp/sourceforge/qrcode/geom/Line;
    .locals 25
    .param p0, "image"    # [[Z

    .prologue
    .line 115
    const/4 v5, 0x0

    .line 116
    .local v5, "READ_HORIZONTAL":I
    const/4 v6, 0x1

    .line 118
    .local v6, "READ_VERTICAL":I
    move-object/from16 v0, p0

    array-length v14, v0

    .line 119
    .local v14, "imageWidth":I
    const/16 v23, 0x0

    aget-object v23, p0, v23

    move-object/from16 v0, v23

    array-length v13, v0

    .line 122
    .local v13, "imageHeight":I
    new-instance v8, Ljp/sourceforge/qrcode/geom/Point;

    invoke-direct {v8}, Ljp/sourceforge/qrcode/geom/Point;-><init>()V

    .line 123
    .local v8, "current":Ljp/sourceforge/qrcode/geom/Point;
    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    .line 126
    .local v18, "lineAcross":Ljava/util/Vector;
    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 127
    .local v17, "lengthBuffer":[I
    const/4 v7, 0x0

    .line 129
    .local v7, "bufferPointer":I
    const/4 v10, 0x0

    .line 130
    .local v10, "direction":I
    const/16 v16, 0x0

    .line 134
    .local v16, "lastElement":Z
    :goto_0
    invoke-virtual {v8}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v23

    aget-object v23, p0, v23

    invoke-virtual {v8}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v24

    aget-boolean v9, v23, v24

    .line 135
    .local v9, "currentElement":Z
    move/from16 v0, v16

    if-ne v9, v0, :cond_0

    .line 136
    aget v23, v17, v7

    add-int/lit8 v23, v23, 0x1

    aput v23, v17, v7

    .line 170
    :goto_1
    if-nez v10, :cond_8

    .line 171
    invoke-virtual {v8}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v23

    add-int/lit8 v24, v14, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    .line 172
    const/16 v23, 0x1

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    goto :goto_0

    .line 139
    :cond_0
    if-nez v9, :cond_1

    .line 140
    move-object/from16 v0, v17

    invoke-static {v0, v7}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->checkPattern([II)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 142
    if-nez v10, :cond_3

    .line 144
    invoke-virtual {v8}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v19

    .line 145
    .local v19, "x1":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_2
    const/16 v23, 0x5

    move/from16 v0, v23

    if-lt v15, v0, :cond_2

    .line 148
    invoke-virtual {v8}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v23

    add-int/lit8 v20, v23, -0x1

    .line 149
    .local v20, "x2":I
    invoke-virtual {v8}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v22

    .local v22, "y2":I
    move/from16 v21, v22

    .line 161
    .local v21, "y1":I
    :goto_3
    new-instance v23, Ljp/sourceforge/qrcode/geom/Line;

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Ljp/sourceforge/qrcode/geom/Line;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 164
    .end local v15    # "j":I
    .end local v19    # "x1":I
    .end local v20    # "x2":I
    .end local v21    # "y1":I
    .end local v22    # "y2":I
    :cond_1
    add-int/lit8 v23, v7, 0x1

    rem-int/lit8 v7, v23, 0x5

    .line 165
    const/16 v23, 0x1

    aput v23, v17, v7

    .line 166
    if-eqz v16, :cond_5

    const/16 v16, 0x0

    :goto_4
    goto :goto_1

    .line 146
    .restart local v15    # "j":I
    .restart local v19    # "x1":I
    :cond_2
    aget v23, v17, v15

    sub-int v19, v19, v23

    .line 145
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 152
    .end local v15    # "j":I
    .end local v19    # "x1":I
    :cond_3
    invoke-virtual {v8}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v20

    .restart local v20    # "x2":I
    move/from16 v19, v20

    .line 155
    .restart local v19    # "x1":I
    invoke-virtual {v8}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v21

    .line 156
    .restart local v21    # "y1":I
    const/4 v15, 0x0

    .restart local v15    # "j":I
    :goto_5
    const/16 v23, 0x5

    move/from16 v0, v23

    if-lt v15, v0, :cond_4

    .line 159
    invoke-virtual {v8}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v23

    add-int/lit8 v22, v23, -0x1

    .restart local v22    # "y2":I
    goto :goto_3

    .line 157
    .end local v22    # "y2":I
    :cond_4
    aget v23, v17, v15

    sub-int v21, v21, v23

    .line 156
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 166
    .end local v15    # "j":I
    .end local v19    # "x1":I
    .end local v20    # "x2":I
    .end local v21    # "y1":I
    :cond_5
    const/16 v16, 0x1

    goto :goto_4

    .line 174
    :cond_6
    invoke-virtual {v8}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v23

    add-int/lit8 v24, v13, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 175
    const/16 v23, 0x0

    invoke-virtual {v8}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Ljp/sourceforge/qrcode/geom/Point;->set(II)V

    .line 176
    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v17, v0

    goto/16 :goto_0

    .line 179
    :cond_7
    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Ljp/sourceforge/qrcode/geom/Point;->set(II)V

    .line 180
    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 181
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 185
    :cond_8
    invoke-virtual {v8}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v23

    add-int/lit8 v24, v13, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    .line 186
    const/16 v23, 0x0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    goto/16 :goto_0

    .line 187
    :cond_9
    invoke-virtual {v8}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v23

    add-int/lit8 v24, v14, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    .line 188
    invoke-virtual {v8}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Ljp/sourceforge/qrcode/geom/Point;->set(II)V

    .line 189
    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 132
    goto/16 :goto_0

    .line 197
    :cond_a
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v11, v0, [Ljp/sourceforge/qrcode/geom/Line;

    .line 199
    .local v11, "foundLines":[Ljp/sourceforge/qrcode/geom/Line;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_6
    array-length v0, v11

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v12, v0, :cond_b

    .line 202
    sget-object v23, Ljp/sourceforge/qrcode/pattern/FinderPattern;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const v24, 0xbbffbb

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v0, v11, v1}, Ljp/sourceforge/qrcode/util/DebugCanvas;->drawLines([Ljp/sourceforge/qrcode/geom/Line;I)V

    .line 203
    return-object v11

    .line 200
    :cond_b
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljp/sourceforge/qrcode/geom/Line;

    aput-object v23, v11, v12

    .line 199
    add-int/lit8 v12, v12, 0x1

    goto :goto_6
.end method

.method static findLineCross([Ljp/sourceforge/qrcode/geom/Line;)[Ljp/sourceforge/qrcode/geom/Line;
    .locals 10
    .param p0, "lineAcross"    # [Ljp/sourceforge/qrcode/geom/Line;

    .prologue
    .line 234
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 235
    .local v1, "crossLines":Ljava/util/Vector;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 236
    .local v7, "lineNeighbor":Ljava/util/Vector;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 238
    .local v6, "lineCandidate":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, p0

    if-lt v3, v8, :cond_0

    .line 241
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-lt v3, v8, :cond_1

    .line 274
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v2, v8, [Ljp/sourceforge/qrcode/geom/Line;

    .line 275
    .local v2, "foundLines":[Ljp/sourceforge/qrcode/geom/Line;
    const/4 v3, 0x0

    :goto_2
    array-length v8, v2

    if-lt v3, v8, :cond_8

    .line 278
    return-object v2

    .line 239
    .end local v2    # "foundLines":[Ljp/sourceforge/qrcode/geom/Line;
    :cond_0
    aget-object v8, p0, v3

    invoke-virtual {v6, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 238
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {v7}, Ljava/util/Vector;->removeAllElements()V

    .line 243
    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 244
    add-int/lit8 v4, v3, 0x1

    .local v4, "j":I
    :goto_3
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v4, v8, :cond_3

    .line 241
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 245
    :cond_3
    invoke-virtual {v7}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljp/sourceforge/qrcode/geom/Line;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljp/sourceforge/qrcode/geom/Line;

    invoke-static {v8, v9}, Ljp/sourceforge/qrcode/geom/Line;->isNeighbor(Ljp/sourceforge/qrcode/geom/Line;Ljp/sourceforge/qrcode/geom/Line;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 246
    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 247
    invoke-virtual {v7}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/sourceforge/qrcode/geom/Line;

    .line 248
    .local v0, "compareLine":Ljp/sourceforge/qrcode/geom/Line;
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x5

    invoke-virtual {v0}, Ljp/sourceforge/qrcode/geom/Line;->getLength()I

    move-result v9

    if-le v8, v9, :cond_4

    .line 249
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_4

    .line 250
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 251
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_4
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v5, v8, :cond_5

    .line 244
    .end local v0    # "compareLine":Ljp/sourceforge/qrcode/geom/Line;
    .end local v5    # "k":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 252
    .restart local v0    # "compareLine":Ljp/sourceforge/qrcode/geom/Line;
    .restart local v5    # "k":I
    :cond_5
    invoke-virtual {v7, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 256
    .end local v0    # "compareLine":Ljp/sourceforge/qrcode/geom/Line;
    .end local v5    # "k":I
    :cond_6
    invoke-virtual {v7}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljp/sourceforge/qrcode/geom/Line;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljp/sourceforge/qrcode/geom/Line;

    invoke-static {v8, v9}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->cantNeighbor(Ljp/sourceforge/qrcode/geom/Line;Ljp/sourceforge/qrcode/geom/Line;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 257
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_4

    .line 258
    :cond_7
    invoke-virtual {v7}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/sourceforge/qrcode/geom/Line;

    .line 263
    .restart local v0    # "compareLine":Ljp/sourceforge/qrcode/geom/Line;
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x6

    invoke-virtual {v0}, Ljp/sourceforge/qrcode/geom/Line;->getLength()I

    move-result v9

    if-le v8, v9, :cond_2

    .line 264
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 265
    const/4 v5, 0x0

    .restart local v5    # "k":I
    :goto_5
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 266
    invoke-virtual {v7, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 265
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 276
    .end local v0    # "compareLine":Ljp/sourceforge/qrcode/geom/Line;
    .end local v4    # "j":I
    .end local v5    # "k":I
    .restart local v2    # "foundLines":[Ljp/sourceforge/qrcode/geom/Line;
    :cond_8
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljp/sourceforge/qrcode/geom/Line;

    aput-object v8, v2, v3

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method

.method static getAngle([Ljp/sourceforge/qrcode/geom/Point;)[I
    .locals 13
    .param p0, "centers"    # [Ljp/sourceforge/qrcode/geom/Point;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 290
    const/4 v7, 0x3

    new-array v0, v7, [Ljp/sourceforge/qrcode/geom/Line;

    .line 292
    .local v0, "additionalLine":[Ljp/sourceforge/qrcode/geom/Line;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v0

    if-lt v2, v7, :cond_0

    .line 297
    invoke-static {v0}, Ljp/sourceforge/qrcode/geom/Line;->getLongest([Ljp/sourceforge/qrcode/geom/Line;)Ljp/sourceforge/qrcode/geom/Line;

    move-result-object v5

    .line 298
    .local v5, "remoteLine":Ljp/sourceforge/qrcode/geom/Line;
    new-instance v3, Ljp/sourceforge/qrcode/geom/Point;

    invoke-direct {v3}, Ljp/sourceforge/qrcode/geom/Point;-><init>()V

    .line 299
    .local v3, "originPoint":Ljp/sourceforge/qrcode/geom/Point;
    const/4 v2, 0x0

    :goto_1
    array-length v7, p0

    if-lt v2, v7, :cond_1

    .line 306
    :goto_2
    sget-object v7, Ljp/sourceforge/qrcode/pattern/FinderPattern;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "originPoint is: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 307
    new-instance v6, Ljp/sourceforge/qrcode/geom/Point;

    invoke-direct {v6}, Ljp/sourceforge/qrcode/geom/Point;-><init>()V

    .line 311
    .local v6, "remotePoint":Ljp/sourceforge/qrcode/geom/Point;
    invoke-virtual {v3}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v7

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v10

    invoke-virtual {v10}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v10

    if-gt v7, v10, :cond_3

    move v7, v8

    .line 312
    :goto_3
    invoke-virtual {v3}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v10

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v11

    invoke-virtual {v11}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v11

    if-gt v10, v11, :cond_4

    move v10, v8

    :goto_4
    and-int/2addr v7, v10

    if-eqz v7, :cond_6

    .line 313
    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v7

    invoke-virtual {v7}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v7

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v10

    invoke-virtual {v10}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v10

    if-ge v7, v10, :cond_5

    .line 314
    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v6

    .line 335
    :goto_5
    new-instance v7, Ljp/sourceforge/qrcode/geom/Line;

    invoke-direct {v7, v3, v6}, Ljp/sourceforge/qrcode/geom/Line;-><init>(Ljp/sourceforge/qrcode/geom/Point;Ljp/sourceforge/qrcode/geom/Point;)V

    invoke-virtual {v7}, Ljp/sourceforge/qrcode/geom/Line;->getLength()I

    move-result v4

    .line 337
    .local v4, "r":I
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 338
    .local v1, "angle":[I
    invoke-virtual {v6}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v7

    invoke-virtual {v3}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v10

    sub-int/2addr v7, v10

    sget v10, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->DECIMAL_POINT:I

    shl-int/2addr v7, v10

    div-int/2addr v7, v4

    aput v7, v1, v9

    .line 339
    invoke-virtual {v6}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v7

    invoke-virtual {v3}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v9

    sub-int/2addr v7, v9

    sget v9, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->DECIMAL_POINT:I

    shl-int/2addr v7, v9

    div-int/2addr v7, v4

    aput v7, v1, v8

    .line 341
    return-object v1

    .line 293
    .end local v1    # "angle":[I
    .end local v3    # "originPoint":Ljp/sourceforge/qrcode/geom/Point;
    .end local v4    # "r":I
    .end local v5    # "remoteLine":Ljp/sourceforge/qrcode/geom/Line;
    .end local v6    # "remotePoint":Ljp/sourceforge/qrcode/geom/Point;
    :cond_0
    new-instance v7, Ljp/sourceforge/qrcode/geom/Line;

    aget-object v10, p0, v2

    .line 294
    add-int/lit8 v11, v2, 0x1

    array-length v12, v0

    rem-int/2addr v11, v12

    aget-object v11, p0, v11

    invoke-direct {v7, v10, v11}, Ljp/sourceforge/qrcode/geom/Line;-><init>(Ljp/sourceforge/qrcode/geom/Point;Ljp/sourceforge/qrcode/geom/Point;)V

    .line 293
    aput-object v7, v0, v2

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 300
    .restart local v3    # "originPoint":Ljp/sourceforge/qrcode/geom/Point;
    .restart local v5    # "remoteLine":Ljp/sourceforge/qrcode/geom/Line;
    :cond_1
    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v7

    aget-object v10, p0, v2

    invoke-virtual {v7, v10}, Ljp/sourceforge/qrcode/geom/Point;->equals(Ljp/sourceforge/qrcode/geom/Point;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 301
    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v7

    aget-object v10, p0, v2

    invoke-virtual {v7, v10}, Ljp/sourceforge/qrcode/geom/Point;->equals(Ljp/sourceforge/qrcode/geom/Point;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 302
    aget-object v3, p0, v2

    .line 303
    goto/16 :goto_2

    .line 299
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .restart local v6    # "remotePoint":Ljp/sourceforge/qrcode/geom/Point;
    :cond_3
    move v7, v9

    .line 311
    goto/16 :goto_3

    :cond_4
    move v10, v9

    .line 312
    goto :goto_4

    .line 316
    :cond_5
    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v6

    goto :goto_5

    .line 317
    :cond_6
    invoke-virtual {v3}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v7

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v10

    invoke-virtual {v10}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v10

    if-lt v7, v10, :cond_7

    move v7, v8

    .line 318
    :goto_6
    invoke-virtual {v3}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v10

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v11

    invoke-virtual {v11}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v11

    if-lt v10, v11, :cond_8

    move v10, v8

    :goto_7
    and-int/2addr v7, v10

    if-eqz v7, :cond_a

    .line 319
    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v7

    invoke-virtual {v7}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v7

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v10

    invoke-virtual {v10}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v10

    if-ge v7, v10, :cond_9

    .line 320
    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v6

    goto/16 :goto_5

    :cond_7
    move v7, v9

    .line 317
    goto :goto_6

    :cond_8
    move v10, v9

    .line 318
    goto :goto_7

    .line 322
    :cond_9
    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v6

    goto/16 :goto_5

    .line 323
    :cond_a
    invoke-virtual {v3}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v7

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v10

    invoke-virtual {v10}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v10

    if-lt v7, v10, :cond_b

    move v7, v8

    .line 324
    :goto_8
    invoke-virtual {v3}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v10

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v11

    invoke-virtual {v11}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v11

    if-lt v10, v11, :cond_c

    move v10, v8

    :goto_9
    and-int/2addr v7, v10

    if-eqz v7, :cond_e

    .line 325
    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v7

    invoke-virtual {v7}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v7

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v10

    invoke-virtual {v10}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v10

    if-ge v7, v10, :cond_d

    .line 326
    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v6

    goto/16 :goto_5

    :cond_b
    move v7, v9

    .line 323
    goto :goto_8

    :cond_c
    move v10, v9

    .line 324
    goto :goto_9

    .line 328
    :cond_d
    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v6

    goto/16 :goto_5

    .line 330
    :cond_e
    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v7

    invoke-virtual {v7}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v7

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v10

    invoke-virtual {v10}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v10

    if-ge v7, v10, :cond_f

    .line 331
    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v6

    goto/16 :goto_5

    .line 333
    :cond_f
    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v6

    goto/16 :goto_5
.end method

.method static getCenter([Ljp/sourceforge/qrcode/geom/Line;)[Ljp/sourceforge/qrcode/geom/Point;
    .locals 10
    .param p0, "crossLines"    # [Ljp/sourceforge/qrcode/geom/Line;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/sourceforge/qrcode/exception/FinderPatternNotFoundException;
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 347
    .local v0, "centers":Ljava/util/Vector;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    if-lt v4, v8, :cond_0

    .line 367
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v3, v8, [Ljp/sourceforge/qrcode/geom/Point;

    .line 369
    .local v3, "foundPoints":[Ljp/sourceforge/qrcode/geom/Point;
    const/4 v4, 0x0

    :goto_1
    array-length v8, v3

    if-lt v4, v8, :cond_4

    .line 375
    array-length v8, v3

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    .line 376
    sget-object v8, Ljp/sourceforge/qrcode/pattern/FinderPattern;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const v9, 0xff88888

    invoke-interface {v8, v3, v9}, Ljp/sourceforge/qrcode/util/DebugCanvas;->drawPolygon([Ljp/sourceforge/qrcode/geom/Point;I)V

    .line 377
    return-object v3

    .line 348
    .end local v3    # "foundPoints":[Ljp/sourceforge/qrcode/geom/Point;
    :cond_0
    aget-object v1, p0, v4

    .line 349
    .local v1, "compareLine":Ljp/sourceforge/qrcode/geom/Line;
    add-int/lit8 v5, v4, 0x1

    .local v5, "j":I
    :goto_2
    array-length v8, p0

    if-lt v5, v8, :cond_1

    .line 347
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 350
    :cond_1
    aget-object v2, p0, v5

    .line 351
    .local v2, "comparedLine":Ljp/sourceforge/qrcode/geom/Line;
    invoke-static {v1, v2}, Ljp/sourceforge/qrcode/geom/Line;->isCross(Ljp/sourceforge/qrcode/geom/Line;Ljp/sourceforge/qrcode/geom/Line;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 352
    const/4 v6, 0x0

    .line 353
    .local v6, "x":I
    const/4 v7, 0x0

    .line 354
    .local v7, "y":I
    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Line;->isHorizontal()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 355
    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Line;->getCenter()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v8

    invoke-virtual {v8}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v6

    .line 356
    invoke-virtual {v2}, Ljp/sourceforge/qrcode/geom/Line;->getCenter()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v8

    invoke-virtual {v8}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v7

    .line 362
    :goto_3
    new-instance v8, Ljp/sourceforge/qrcode/geom/Point;

    invoke-direct {v8, v6, v7}, Ljp/sourceforge/qrcode/geom/Point;-><init>(II)V

    invoke-virtual {v0, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 349
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 359
    .restart local v6    # "x":I
    .restart local v7    # "y":I
    :cond_3
    invoke-virtual {v2}, Ljp/sourceforge/qrcode/geom/Line;->getCenter()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v8

    invoke-virtual {v8}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v6

    .line 360
    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Line;->getCenter()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v8

    invoke-virtual {v8}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v7

    goto :goto_3

    .line 370
    .end local v1    # "compareLine":Ljp/sourceforge/qrcode/geom/Line;
    .end local v2    # "comparedLine":Ljp/sourceforge/qrcode/geom/Line;
    .end local v5    # "j":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    .restart local v3    # "foundPoints":[Ljp/sourceforge/qrcode/geom/Point;
    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljp/sourceforge/qrcode/geom/Point;

    aput-object v8, v3, v4

    .line 369
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 380
    :cond_5
    new-instance v8, Ljp/sourceforge/qrcode/exception/FinderPatternNotFoundException;

    const-string v9, "Invalid number of Finder Pattern detected"

    invoke-direct {v8, v9}, Ljp/sourceforge/qrcode/exception/FinderPatternNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method static getPointAtSide([Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;
    .locals 8
    .param p0, "points"    # [Ljp/sourceforge/qrcode/geom/Point;
    .param p1, "side1"    # I
    .param p2, "side2"    # I

    .prologue
    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 435
    new-instance v1, Ljp/sourceforge/qrcode/geom/Point;

    invoke-direct {v1}, Ljp/sourceforge/qrcode/geom/Point;-><init>()V

    .line 436
    .local v1, "sidePoint":Ljp/sourceforge/qrcode/geom/Point;
    if-eq p1, v6, :cond_0

    if-ne p2, v6, :cond_3

    :cond_0
    move v2, v4

    .line 437
    .local v2, "x":I
    :goto_0
    if-eq p1, v7, :cond_1

    if-ne p2, v7, :cond_2

    :cond_1
    move v3, v4

    .line 438
    .local v3, "y":I
    :cond_2
    new-instance v1, Ljp/sourceforge/qrcode/geom/Point;

    .end local v1    # "sidePoint":Ljp/sourceforge/qrcode/geom/Point;
    invoke-direct {v1, v2, v3}, Ljp/sourceforge/qrcode/geom/Point;-><init>(II)V

    .line 440
    .restart local v1    # "sidePoint":Ljp/sourceforge/qrcode/geom/Point;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p0

    if-lt v0, v4, :cond_4

    .line 512
    return-object v1

    .end local v0    # "i":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_3
    move v2, v3

    .line 436
    goto :goto_0

    .line 441
    .restart local v0    # "i":I
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_4
    packed-switch p1, :pswitch_data_0

    .line 440
    :cond_5
    :goto_2
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 443
    :pswitch_1
    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v4

    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 444
    aget-object v1, p0, v0

    goto :goto_2

    .line 446
    :cond_6
    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v4

    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 447
    if-ne p2, v7, :cond_7

    .line 448
    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v4

    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 449
    aget-object v1, p0, v0

    goto :goto_2

    .line 453
    :cond_7
    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v4

    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v5

    if-le v4, v5, :cond_5

    .line 454
    aget-object v1, p0, v0

    .line 458
    goto :goto_2

    .line 460
    :pswitch_2
    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v4

    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 461
    aget-object v1, p0, v0

    goto :goto_2

    .line 463
    :cond_8
    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v4

    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 464
    if-ne p2, v6, :cond_9

    .line 465
    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v4

    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 466
    aget-object v1, p0, v0

    goto :goto_2

    .line 470
    :cond_9
    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v4

    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v5

    if-le v4, v5, :cond_5

    .line 471
    aget-object v1, p0, v0

    .line 475
    goto :goto_2

    .line 477
    :pswitch_3
    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v4

    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v5

    if-le v4, v5, :cond_a

    .line 478
    aget-object v1, p0, v0

    goto/16 :goto_2

    .line 480
    :cond_a
    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v4

    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 481
    if-ne p2, v7, :cond_b

    .line 482
    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v4

    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 483
    aget-object v1, p0, v0

    goto/16 :goto_2

    .line 487
    :cond_b
    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v4

    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v5

    if-le v4, v5, :cond_5

    .line 488
    aget-object v1, p0, v0

    .line 492
    goto/16 :goto_2

    .line 494
    :pswitch_4
    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v4

    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v5

    if-le v4, v5, :cond_c

    .line 495
    aget-object v1, p0, v0

    goto/16 :goto_2

    .line 497
    :cond_c
    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v4

    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 498
    if-ne p2, v6, :cond_d

    .line 499
    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v4

    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 500
    aget-object v1, p0, v0

    goto/16 :goto_2

    .line 504
    :cond_d
    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v4

    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v5

    if-le v4, v5, :cond_5

    .line 505
    aget-object v1, p0, v0

    goto/16 :goto_2

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method static getURQuadrant([I)I
    .locals 4
    .param p0, "angle"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 420
    aget v1, p0, v3

    .line 421
    .local v1, "sin":I
    aget v0, p0, v2

    .line 422
    .local v0, "cos":I
    if-ltz v1, :cond_0

    if-lez v0, :cond_0

    .line 431
    :goto_0
    return v2

    .line 424
    :cond_0
    if-lez v1, :cond_1

    if-gtz v0, :cond_1

    .line 425
    const/4 v2, 0x2

    goto :goto_0

    .line 426
    :cond_1
    if-gtz v1, :cond_2

    if-gez v0, :cond_2

    .line 427
    const/4 v2, 0x3

    goto :goto_0

    .line 428
    :cond_2
    if-gez v1, :cond_3

    if-ltz v0, :cond_3

    .line 429
    const/4 v2, 0x4

    goto :goto_0

    :cond_3
    move v2, v3

    .line 431
    goto :goto_0
.end method

.method static getWidth([[Z[Ljp/sourceforge/qrcode/geom/Point;[I)[I
    .locals 8
    .param p0, "image"    # [[Z
    .param p1, "centers"    # [Ljp/sourceforge/qrcode/geom/Point;
    .param p2, "sincos"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 518
    new-array v4, v7, [I

    .line 520
    .local v4, "width":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v7, :cond_0

    .line 541
    return-object v4

    .line 521
    :cond_0
    const/4 v0, 0x0

    .line 523
    .local v0, "flag":Z
    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v5

    .line 524
    .local v5, "y":I
    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v2

    .local v2, "lx":I
    :goto_1
    if-gez v2, :cond_3

    .line 531
    :cond_1
    const/4 v0, 0x0

    .line 532
    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v3

    .local v3, "rx":I
    :goto_2
    array-length v6, p0

    if-lt v3, v6, :cond_5

    .line 539
    :cond_2
    sub-int v6, v3, v2

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v1

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 525
    .end local v3    # "rx":I
    :cond_3
    aget-object v6, p0, v2

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_4

    .line 526
    add-int/lit8 v6, v2, -0x1

    aget-object v6, p0, v6

    aget-boolean v6, v6, v5

    if-nez v6, :cond_4

    .line 527
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 524
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 533
    .restart local v3    # "rx":I
    :cond_5
    aget-object v6, p0, v3

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_6

    .line 534
    add-int/lit8 v6, v3, 0x1

    aget-object v6, p0, v6

    aget-boolean v6, v6, v5

    if-nez v6, :cond_6

    .line 535
    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 532
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method static sort([Ljp/sourceforge/qrcode/geom/Point;[I)[Ljp/sourceforge/qrcode/geom/Point;
    .locals 8
    .param p0, "centers"    # [Ljp/sourceforge/qrcode/geom/Point;
    .param p1, "angle"    # [I

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 386
    const/4 v3, 0x3

    new-array v2, v3, [Ljp/sourceforge/qrcode/geom/Point;

    .line 388
    .local v2, "sortedCenters":[Ljp/sourceforge/qrcode/geom/Point;
    invoke-static {p1}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getURQuadrant([I)I

    move-result v1

    .line 389
    .local v1, "quadrant":I
    packed-switch v1, :pswitch_data_0

    .line 409
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 416
    return-object v2

    .line 391
    .end local v0    # "i":I
    :pswitch_0
    invoke-static {p0, v5, v6}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getPointAtSide([Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v3

    aput-object v3, v2, v5

    .line 392
    invoke-static {p0, v6, v4}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getPointAtSide([Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v3

    aput-object v3, v2, v6

    goto :goto_0

    .line 395
    :pswitch_1
    invoke-static {p0, v6, v4}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getPointAtSide([Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v3

    aput-object v3, v2, v5

    .line 396
    invoke-static {p0, v7, v4}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getPointAtSide([Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v3

    aput-object v3, v2, v6

    goto :goto_0

    .line 399
    :pswitch_2
    invoke-static {p0, v4, v7}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getPointAtSide([Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v3

    aput-object v3, v2, v5

    .line 400
    invoke-static {p0, v5, v7}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getPointAtSide([Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v3

    aput-object v3, v2, v6

    goto :goto_0

    .line 403
    :pswitch_3
    invoke-static {p0, v7, v5}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getPointAtSide([Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v3

    aput-object v3, v2, v5

    .line 404
    invoke-static {p0, v6, v5}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getPointAtSide([Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v3

    aput-object v3, v2, v6

    goto :goto_0

    .line 410
    .restart local v0    # "i":I
    :cond_0
    aget-object v3, p0, v0

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Ljp/sourceforge/qrcode/geom/Point;->equals(Ljp/sourceforge/qrcode/geom/Point;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 411
    aget-object v3, p0, v0

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Ljp/sourceforge/qrcode/geom/Point;->equals(Ljp/sourceforge/qrcode/geom/Point;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 412
    const/4 v3, 0x0

    aget-object v4, p0, v0

    aput-object v4, v2, v3

    .line 409
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 389
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getAngle()[I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Ljp/sourceforge/qrcode/pattern/FinderPattern;->sincos:[I

    return-object v0
.end method

.method public getCenter(I)Ljp/sourceforge/qrcode/geom/Point;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 80
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 81
    iget-object v0, p0, Ljp/sourceforge/qrcode/pattern/FinderPattern;->center:[Ljp/sourceforge/qrcode/geom/Point;

    aget-object v0, v0, p1

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCenter()[Ljp/sourceforge/qrcode/geom/Point;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ljp/sourceforge/qrcode/pattern/FinderPattern;->center:[Ljp/sourceforge/qrcode/geom/Point;

    return-object v0
.end method

.method public getModuleSize()I
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Ljp/sourceforge/qrcode/pattern/FinderPattern;->moduleSize:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getModuleSize(I)I
    .locals 1
    .param p1, "place"    # I

    .prologue
    .line 102
    iget-object v0, p0, Ljp/sourceforge/qrcode/pattern/FinderPattern;->moduleSize:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSqrtNumModules()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Ljp/sourceforge/qrcode/pattern/FinderPattern;->version:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Ljp/sourceforge/qrcode/pattern/FinderPattern;->version:I

    return v0
.end method

.method public getWidth(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 87
    iget-object v0, p0, Ljp/sourceforge/qrcode/pattern/FinderPattern;->width:[I

    aget v0, v0, p1

    return v0
.end method
