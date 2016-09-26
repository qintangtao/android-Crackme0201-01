.class public Ljp/sourceforge/qrcode/reader/QRCodeImageReader;
.super Ljava/lang/Object;
.source "QRCodeImageReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/sourceforge/qrcode/reader/QRCodeImageReader$ModulePitch;
    }
.end annotation


# static fields
.field public static DECIMAL_POINT:I = 0x0

.field public static final POINT_DARK:Z = true

.field public static final POINT_LIGHT:Z


# instance fields
.field bitmap:[[Z

.field canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

.field samplingGrid:Ljp/sourceforge/qrcode/geom/SamplingGrid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x15

    sput v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->DECIMAL_POINT:I

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Ljp/sourceforge/qrcode/QRCodeDecoder;->getCanvas()Ljp/sourceforge/qrcode/util/DebugCanvas;

    move-result-object v0

    iput-object v0, p0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    .line 36
    return-void
.end method


# virtual methods
.method applyCrossMaskingMedianFilter([[ZI)[[Z
    .locals 8
    .param p1, "image"    # [[Z
    .param p2, "threshold"    # I

    .prologue
    const/4 v7, 0x0

    .line 70
    array-length v5, p1

    aget-object v6, p1, v7

    array-length v6, v6

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    .line 73
    .local v1, "filteredMatrix":[[Z
    const/4 v4, 0x2

    .local v4, "y":I
    :goto_0
    aget-object v5, p1, v7

    array-length v5, v5

    add-int/lit8 v5, v5, -0x2

    if-lt v4, v5, :cond_0

    .line 90
    return-object v1

    .line 74
    :cond_0
    const/4 v3, 0x2

    .local v3, "x":I
    :goto_1
    array-length v5, p1

    add-int/lit8 v5, v5, -0x2

    if-lt v3, v5, :cond_1

    .line 73
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 76
    :cond_1
    const/4 v2, 0x0

    .line 77
    .local v2, "numPointDark":I
    const/4 v0, -0x2

    .local v0, "f":I
    :goto_2
    const/4 v5, 0x3

    if-lt v0, v5, :cond_3

    .line 85
    if-le v2, p2, :cond_2

    .line 86
    aget-object v5, v1, v3

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    .line 74
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 78
    :cond_3
    add-int v5, v3, v0

    aget-object v5, p1, v5

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_4

    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 81
    :cond_4
    aget-object v5, p1, v3

    add-int v6, v4, v0

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_5

    .line 82
    add-int/lit8 v2, v2, 0x1

    .line 77
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method applyMedianFilter([[ZI)[[Z
    .locals 10
    .param p1, "image"    # [[Z
    .param p2, "threshold"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 48
    array-length v6, p1

    aget-object v7, p1, v8

    array-length v7, v7

    filled-new-array {v6, v7}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    .line 51
    .local v0, "filteredMatrix":[[Z
    const/4 v5, 0x1

    .local v5, "y":I
    :goto_0
    aget-object v6, p1, v8

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_0

    .line 67
    return-object v0

    .line 52
    :cond_0
    const/4 v4, 0x1

    .local v4, "x":I
    :goto_1
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    if-lt v4, v6, :cond_1

    .line 51
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 54
    :cond_1
    const/4 v3, 0x0

    .line 55
    .local v3, "numPointDark":I
    const/4 v2, -0x1

    .local v2, "fy":I
    :goto_2
    if-lt v2, v9, :cond_3

    .line 62
    if-le v3, p2, :cond_2

    .line 63
    aget-object v6, v0, v4

    const/4 v7, 0x1

    aput-boolean v7, v6, v5

    .line 52
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 56
    :cond_3
    const/4 v1, -0x1

    .local v1, "fx":I
    :goto_3
    if-lt v1, v9, :cond_4

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 57
    :cond_4
    add-int v6, v4, v1

    aget-object v6, p1, v6

    add-int v7, v5, v2

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_5

    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 56
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method filterImage([[I)[[Z
    .locals 1
    .param p1, "image"    # [[I

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->imageToGrayScale([[I)V

    .line 94
    invoke-virtual {p0, p1}, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->grayScaleToBitmap([[I)[[Z

    move-result-object v0

    .line 95
    .local v0, "bitmap":[[Z
    return-object v0
.end method

.method getAreaModulePitch(Ljp/sourceforge/qrcode/geom/Point;Ljp/sourceforge/qrcode/geom/Point;I)I
    .locals 4
    .param p1, "start"    # Ljp/sourceforge/qrcode/geom/Point;
    .param p2, "end"    # Ljp/sourceforge/qrcode/geom/Point;
    .param p3, "logicalDistance"    # I

    .prologue
    .line 472
    new-instance v2, Ljp/sourceforge/qrcode/geom/Line;

    invoke-direct {v2, p1, p2}, Ljp/sourceforge/qrcode/geom/Line;-><init>(Ljp/sourceforge/qrcode/geom/Point;Ljp/sourceforge/qrcode/geom/Point;)V

    .line 473
    .local v2, "tempLine":Ljp/sourceforge/qrcode/geom/Line;
    invoke-virtual {v2}, Ljp/sourceforge/qrcode/geom/Line;->getLength()I

    move-result v1

    .line 474
    .local v1, "realDistance":I
    sget v3, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->DECIMAL_POINT:I

    shl-int v3, v1, v3

    div-int v0, v3, p3

    .line 475
    .local v0, "modulePitch":I
    return v0
.end method

.method getMiddleBrightnessPerArea([[I)[[I
    .locals 14
    .param p1, "image"    # [[I

    .prologue
    .line 130
    const/4 v8, 0x4

    .line 132
    .local v8, "numSqrtArea":I
    array-length v10, p1

    div-int/lit8 v1, v10, 0x4

    .line 133
    .local v1, "areaWidth":I
    const/4 v10, 0x0

    aget-object v10, p1, v10

    array-length v10, v10

    div-int/lit8 v0, v10, 0x4

    .line 134
    .local v0, "areaHeight":I
    const/4 v10, 0x4

    const/4 v11, 0x4

    const/4 v12, 0x2

    filled-new-array {v10, v11, v12}, [I

    move-result-object v10

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[[I

    .line 135
    .local v7, "minmax":[[[I
    const/4 v3, 0x0

    .local v3, "ay":I
    :goto_0
    const/4 v10, 0x4

    if-lt v3, v10, :cond_0

    .line 148
    const/4 v10, 0x4

    const/4 v11, 0x4

    filled-new-array {v10, v11}, [I

    move-result-object v10

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    .line 149
    .local v6, "middle":[[I
    const/4 v3, 0x0

    :goto_1
    const/4 v10, 0x4

    if-lt v3, v10, :cond_6

    .line 158
    return-object v6

    .line 136
    .end local v6    # "middle":[[I
    :cond_0
    const/4 v2, 0x0

    .local v2, "ax":I
    :goto_2
    const/4 v10, 0x4

    if-lt v2, v10, :cond_1

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    :cond_1
    aget-object v10, v7, v2

    aget-object v10, v10, v3

    const/4 v11, 0x0

    const/16 v12, 0xff

    aput v12, v10, v11

    .line 138
    const/4 v5, 0x0

    .local v5, "dy":I
    :goto_3
    if-lt v5, v0, :cond_2

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 139
    :cond_2
    const/4 v4, 0x0

    .local v4, "dx":I
    :goto_4
    if-lt v4, v1, :cond_3

    .line 138
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 140
    :cond_3
    mul-int v10, v1, v2

    add-int/2addr v10, v4

    aget-object v10, p1, v10

    mul-int v11, v0, v3

    add-int/2addr v11, v5

    aget v9, v10, v11

    .line 141
    .local v9, "target":I
    aget-object v10, v7, v2

    aget-object v10, v10, v3

    const/4 v11, 0x0

    aget v10, v10, v11

    if-ge v9, v10, :cond_4

    aget-object v10, v7, v2

    aget-object v10, v10, v3

    const/4 v11, 0x0

    aput v9, v10, v11

    .line 142
    :cond_4
    aget-object v10, v7, v2

    aget-object v10, v10, v3

    const/4 v11, 0x1

    aget v10, v10, v11

    if-le v9, v10, :cond_5

    aget-object v10, v7, v2

    aget-object v10, v10, v3

    const/4 v11, 0x1

    aput v9, v10, v11

    .line 139
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 150
    .end local v2    # "ax":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v9    # "target":I
    .restart local v6    # "middle":[[I
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "ax":I
    :goto_5
    const/4 v10, 0x4

    if-lt v2, v10, :cond_7

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 151
    :cond_7
    aget-object v10, v6, v2

    aget-object v11, v7, v2

    aget-object v11, v11, v3

    const/4 v12, 0x0

    aget v11, v11, v12

    aget-object v12, v7, v2

    aget-object v12, v12, v3

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    aput v11, v10, v3

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method getQRCodeMatrix([[ZLjp/sourceforge/qrcode/geom/SamplingGrid;)[[Z
    .locals 25
    .param p1, "image"    # [[Z
    .param p2, "gridLines"    # Ljp/sourceforge/qrcode/geom/SamplingGrid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 482
    invoke-virtual/range {p2 .. p2}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->getTotalWidth()I

    move-result v8

    .line 488
    .local v8, "gridSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "gridSize="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 490
    const/4 v4, 0x0

    .line 491
    .local v4, "bottomRightPoint":Ljp/sourceforge/qrcode/geom/Point;
    filled-new-array {v8, v8}, [I

    move-result-object v21

    sget-object v22, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Z

    .line 492
    .local v9, "sampledMatrix":[[Z
    const/4 v3, 0x0

    .local v3, "ay":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->getHeight()I

    move-result v21

    move/from16 v0, v21

    if-lt v3, v0, :cond_1

    .line 520
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v21

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_0

    invoke-virtual {v4}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v21

    const/16 v22, 0x0

    aget-object v22, p1, v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    .line 521
    :cond_0
    new-instance v21, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v22, "Sampling grid pointed out of image"

    invoke-direct/range {v21 .. v22}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 493
    :cond_1
    const/4 v2, 0x0

    .local v2, "ax":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->getWidth()I

    move-result v21

    move/from16 v0, v21

    if-lt v2, v0, :cond_2

    .line 492
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 494
    :cond_2
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 495
    .local v10, "sampledPoints":Ljava/util/Vector;
    const/16 v16, 0x0

    .local v16, "y":I
    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->getHeight(II)I

    move-result v21

    move/from16 v0, v16

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    .line 493
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 496
    :cond_3
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->getWidth(II)I

    move-result v21

    move/from16 v0, v21

    if-lt v11, v0, :cond_4

    .line 495
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 497
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v11}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->getXLine(III)Ljp/sourceforge/qrcode/geom/Line;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v12

    .line 498
    .local v12, "x1":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v11}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->getXLine(III)Ljp/sourceforge/qrcode/geom/Line;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v17

    .line 499
    .local v17, "y1":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v11}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->getXLine(III)Ljp/sourceforge/qrcode/geom/Line;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v13

    .line 500
    .local v13, "x2":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v11}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->getXLine(III)Ljp/sourceforge/qrcode/geom/Line;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v18

    .line 501
    .local v18, "y2":I
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v2, v3, v1}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->getYLine(III)Ljp/sourceforge/qrcode/geom/Line;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v14

    .line 502
    .local v14, "x3":I
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v2, v3, v1}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->getYLine(III)Ljp/sourceforge/qrcode/geom/Line;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v19

    .line 503
    .local v19, "y3":I
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v2, v3, v1}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->getYLine(III)Ljp/sourceforge/qrcode/geom/Line;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v15

    .line 504
    .local v15, "x4":I
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v2, v3, v1}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->getYLine(III)Ljp/sourceforge/qrcode/geom/Line;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v20

    .line 506
    .local v20, "y4":I
    sub-int v21, v18, v17

    sub-int v22, v14, v15

    mul-int v21, v21, v22

    sub-int v22, v20, v19

    sub-int v23, v12, v13

    mul-int v22, v22, v23

    sub-int v5, v21, v22

    .line 507
    .local v5, "e":I
    mul-int v21, v12, v18

    mul-int v22, v13, v17

    sub-int v21, v21, v22

    sub-int v22, v14, v15

    mul-int v21, v21, v22

    mul-int v22, v14, v20

    mul-int v23, v15, v19

    sub-int v22, v22, v23

    sub-int v23, v12, v13

    mul-int v22, v22, v23

    sub-int v6, v21, v22

    .line 508
    .local v6, "f":I
    mul-int v21, v14, v20

    mul-int v22, v15, v19

    sub-int v21, v21, v22

    sub-int v22, v18, v17

    mul-int v21, v21, v22

    mul-int v22, v12, v18

    mul-int v23, v13, v17

    sub-int v22, v22, v23

    sub-int v23, v20, v19

    mul-int v22, v22, v23

    sub-int v7, v21, v22

    .line 509
    .local v7, "g":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v11}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->getX(II)I

    move-result v21

    aget-object v21, v9, v21

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->getY(II)I

    move-result v22

    div-int v23, v6, v5

    aget-object v23, p1, v23

    div-int v24, v7, v5

    aget-boolean v23, v23, v24

    aput-boolean v23, v21, v22

    .line 510
    invoke-virtual/range {p2 .. p2}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->getHeight()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ne v3, v0, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->getWidth()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ne v2, v0, :cond_5

    .line 511
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->getHeight(II)I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->getWidth(II)I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_5

    .line 512
    new-instance v4, Ljp/sourceforge/qrcode/geom/Point;

    .end local v4    # "bottomRightPoint":Ljp/sourceforge/qrcode/geom/Point;
    div-int v21, v6, v5

    div-int v22, v7, v5

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v4, v0, v1}, Ljp/sourceforge/qrcode/geom/Point;-><init>(II)V

    .line 496
    .restart local v4    # "bottomRightPoint":Ljp/sourceforge/qrcode/geom/Point;
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 522
    .end local v2    # "ax":I
    .end local v5    # "e":I
    .end local v6    # "f":I
    .end local v7    # "g":I
    .end local v10    # "sampledPoints":Ljava/util/Vector;
    .end local v11    # "x":I
    .end local v12    # "x1":I
    .end local v13    # "x2":I
    .end local v14    # "x3":I
    .end local v15    # "x4":I
    .end local v16    # "y":I
    .end local v17    # "y1":I
    .end local v18    # "y2":I
    .end local v19    # "y3":I
    .end local v20    # "y4":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    move-object/from16 v21, v0

    const v22, 0x8888ff

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v0, v4, v1}, Ljp/sourceforge/qrcode/util/DebugCanvas;->drawPoint(Ljp/sourceforge/qrcode/geom/Point;I)V

    .line 524
    return-object v9
.end method

.method public getQRCodeSymbol([[I)Ljp/sourceforge/qrcode/data/QRCodeSymbol;
    .locals 17
    .param p1, "image"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/sourceforge/qrcode/exception/SymbolNotFoundException;
        }
    .end annotation

    .prologue
    .line 163
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x0

    aget-object v15, p1, v15

    array-length v15, v15

    if-ge v14, v15, :cond_1

    const/4 v14, 0x0

    aget-object v14, p1, v14

    array-length v7, v14

    .line 164
    .local v7, "longSide":I
    :goto_0
    div-int/lit16 v14, v7, 0x100

    invoke-static {v14}, Ljp/sourceforge/qrcode/util/QRCodeUtility;->sqrt(I)I

    move-result v14

    rsub-int/lit8 v14, v14, 0x17

    sput v14, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->DECIMAL_POINT:I

    .line 165
    invoke-virtual/range {p0 .. p1}, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->filterImage([[I)[[Z

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->bitmap:[[Z

    .line 166
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const-string v15, "Drawing matrix."

    invoke-interface {v14, v15}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    move-object/from16 v0, p0

    iget-object v15, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->bitmap:[[Z

    invoke-interface {v14, v15}, Ljp/sourceforge/qrcode/util/DebugCanvas;->drawMatrix([[Z)V

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const-string v15, "Scanning Finder Pattern."

    invoke-interface {v14, v15}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 170
    const/4 v5, 0x0

    .line 172
    .local v5, "finderPattern":Ljp/sourceforge/qrcode/pattern/FinderPattern;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->bitmap:[[Z

    invoke-static {v14}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->findFinderPattern([[Z)Ljp/sourceforge/qrcode/pattern/FinderPattern;
    :try_end_0
    .catch Ljp/sourceforge/qrcode/exception/FinderPatternNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljp/sourceforge/qrcode/exception/VersionInformationException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v5

    .line 189
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const-string v15, "FinderPattern at"

    invoke-interface {v14, v15}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 191
    new-instance v14, Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getCenter(I)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v15

    invoke-virtual {v15}, Ljp/sourceforge/qrcode/geom/Point;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getCenter(I)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v15

    invoke-virtual {v15}, Ljp/sourceforge/qrcode/geom/Point;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 193
    const/4 v15, 0x2

    invoke-virtual {v5, v15}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getCenter(I)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v15

    invoke-virtual {v15}, Ljp/sourceforge/qrcode/geom/Point;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 191
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, "finderPatternCoordinates":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    invoke-interface {v14, v6}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v5}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getAngle()[I

    move-result-object v10

    .line 196
    .local v10, "sincos":[I
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Angle*4098: Sin "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    aget v16, v10, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "Cos "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v10, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v5}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getVersion()I

    move-result v11

    .line 199
    .local v11, "version":I
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Version: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 200
    const/4 v14, 0x1

    if-lt v11, v14, :cond_0

    const/16 v14, 0x28

    if-le v11, v14, :cond_2

    .line 201
    :cond_0
    new-instance v14, Ljp/sourceforge/qrcode/exception/InvalidVersionException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Invalid version: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljp/sourceforge/qrcode/exception/InvalidVersionException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 163
    .end local v5    # "finderPattern":Ljp/sourceforge/qrcode/pattern/FinderPattern;
    .end local v6    # "finderPatternCoordinates":Ljava/lang/String;
    .end local v7    # "longSide":I
    .end local v10    # "sincos":[I
    .end local v11    # "version":I
    :cond_1
    move-object/from16 v0, p1

    array-length v7, v0

    goto/16 :goto_0

    .line 173
    .restart local v5    # "finderPattern":Ljp/sourceforge/qrcode/pattern/FinderPattern;
    .restart local v7    # "longSide":I
    :catch_0
    move-exception v3

    .line 174
    .local v3, "e":Ljp/sourceforge/qrcode/exception/FinderPatternNotFoundException;
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const-string v15, "Not found, now retrying..."

    invoke-interface {v14, v15}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->bitmap:[[Z

    const/4 v15, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->applyCrossMaskingMedianFilter([[ZI)[[Z

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->bitmap:[[Z

    .line 176
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    move-object/from16 v0, p0

    iget-object v15, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->bitmap:[[Z

    invoke-interface {v14, v15}, Ljp/sourceforge/qrcode/util/DebugCanvas;->drawMatrix([[Z)V

    .line 178
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->bitmap:[[Z

    invoke-static {v14}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->findFinderPattern([[Z)Ljp/sourceforge/qrcode/pattern/FinderPattern;
    :try_end_1
    .catch Ljp/sourceforge/qrcode/exception/FinderPatternNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljp/sourceforge/qrcode/exception/VersionInformationException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    goto/16 :goto_1

    .line 179
    :catch_1
    move-exception v4

    .line 180
    .local v4, "e2":Ljp/sourceforge/qrcode/exception/FinderPatternNotFoundException;
    new-instance v14, Ljp/sourceforge/qrcode/exception/SymbolNotFoundException;

    invoke-virtual {v4}, Ljp/sourceforge/qrcode/exception/FinderPatternNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljp/sourceforge/qrcode/exception/SymbolNotFoundException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 181
    .end local v4    # "e2":Ljp/sourceforge/qrcode/exception/FinderPatternNotFoundException;
    :catch_2
    move-exception v4

    .line 182
    .local v4, "e2":Ljp/sourceforge/qrcode/exception/VersionInformationException;
    new-instance v14, Ljp/sourceforge/qrcode/exception/SymbolNotFoundException;

    invoke-virtual {v4}, Ljp/sourceforge/qrcode/exception/VersionInformationException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljp/sourceforge/qrcode/exception/SymbolNotFoundException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 184
    .end local v3    # "e":Ljp/sourceforge/qrcode/exception/FinderPatternNotFoundException;
    .end local v4    # "e2":Ljp/sourceforge/qrcode/exception/VersionInformationException;
    :catch_3
    move-exception v3

    .line 185
    .local v3, "e":Ljp/sourceforge/qrcode/exception/VersionInformationException;
    new-instance v14, Ljp/sourceforge/qrcode/exception/SymbolNotFoundException;

    invoke-virtual {v3}, Ljp/sourceforge/qrcode/exception/VersionInformationException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljp/sourceforge/qrcode/exception/SymbolNotFoundException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 203
    .end local v3    # "e":Ljp/sourceforge/qrcode/exception/VersionInformationException;
    .restart local v6    # "finderPatternCoordinates":Ljava/lang/String;
    .restart local v10    # "sincos":[I
    .restart local v11    # "version":I
    :cond_2
    const/4 v1, 0x0

    .line 205
    .local v1, "alignmentPattern":Ljp/sourceforge/qrcode/pattern/AlignmentPattern;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->bitmap:[[Z

    invoke-static {v14, v5}, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->findAlignmentPattern([[ZLjp/sourceforge/qrcode/pattern/FinderPattern;)Ljp/sourceforge/qrcode/pattern/AlignmentPattern;
    :try_end_2
    .catch Ljp/sourceforge/qrcode/exception/AlignmentPatternNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->getCenter()[[Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v14

    array-length v8, v14

    .line 211
    .local v8, "matrixLength":I
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const-string v15, "AlignmentPatterns at"

    invoke-interface {v14, v15}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 212
    const/4 v13, 0x0

    .local v13, "y":I
    :goto_2
    if-lt v13, v8, :cond_3

    .line 221
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const-string v15, "Creating sampling grid."

    invoke-interface {v14, v15}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v1}, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->getSamplingGrid(Ljp/sourceforge/qrcode/pattern/FinderPattern;Ljp/sourceforge/qrcode/pattern/AlignmentPattern;)Ljp/sourceforge/qrcode/geom/SamplingGrid;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->samplingGrid:Ljp/sourceforge/qrcode/geom/SamplingGrid;

    .line 225
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const-string v15, "Reading grid."

    invoke-interface {v14, v15}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 226
    const/4 v9, 0x0

    check-cast v9, [[Z

    .line 228
    .local v9, "qRCodeMatrix":[[Z
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->bitmap:[[Z

    move-object/from16 v0, p0

    iget-object v15, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->samplingGrid:Ljp/sourceforge/qrcode/geom/SamplingGrid;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->getQRCodeMatrix([[ZLjp/sourceforge/qrcode/geom/SamplingGrid;)[[Z
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v9

    .line 233
    new-instance v14, Ljp/sourceforge/qrcode/data/QRCodeSymbol;

    invoke-direct {v14, v9}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;-><init>([[Z)V

    return-object v14

    .line 206
    .end local v8    # "matrixLength":I
    .end local v9    # "qRCodeMatrix":[[Z
    .end local v13    # "y":I
    :catch_4
    move-exception v3

    .line 207
    .local v3, "e":Ljp/sourceforge/qrcode/exception/AlignmentPatternNotFoundException;
    new-instance v14, Ljp/sourceforge/qrcode/exception/SymbolNotFoundException;

    invoke-virtual {v3}, Ljp/sourceforge/qrcode/exception/AlignmentPatternNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljp/sourceforge/qrcode/exception/SymbolNotFoundException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 213
    .end local v3    # "e":Ljp/sourceforge/qrcode/exception/AlignmentPatternNotFoundException;
    .restart local v8    # "matrixLength":I
    .restart local v13    # "y":I
    :cond_3
    const-string v2, ""

    .line 214
    .local v2, "alignmentPatternCoordinates":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_3
    if-lt v12, v8, :cond_4

    .line 217
    move-object/from16 v0, p0

    iget-object v14, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    invoke-interface {v14, v2}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 212
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 215
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->getCenter()[[Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v15

    aget-object v15, v15, v12

    aget-object v15, v15, v13

    invoke-virtual {v15}, Ljp/sourceforge/qrcode/geom/Point;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 229
    .end local v2    # "alignmentPatternCoordinates":Ljava/lang/String;
    .end local v12    # "x":I
    .restart local v9    # "qRCodeMatrix":[[Z
    :catch_5
    move-exception v3

    .line 230
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v14, Ljp/sourceforge/qrcode/exception/SymbolNotFoundException;

    const-string v15, "Sampling grid exceeded image boundary"

    invoke-direct {v14, v15}, Ljp/sourceforge/qrcode/exception/SymbolNotFoundException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public getQRCodeSymbolWithAdjustedGrid(Ljp/sourceforge/qrcode/geom/Point;)Ljp/sourceforge/qrcode/data/QRCodeSymbol;
    .locals 5
    .param p1, "adjust"    # Ljp/sourceforge/qrcode/geom/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljp/sourceforge/qrcode/exception/SymbolNotFoundException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v2, p0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->bitmap:[[Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->samplingGrid:Ljp/sourceforge/qrcode/geom/SamplingGrid;

    if-nez v2, :cond_1

    .line 239
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "This method must be called after QRCodeImageReader.getQRCodeSymbol() called"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    :cond_1
    iget-object v2, p0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->samplingGrid:Ljp/sourceforge/qrcode/geom/SamplingGrid;

    invoke-virtual {v2, p1}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->adjust(Ljp/sourceforge/qrcode/geom/Point;)V

    .line 242
    iget-object v2, p0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sampling grid adjusted d("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 244
    const/4 v1, 0x0

    check-cast v1, [[Z

    .line 246
    .local v1, "qRCodeMatrix":[[Z
    :try_start_0
    iget-object v2, p0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->bitmap:[[Z

    iget-object v3, p0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->samplingGrid:Ljp/sourceforge/qrcode/geom/SamplingGrid;

    invoke-virtual {p0, v2, v3}, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->getQRCodeMatrix([[ZLjp/sourceforge/qrcode/geom/SamplingGrid;)[[Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 250
    new-instance v2, Ljp/sourceforge/qrcode/data/QRCodeSymbol;

    invoke-direct {v2, v1}, Ljp/sourceforge/qrcode/data/QRCodeSymbol;-><init>([[Z)V

    return-object v2

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljp/sourceforge/qrcode/exception/SymbolNotFoundException;

    const-string v3, "Sampling grid exceeded image boundary"

    invoke-direct {v2, v3}, Ljp/sourceforge/qrcode/exception/SymbolNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getSamplingGrid(Ljp/sourceforge/qrcode/pattern/FinderPattern;Ljp/sourceforge/qrcode/pattern/AlignmentPattern;)Ljp/sourceforge/qrcode/geom/SamplingGrid;
    .locals 32
    .param p1, "finderPattern"    # Ljp/sourceforge/qrcode/pattern/FinderPattern;
    .param p2, "alignmentPattern"    # Ljp/sourceforge/qrcode/pattern/AlignmentPattern;

    .prologue
    .line 258
    invoke-virtual/range {p2 .. p2}, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->getCenter()[[Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v9

    .line 260
    .local v9, "centers":[[Ljp/sourceforge/qrcode/geom/Point;
    invoke-virtual/range {p1 .. p1}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getVersion()I

    move-result v28

    .line 261
    .local v28, "version":I
    div-int/lit8 v29, v28, 0x7

    add-int/lit8 v24, v29, 0x2

    .line 263
    .local v24, "sqrtCenters":I
    const/16 v29, 0x0

    aget-object v29, v9, v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getCenter(I)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v31

    aput-object v31, v29, v30

    .line 264
    add-int/lit8 v29, v24, -0x1

    aget-object v29, v9, v29

    const/16 v30, 0x0

    const/16 v31, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getCenter(I)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v31

    aput-object v31, v29, v30

    .line 265
    const/16 v29, 0x0

    aget-object v29, v9, v29

    add-int/lit8 v30, v24, -0x1

    const/16 v31, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getCenter(I)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v31

    aput-object v31, v29, v30

    .line 267
    add-int/lit8 v25, v24, -0x1

    .line 270
    .local v25, "sqrtNumArea":I
    new-instance v23, Ljp/sourceforge/qrcode/geom/SamplingGrid;

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljp/sourceforge/qrcode/geom/SamplingGrid;-><init>(I)V

    .line 278
    .local v23, "samplingGrid":Ljp/sourceforge/qrcode/geom/SamplingGrid;
    new-instance v5, Ljp/sourceforge/qrcode/geom/Axis;

    invoke-virtual/range {p1 .. p1}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getAngle()[I

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getModuleSize()I

    move-result v30

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v5, v0, v1}, Ljp/sourceforge/qrcode/geom/Axis;-><init>([II)V

    .line 282
    .local v5, "axis":Ljp/sourceforge/qrcode/geom/Axis;
    const/4 v6, 0x0

    .local v6, "ay":I
    :goto_0
    move/from16 v0, v25

    if-lt v6, v0, :cond_0

    .line 464
    return-object v23

    .line 283
    :cond_0
    const/4 v4, 0x0

    .local v4, "ax":I
    :goto_1
    move/from16 v0, v25

    if-lt v4, v0, :cond_1

    .line 282
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 284
    :cond_1
    new-instance v22, Ljp/sourceforge/qrcode/reader/QRCodeImageReader$ModulePitch;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljp/sourceforge/qrcode/reader/QRCodeImageReader$ModulePitch;-><init>(Ljp/sourceforge/qrcode/reader/QRCodeImageReader;)V

    .line 285
    .local v22, "modulePitch":Ljp/sourceforge/qrcode/reader/QRCodeImageReader$ModulePitch;
    new-instance v7, Ljp/sourceforge/qrcode/geom/Line;

    invoke-direct {v7}, Ljp/sourceforge/qrcode/geom/Line;-><init>()V

    .line 286
    .local v7, "baseLineX":Ljp/sourceforge/qrcode/geom/Line;
    new-instance v8, Ljp/sourceforge/qrcode/geom/Line;

    invoke-direct {v8}, Ljp/sourceforge/qrcode/geom/Line;-><init>()V

    .line 287
    .local v8, "baseLineY":Ljp/sourceforge/qrcode/geom/Line;
    invoke-virtual/range {p1 .. p1}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getModuleSize()I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljp/sourceforge/qrcode/geom/Axis;->setModulePitch(I)V

    .line 289
    invoke-static/range {p1 .. p1}, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->getLogicalCenter(Ljp/sourceforge/qrcode/pattern/FinderPattern;)[[Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v13

    .line 291
    .local v13, "logicalCenters":[[Ljp/sourceforge/qrcode/geom/Point;
    aget-object v29, v9, v4

    aget-object v26, v29, v6

    .line 292
    .local v26, "upperLeftPoint":Ljp/sourceforge/qrcode/geom/Point;
    add-int/lit8 v29, v4, 0x1

    aget-object v29, v9, v29

    aget-object v27, v29, v6

    .line 293
    .local v27, "upperRightPoint":Ljp/sourceforge/qrcode/geom/Point;
    aget-object v29, v9, v4

    add-int/lit8 v30, v6, 0x1

    aget-object v20, v29, v30

    .line 294
    .local v20, "lowerLeftPoint":Ljp/sourceforge/qrcode/geom/Point;
    add-int/lit8 v29, v4, 0x1

    aget-object v29, v9, v29

    add-int/lit8 v30, v6, 0x1

    aget-object v21, v29, v30

    .line 296
    .local v21, "lowerRightPoint":Ljp/sourceforge/qrcode/geom/Point;
    aget-object v29, v13, v4

    aget-object v17, v29, v6

    .line 297
    .local v17, "logicalUpperLeftPoint":Ljp/sourceforge/qrcode/geom/Point;
    add-int/lit8 v29, v4, 0x1

    aget-object v29, v13, v29

    aget-object v18, v29, v6

    .line 298
    .local v18, "logicalUpperRightPoint":Ljp/sourceforge/qrcode/geom/Point;
    aget-object v29, v13, v4

    add-int/lit8 v30, v6, 0x1

    aget-object v15, v29, v30

    .line 299
    .local v15, "logicalLowerLeftPoint":Ljp/sourceforge/qrcode/geom/Point;
    add-int/lit8 v29, v4, 0x1

    aget-object v29, v13, v29

    add-int/lit8 v30, v6, 0x1

    aget-object v16, v29, v30

    .line 301
    .local v16, "logicalLowerRightPoint":Ljp/sourceforge/qrcode/geom/Point;
    if-nez v4, :cond_5

    if-nez v6, :cond_5

    .line 303
    const/16 v29, 0x1

    move/from16 v0, v25

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 304
    const/16 v29, -0x3

    const/16 v30, -0x3

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v26

    .line 305
    const/16 v29, 0x3

    const/16 v30, -0x3

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v27

    .line 306
    const/16 v29, -0x3

    const/16 v30, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v20

    .line 307
    const/16 v29, 0x6

    const/16 v30, 0x6

    move-object/from16 v0, v21

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v21

    .line 309
    const/16 v29, -0x6

    const/16 v30, -0x6

    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 310
    const/16 v29, 0x3

    const/16 v30, -0x3

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 311
    const/16 v29, -0x3

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 312
    const/16 v29, 0x6

    const/16 v30, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 390
    :cond_2
    :goto_2
    if-nez v4, :cond_c

    .line 392
    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 393
    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 401
    :goto_3
    if-nez v6, :cond_d

    .line 403
    const/16 v29, 0x0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 404
    const/16 v29, 0x0

    const/16 v30, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 412
    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v29

    invoke-virtual/range {v17 .. v17}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v30

    sub-int v19, v29, v30

    .line 413
    .local v19, "logicalWidth":I
    invoke-virtual {v15}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v29

    invoke-virtual/range {v17 .. v17}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v30

    sub-int v14, v29, v30

    .line 415
    .local v14, "logicalHeight":I
    const/16 v29, 0x7

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    .line 416
    add-int/lit8 v19, v19, 0x3

    .line 417
    add-int/lit8 v14, v14, 0x3

    .line 420
    :cond_3
    add-int/lit8 v29, v19, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->getAreaModulePitch(Ljp/sourceforge/qrcode/geom/Point;Ljp/sourceforge/qrcode/geom/Point;I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v22

    iput v0, v1, Ljp/sourceforge/qrcode/reader/QRCodeImageReader$ModulePitch;->top:I

    .line 421
    add-int/lit8 v29, v14, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->getAreaModulePitch(Ljp/sourceforge/qrcode/geom/Point;Ljp/sourceforge/qrcode/geom/Point;I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v22

    iput v0, v1, Ljp/sourceforge/qrcode/reader/QRCodeImageReader$ModulePitch;->left:I

    .line 422
    add-int/lit8 v29, v19, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->getAreaModulePitch(Ljp/sourceforge/qrcode/geom/Point;Ljp/sourceforge/qrcode/geom/Point;I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v22

    iput v0, v1, Ljp/sourceforge/qrcode/reader/QRCodeImageReader$ModulePitch;->bottom:I

    .line 423
    add-int/lit8 v29, v14, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->getAreaModulePitch(Ljp/sourceforge/qrcode/geom/Point;Ljp/sourceforge/qrcode/geom/Point;I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v22

    iput v0, v1, Ljp/sourceforge/qrcode/reader/QRCodeImageReader$ModulePitch;->right:I

    .line 425
    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljp/sourceforge/qrcode/geom/Line;->setP1(Ljp/sourceforge/qrcode/geom/Point;)V

    .line 426
    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljp/sourceforge/qrcode/geom/Line;->setP1(Ljp/sourceforge/qrcode/geom/Point;)V

    .line 427
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljp/sourceforge/qrcode/geom/Line;->setP2(Ljp/sourceforge/qrcode/geom/Point;)V

    .line 428
    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljp/sourceforge/qrcode/geom/Line;->setP2(Ljp/sourceforge/qrcode/geom/Point;)V

    .line 430
    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v4, v6, v1, v14}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->initGrid(IIII)V

    .line 432
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    move/from16 v0, v19

    if-lt v12, v0, :cond_e

    .line 446
    const/4 v12, 0x0

    :goto_6
    if-lt v12, v14, :cond_f

    .line 283
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 315
    .end local v12    # "i":I
    .end local v14    # "logicalHeight":I
    .end local v19    # "logicalWidth":I
    :cond_4
    const/16 v29, -0x3

    const/16 v30, -0x3

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v26

    .line 316
    const/16 v29, 0x0

    const/16 v30, -0x6

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v27

    .line 317
    const/16 v29, -0x6

    const/16 v30, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v20

    .line 319
    const/16 v29, -0x6

    const/16 v30, -0x6

    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 320
    const/16 v29, 0x0

    const/16 v30, -0x6

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 321
    const/16 v29, -0x6

    const/16 v30, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    goto/16 :goto_2

    .line 324
    :cond_5
    if-nez v4, :cond_6

    add-int/lit8 v29, v25, -0x1

    move/from16 v0, v29

    if-ne v6, v0, :cond_6

    .line 326
    const/16 v29, -0x6

    const/16 v30, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v26

    .line 327
    const/16 v29, -0x3

    const/16 v30, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v20

    .line 328
    const/16 v29, 0x0

    const/16 v30, 0x6

    move-object/from16 v0, v21

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v21

    .line 331
    const/16 v29, -0x6

    const/16 v30, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 332
    const/16 v29, -0x6

    const/16 v30, 0x6

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 333
    const/16 v29, 0x0

    const/16 v30, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    goto/16 :goto_2

    .line 335
    :cond_6
    add-int/lit8 v29, v25, -0x1

    move/from16 v0, v29

    if-ne v4, v0, :cond_7

    if-nez v6, :cond_7

    .line 337
    const/16 v29, 0x0

    const/16 v30, -0x6

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v26

    .line 338
    const/16 v29, 0x3

    const/16 v30, -0x3

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v27

    .line 339
    const/16 v29, 0x6

    const/16 v30, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v21

    .line 341
    const/16 v29, 0x0

    const/16 v30, -0x6

    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 342
    const/16 v29, 0x6

    const/16 v30, -0x6

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 343
    const/16 v29, 0x6

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    goto/16 :goto_2

    .line 345
    :cond_7
    add-int/lit8 v29, v25, -0x1

    move/from16 v0, v29

    if-ne v4, v0, :cond_8

    add-int/lit8 v29, v25, -0x1

    move/from16 v0, v29

    if-ne v6, v0, :cond_8

    .line 347
    const/16 v29, 0x0

    const/16 v30, 0x6

    move-object/from16 v0, v20

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v20

    .line 348
    const/16 v29, 0x6

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v27

    .line 349
    const/16 v29, 0x6

    const/16 v30, 0x6

    move-object/from16 v0, v21

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v21

    .line 351
    const/16 v29, 0x0

    const/16 v30, 0x6

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 352
    const/16 v29, 0x6

    const/16 v30, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 353
    const/16 v29, 0x6

    const/16 v30, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    goto/16 :goto_2

    .line 355
    :cond_8
    if-nez v4, :cond_9

    .line 357
    const/16 v29, -0x6

    const/16 v30, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v26

    .line 358
    const/16 v29, -0x6

    const/16 v30, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v20

    .line 360
    const/16 v29, -0x6

    const/16 v30, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 361
    const/16 v29, -0x6

    const/16 v30, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    goto/16 :goto_2

    .line 364
    :cond_9
    add-int/lit8 v29, v25, -0x1

    move/from16 v0, v29

    if-ne v4, v0, :cond_a

    .line 366
    const/16 v29, 0x6

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v27

    .line 367
    const/16 v29, 0x6

    const/16 v30, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v21

    .line 369
    const/16 v29, 0x6

    const/16 v30, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 370
    const/16 v29, 0x6

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    goto/16 :goto_2

    .line 372
    :cond_a
    if-nez v6, :cond_b

    .line 374
    const/16 v29, 0x0

    const/16 v30, -0x6

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v26

    .line 375
    const/16 v29, 0x0

    const/16 v30, -0x6

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v27

    .line 377
    const/16 v29, 0x0

    const/16 v30, -0x6

    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 378
    const/16 v29, 0x0

    const/16 v30, -0x6

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    goto/16 :goto_2

    .line 381
    :cond_b
    add-int/lit8 v29, v25, -0x1

    move/from16 v0, v29

    if-ne v6, v0, :cond_2

    .line 383
    const/16 v29, 0x0

    const/16 v30, 0x6

    move-object/from16 v0, v20

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v20

    .line 384
    const/16 v29, 0x0

    const/16 v30, 0x6

    move-object/from16 v0, v21

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v21

    .line 386
    const/16 v29, 0x0

    const/16 v30, 0x6

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 387
    const/16 v29, 0x0

    const/16 v30, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    goto/16 :goto_2

    .line 397
    :cond_c
    const/16 v29, -0x1

    const/16 v30, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 398
    const/16 v29, -0x1

    const/16 v30, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    goto/16 :goto_3

    .line 408
    :cond_d
    const/16 v29, 0x0

    const/16 v30, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 409
    const/16 v29, 0x0

    const/16 v30, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    goto/16 :goto_4

    .line 433
    .restart local v12    # "i":I
    .restart local v14    # "logicalHeight":I
    .restart local v19    # "logicalWidth":I
    :cond_e
    new-instance v10, Ljp/sourceforge/qrcode/geom/Line;

    invoke-virtual {v7}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v29

    invoke-virtual {v7}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v10, v0, v1}, Ljp/sourceforge/qrcode/geom/Line;-><init>(Ljp/sourceforge/qrcode/geom/Point;Ljp/sourceforge/qrcode/geom/Point;)V

    .line 435
    .local v10, "gridLineX":Ljp/sourceforge/qrcode/geom/Line;
    invoke-virtual {v10}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljp/sourceforge/qrcode/geom/Axis;->setOrigin(Ljp/sourceforge/qrcode/geom/Point;)V

    .line 436
    move-object/from16 v0, v22

    iget v0, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader$ModulePitch;->top:I

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljp/sourceforge/qrcode/geom/Axis;->setModulePitch(I)V

    .line 437
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v5, v12, v0}, Ljp/sourceforge/qrcode/geom/Axis;->translate(II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljp/sourceforge/qrcode/geom/Line;->setP1(Ljp/sourceforge/qrcode/geom/Point;)V

    .line 439
    invoke-virtual {v10}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljp/sourceforge/qrcode/geom/Axis;->setOrigin(Ljp/sourceforge/qrcode/geom/Point;)V

    .line 440
    move-object/from16 v0, v22

    iget v0, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader$ModulePitch;->bottom:I

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljp/sourceforge/qrcode/geom/Axis;->setModulePitch(I)V

    .line 441
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v5, v12, v0}, Ljp/sourceforge/qrcode/geom/Axis;->translate(II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljp/sourceforge/qrcode/geom/Line;->setP2(Ljp/sourceforge/qrcode/geom/Point;)V

    .line 443
    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6, v12, v10}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->setXLine(IIILjp/sourceforge/qrcode/geom/Line;)V

    .line 432
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .line 448
    .end local v10    # "gridLineX":Ljp/sourceforge/qrcode/geom/Line;
    :cond_f
    new-instance v11, Ljp/sourceforge/qrcode/geom/Line;

    invoke-virtual {v8}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v29

    invoke-virtual {v8}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v11, v0, v1}, Ljp/sourceforge/qrcode/geom/Line;-><init>(Ljp/sourceforge/qrcode/geom/Point;Ljp/sourceforge/qrcode/geom/Point;)V

    .line 450
    .local v11, "gridLineY":Ljp/sourceforge/qrcode/geom/Line;
    invoke-virtual {v11}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljp/sourceforge/qrcode/geom/Axis;->setOrigin(Ljp/sourceforge/qrcode/geom/Point;)V

    .line 451
    move-object/from16 v0, v22

    iget v0, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader$ModulePitch;->left:I

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljp/sourceforge/qrcode/geom/Axis;->setModulePitch(I)V

    .line 452
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v5, v0, v12}, Ljp/sourceforge/qrcode/geom/Axis;->translate(II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljp/sourceforge/qrcode/geom/Line;->setP1(Ljp/sourceforge/qrcode/geom/Point;)V

    .line 454
    invoke-virtual {v11}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljp/sourceforge/qrcode/geom/Axis;->setOrigin(Ljp/sourceforge/qrcode/geom/Point;)V

    .line 455
    move-object/from16 v0, v22

    iget v0, v0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader$ModulePitch;->right:I

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljp/sourceforge/qrcode/geom/Axis;->setModulePitch(I)V

    .line 456
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v5, v0, v12}, Ljp/sourceforge/qrcode/geom/Axis;->translate(II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljp/sourceforge/qrcode/geom/Line;->setP2(Ljp/sourceforge/qrcode/geom/Point;)V

    .line 458
    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6, v12, v11}, Ljp/sourceforge/qrcode/geom/SamplingGrid;->setYLine(IIILjp/sourceforge/qrcode/geom/Line;)V

    .line 446
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6
.end method

.method grayScaleToBitmap([[I)[[Z
    .locals 14
    .param p1, "grayScale"    # [[I

    .prologue
    const/4 v10, 0x0

    .line 111
    invoke-virtual {p0, p1}, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->getMiddleBrightnessPerArea([[I)[[I

    move-result-object v7

    .line 112
    .local v7, "middle":[[I
    array-length v8, v7

    .line 113
    .local v8, "sqrtNumArea":I
    array-length v9, p1

    div-int v1, v9, v8

    .line 114
    .local v1, "areaWidth":I
    aget-object v9, p1, v10

    array-length v9, v9

    div-int v0, v9, v8

    .line 115
    .local v0, "areaHeight":I
    array-length v9, p1

    aget-object v11, p1, v10

    array-length v11, v11

    filled-new-array {v9, v11}, [I

    move-result-object v9

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Z

    .line 117
    .local v4, "bitmap":[[Z
    const/4 v3, 0x0

    .local v3, "ay":I
    :goto_0
    if-lt v3, v8, :cond_0

    .line 126
    return-object v4

    .line 118
    :cond_0
    const/4 v2, 0x0

    .local v2, "ax":I
    :goto_1
    if-lt v2, v8, :cond_1

    .line 117
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    :cond_1
    const/4 v6, 0x0

    .local v6, "dy":I
    :goto_2
    if-lt v6, v0, :cond_2

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 120
    :cond_2
    const/4 v5, 0x0

    .local v5, "dx":I
    :goto_3
    if-lt v5, v1, :cond_3

    .line 119
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 121
    :cond_3
    mul-int v9, v1, v2

    add-int/2addr v9, v5

    aget-object v11, v4, v9

    mul-int v9, v0, v3

    add-int v12, v9, v6

    mul-int v9, v1, v2

    add-int/2addr v9, v5

    aget-object v9, p1, v9

    mul-int v13, v0, v3

    add-int/2addr v13, v6

    aget v9, v9, v13

    aget-object v13, v7, v2

    aget v13, v13, v3

    if-ge v9, v13, :cond_4

    const/4 v9, 0x1

    :goto_4
    aput-boolean v9, v11, v12

    .line 120
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    move v9, v10

    .line 121
    goto :goto_4
.end method

.method imageToGrayScale([[I)V
    .locals 8
    .param p1, "image"    # [[I

    .prologue
    .line 99
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_0
    const/4 v6, 0x0

    aget-object v6, p1, v6

    array-length v6, v6

    if-lt v5, v6, :cond_0

    .line 108
    return-void

    .line 100
    :cond_0
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_1
    array-length v6, p1

    if-lt v4, v6, :cond_1

    .line 99
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 101
    :cond_1
    aget-object v6, p1, v4

    aget v6, v6, v5

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v3, v6, 0xff

    .line 102
    .local v3, "r":I
    aget-object v6, p1, v4

    aget v6, v6, v5

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v1, v6, 0xff

    .line 103
    .local v1, "g":I
    aget-object v6, p1, v4

    aget v6, v6, v5

    and-int/lit16 v0, v6, 0xff

    .line 104
    .local v0, "b":I
    mul-int/lit8 v6, v3, 0x1e

    mul-int/lit8 v7, v1, 0x3b

    add-int/2addr v6, v7

    mul-int/lit8 v7, v0, 0xb

    add-int/2addr v6, v7

    div-int/lit8 v2, v6, 0x64

    .line 105
    .local v2, "m":I
    aget-object v6, p1, v4

    aput v2, v6, v5

    .line 100
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
