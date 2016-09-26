.class public Ljp/sourceforge/qrcode/pattern/AlignmentPattern;
.super Ljava/lang/Object;
.source "AlignmentPattern.java"


# static fields
.field static final BOTTOM:I = 0x2

.field static final LEFT:I = 0x3

.field static final RIGHT:I = 0x1

.field static final TOP:I = 0x4

.field static canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;


# instance fields
.field center:[[Ljp/sourceforge/qrcode/geom/Point;

.field patternDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Ljp/sourceforge/qrcode/QRCodeDecoder;->getCanvas()Ljp/sourceforge/qrcode/util/DebugCanvas;

    move-result-object v0

    sput-object v0, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    .line 11
    return-void
.end method

.method constructor <init>([[Ljp/sourceforge/qrcode/geom/Point;I)V
    .locals 0
    .param p1, "center"    # [[Ljp/sourceforge/qrcode/geom/Point;
    .param p2, "patternDistance"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->center:[[Ljp/sourceforge/qrcode/geom/Point;

    .line 24
    iput p2, p0, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->patternDistance:I

    .line 25
    return-void
.end method

.method public static findAlignmentPattern([[ZLjp/sourceforge/qrcode/pattern/FinderPattern;)Ljp/sourceforge/qrcode/pattern/AlignmentPattern;
    .locals 6
    .param p0, "image"    # [[Z
    .param p1, "finderPattern"    # Ljp/sourceforge/qrcode/pattern/FinderPattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/sourceforge/qrcode/exception/AlignmentPatternNotFoundException;,
            Ljp/sourceforge/qrcode/exception/InvalidVersionException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 30
    invoke-static {p1}, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->getLogicalCenter(Ljp/sourceforge/qrcode/pattern/FinderPattern;)[[Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v1

    .line 31
    .local v1, "logicalCenters":[[Ljp/sourceforge/qrcode/geom/Point;
    const/4 v3, 0x1

    aget-object v3, v1, v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v3

    aget-object v4, v1, v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v4

    sub-int v2, v3, v4

    .line 33
    .local v2, "logicalDistance":I
    const/4 v0, 0x0

    check-cast v0, [[Ljp/sourceforge/qrcode/geom/Point;

    .line 34
    .local v0, "centers":[[Ljp/sourceforge/qrcode/geom/Point;
    invoke-static {p0, p1, v1}, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->getCenter([[ZLjp/sourceforge/qrcode/pattern/FinderPattern;[[Ljp/sourceforge/qrcode/geom/Point;)[[Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v0

    .line 35
    new-instance v3, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;

    invoke-direct {v3, v0, v2}, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;-><init>([[Ljp/sourceforge/qrcode/geom/Point;I)V

    return-object v3
.end method

.method static getCenter([[ZLjp/sourceforge/qrcode/pattern/FinderPattern;[[Ljp/sourceforge/qrcode/geom/Point;)[[Ljp/sourceforge/qrcode/geom/Point;
    .locals 20
    .param p0, "image"    # [[Z
    .param p1, "finderPattern"    # Ljp/sourceforge/qrcode/pattern/FinderPattern;
    .param p2, "logicalCenters"    # [[Ljp/sourceforge/qrcode/geom/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/sourceforge/qrcode/exception/AlignmentPatternNotFoundException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual/range {p1 .. p1}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getModuleSize()I

    move-result v6

    .line 56
    .local v6, "moduleSize":I
    new-instance v2, Ljp/sourceforge/qrcode/geom/Axis;

    invoke-virtual/range {p1 .. p1}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getAngle()[I

    move-result-object v15

    invoke-direct {v2, v15, v6}, Ljp/sourceforge/qrcode/geom/Axis;-><init>([II)V

    .line 57
    .local v2, "axis":Ljp/sourceforge/qrcode/geom/Axis;
    move-object/from16 v0, p2

    array-length v8, v0

    .line 58
    .local v8, "sqrtCenters":I
    filled-new-array {v8, v8}, [I

    move-result-object v15

    const-class v16, Ljp/sourceforge/qrcode/geom/Point;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljp/sourceforge/qrcode/geom/Point;

    .line 60
    .local v3, "centers":[[Ljp/sourceforge/qrcode/geom/Point;
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getCenter(I)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljp/sourceforge/qrcode/geom/Axis;->setOrigin(Ljp/sourceforge/qrcode/geom/Point;)V

    .line 61
    const/4 v15, 0x0

    aget-object v15, v3, v15

    const/16 v16, 0x0

    const/16 v17, 0x3

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljp/sourceforge/qrcode/geom/Axis;->translate(II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v17

    aput-object v17, v15, v16

    .line 62
    sget-object v15, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const/16 v16, 0x0

    aget-object v16, v3, v16

    const/16 v17, 0x0

    aget-object v16, v16, v17

    const v17, 0x8888ff

    invoke-interface/range {v15 .. v17}, Ljp/sourceforge/qrcode/util/DebugCanvas;->drawCross(Ljp/sourceforge/qrcode/geom/Point;I)V

    .line 64
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getCenter(I)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljp/sourceforge/qrcode/geom/Axis;->setOrigin(Ljp/sourceforge/qrcode/geom/Point;)V

    .line 65
    add-int/lit8 v15, v8, -0x1

    aget-object v15, v3, v15

    const/16 v16, 0x0

    const/16 v17, -0x3

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljp/sourceforge/qrcode/geom/Axis;->translate(II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v17

    aput-object v17, v15, v16

    .line 66
    sget-object v15, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    add-int/lit8 v16, v8, -0x1

    aget-object v16, v3, v16

    const/16 v17, 0x0

    aget-object v16, v16, v17

    const v17, 0x8888ff

    invoke-interface/range {v15 .. v17}, Ljp/sourceforge/qrcode/util/DebugCanvas;->drawCross(Ljp/sourceforge/qrcode/geom/Point;I)V

    .line 68
    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getCenter(I)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljp/sourceforge/qrcode/geom/Axis;->setOrigin(Ljp/sourceforge/qrcode/geom/Point;)V

    .line 69
    const/4 v15, 0x0

    aget-object v15, v3, v15

    add-int/lit8 v16, v8, -0x1

    const/16 v17, 0x3

    const/16 v18, -0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljp/sourceforge/qrcode/geom/Axis;->translate(II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v17

    aput-object v17, v15, v16

    .line 70
    sget-object v15, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const/16 v16, 0x0

    aget-object v16, v3, v16

    add-int/lit8 v17, v8, -0x1

    aget-object v16, v16, v17

    const v17, 0x8888ff

    invoke-interface/range {v15 .. v17}, Ljp/sourceforge/qrcode/util/DebugCanvas;->drawCross(Ljp/sourceforge/qrcode/geom/Point;I)V

    .line 72
    const/4 v15, 0x0

    aget-object v15, v3, v15

    const/16 v16, 0x0

    aget-object v12, v15, v16

    .line 74
    .local v12, "tmpPoint":Ljp/sourceforge/qrcode/geom/Point;
    const/4 v14, 0x0

    .local v14, "y":I
    :goto_0
    if-lt v14, v8, :cond_0

    .line 164
    return-object v3

    .line 75
    :cond_0
    const/4 v13, 0x0

    .local v13, "x":I
    :goto_1
    if-lt v13, v8, :cond_1

    .line 74
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 76
    :cond_1
    if-nez v13, :cond_2

    if-eqz v14, :cond_4

    :cond_2
    if-nez v13, :cond_3

    add-int/lit8 v15, v8, -0x1

    if-eq v14, v15, :cond_4

    :cond_3
    add-int/lit8 v15, v8, -0x1

    if-ne v13, v15, :cond_5

    if-nez v14, :cond_5

    .line 75
    :cond_4
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 80
    :cond_5
    const/4 v11, 0x0

    .line 81
    .local v11, "target":Ljp/sourceforge/qrcode/geom/Point;
    if-nez v14, :cond_8

    .line 82
    if-lez v13, :cond_6

    add-int/lit8 v15, v8, -0x1

    if-ge v13, v15, :cond_6

    .line 83
    add-int/lit8 v15, v13, -0x1

    aget-object v15, v3, v15

    aget-object v15, v15, v14

    aget-object v16, p2, v13

    aget-object v16, v16, v14

    invoke-virtual/range {v16 .. v16}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v16

    add-int/lit8 v17, v13, -0x1

    aget-object v17, p2, v17

    aget-object v17, v17, v14

    invoke-virtual/range {v17 .. v17}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v17

    sub-int v16, v16, v17

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v15, v0, v1}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v11

    .line 84
    aget-object v15, v3, v13

    new-instance v16, Ljp/sourceforge/qrcode/geom/Point;

    invoke-virtual {v11}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v17

    invoke-virtual {v11}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v18

    invoke-direct/range {v16 .. v18}, Ljp/sourceforge/qrcode/geom/Point;-><init>(II)V

    aput-object v16, v15, v14

    .line 85
    sget-object v15, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    aget-object v16, v3, v13

    aget-object v16, v16, v14

    const v17, 0xff88888

    invoke-interface/range {v15 .. v17}, Ljp/sourceforge/qrcode/util/DebugCanvas;->drawCross(Ljp/sourceforge/qrcode/geom/Point;I)V

    .line 100
    :cond_6
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getVersion()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_7

    .line 101
    aget-object v15, v3, v13

    aget-object v15, v15, v14

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->getPrecisionCenter([[ZLjp/sourceforge/qrcode/geom/Point;)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v7

    .line 104
    .local v7, "precisionCenter":Ljp/sourceforge/qrcode/geom/Point;
    sget-object v15, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    aget-object v16, v3, v13

    aget-object v16, v16, v14

    const v17, 0xff88888

    invoke-interface/range {v15 .. v17}, Ljp/sourceforge/qrcode/util/DebugCanvas;->drawCross(Ljp/sourceforge/qrcode/geom/Point;I)V

    .line 105
    invoke-virtual {v7}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v15

    aget-object v16, v3, v13

    aget-object v16, v16, v14

    invoke-virtual/range {v16 .. v16}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v16

    sub-int v4, v15, v16

    .line 106
    .local v4, "dx":I
    invoke-virtual {v7}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v15

    aget-object v16, v3, v13

    aget-object v16, v16, v14

    invoke-virtual/range {v16 .. v16}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v16

    sub-int v5, v15, v16

    .line 107
    .local v5, "dy":I
    sget-object v15, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Adjust AP("

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") to d("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljp/sourceforge/qrcode/util/DebugCanvas;->println(Ljava/lang/String;)V

    .line 109
    aget-object v15, v3, v13

    aput-object v7, v15, v14

    .line 112
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v7    # "precisionCenter":Ljp/sourceforge/qrcode/geom/Point;
    :cond_7
    sget-object v15, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    aget-object v16, v3, v13

    aget-object v16, v16, v14

    const v17, 0x8888ff

    invoke-interface/range {v15 .. v17}, Ljp/sourceforge/qrcode/util/DebugCanvas;->drawCross(Ljp/sourceforge/qrcode/geom/Point;I)V

    .line 113
    sget-object v15, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    new-instance v16, Ljp/sourceforge/qrcode/geom/Line;

    aget-object v17, v3, v13

    aget-object v17, v17, v14

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v12, v1}, Ljp/sourceforge/qrcode/geom/Line;-><init>(Ljp/sourceforge/qrcode/geom/Point;Ljp/sourceforge/qrcode/geom/Point;)V

    const v17, 0xbbbbff

    invoke-interface/range {v15 .. v17}, Ljp/sourceforge/qrcode/util/DebugCanvas;->drawLine(Ljp/sourceforge/qrcode/geom/Line;I)V

    .line 114
    aget-object v15, v3, v13

    aget-object v12, v15, v14

    goto/16 :goto_2

    .line 88
    :cond_8
    if-nez v13, :cond_9

    .line 89
    if-lez v14, :cond_6

    add-int/lit8 v15, v8, -0x1

    if-ge v14, v15, :cond_6

    .line 90
    aget-object v15, v3, v13

    add-int/lit8 v16, v14, -0x1

    aget-object v15, v15, v16

    const/16 v16, 0x0

    aget-object v17, p2, v13

    aget-object v17, v17, v14

    invoke-virtual/range {v17 .. v17}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v17

    aget-object v18, p2, v13

    add-int/lit8 v19, v14, -0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v15, v0, v1}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v11

    .line 91
    aget-object v15, v3, v13

    new-instance v16, Ljp/sourceforge/qrcode/geom/Point;

    invoke-virtual {v11}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v17

    invoke-virtual {v11}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v18

    invoke-direct/range {v16 .. v18}, Ljp/sourceforge/qrcode/geom/Point;-><init>(II)V

    aput-object v16, v15, v14

    .line 92
    sget-object v15, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    aget-object v16, v3, v13

    aget-object v16, v16, v14

    const v17, 0xff88888

    invoke-interface/range {v15 .. v17}, Ljp/sourceforge/qrcode/util/DebugCanvas;->drawCross(Ljp/sourceforge/qrcode/geom/Point;I)V

    goto/16 :goto_3

    .line 96
    :cond_9
    add-int/lit8 v15, v13, -0x1

    aget-object v15, v3, v15

    aget-object v15, v15, v14

    aget-object v16, p2, v13

    aget-object v16, v16, v14

    invoke-virtual/range {v16 .. v16}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v16

    add-int/lit8 v17, v13, -0x1

    aget-object v17, p2, v17

    aget-object v17, v17, v14

    invoke-virtual/range {v17 .. v17}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v17

    sub-int v16, v16, v17

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v15, v0, v1}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v9

    .line 97
    .local v9, "t1":Ljp/sourceforge/qrcode/geom/Point;
    aget-object v15, v3, v13

    add-int/lit8 v16, v14, -0x1

    aget-object v15, v15, v16

    const/16 v16, 0x0

    aget-object v17, p2, v13

    aget-object v17, v17, v14

    invoke-virtual/range {v17 .. v17}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v17

    aget-object v18, p2, v13

    add-int/lit8 v19, v14, -0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v15, v0, v1}, Ljp/sourceforge/qrcode/geom/Axis;->translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v10

    .line 98
    .local v10, "t2":Ljp/sourceforge/qrcode/geom/Point;
    aget-object v15, v3, v13

    new-instance v16, Ljp/sourceforge/qrcode/geom/Point;

    invoke-virtual {v9}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v17

    invoke-virtual {v10}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v18

    add-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    invoke-virtual {v9}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v18

    invoke-virtual {v10}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v19

    add-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    add-int/lit8 v18, v18, 0x1

    invoke-direct/range {v16 .. v18}, Ljp/sourceforge/qrcode/geom/Point;-><init>(II)V

    aput-object v16, v15, v14

    goto/16 :goto_3
.end method

.method public static getLogicalCenter(Ljp/sourceforge/qrcode/pattern/FinderPattern;)[[Ljp/sourceforge/qrcode/geom/Point;
    .locals 9
    .param p0, "finderPattern"    # Ljp/sourceforge/qrcode/pattern/FinderPattern;

    .prologue
    const/4 v7, 0x1

    .line 286
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/pattern/FinderPattern;->getVersion()I

    move-result v4

    .line 287
    .local v4, "version":I
    filled-new-array {v7, v7}, [I

    move-result-object v5

    const-class v6, Ljp/sourceforge/qrcode/geom/Point;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljp/sourceforge/qrcode/geom/Point;

    .line 288
    .local v1, "logicalCenters":[[Ljp/sourceforge/qrcode/geom/Point;
    new-array v2, v7, [I

    .line 296
    .local v2, "logicalSeeds":[I
    invoke-static {v4}, Ljp/sourceforge/qrcode/pattern/LogicalSeed;->getSeed(I)[I

    move-result-object v2

    .line 297
    array-length v5, v2

    array-length v6, v2

    filled-new-array {v5, v6}, [I

    move-result-object v5

    const-class v6, Ljp/sourceforge/qrcode/geom/Point;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "logicalCenters":[[Ljp/sourceforge/qrcode/geom/Point;
    check-cast v1, [[Ljp/sourceforge/qrcode/geom/Point;

    .line 300
    .restart local v1    # "logicalCenters":[[Ljp/sourceforge/qrcode/geom/Point;
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_0
    array-length v5, v1

    if-lt v0, v5, :cond_0

    .line 305
    return-object v1

    .line 301
    :cond_0
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_1
    array-length v5, v1

    if-lt v3, v5, :cond_1

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_1
    aget-object v5, v1, v3

    new-instance v6, Ljp/sourceforge/qrcode/geom/Point;

    aget v7, v2, v3

    aget v8, v2, v0

    invoke-direct {v6, v7, v8}, Ljp/sourceforge/qrcode/geom/Point;-><init>(II)V

    aput-object v6, v5, v0

    .line 301
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method static getPrecisionCenter([[ZLjp/sourceforge/qrcode/geom/Point;)Ljp/sourceforge/qrcode/geom/Point;
    .locals 16
    .param p0, "image"    # [[Z
    .param p1, "targetPoint"    # Ljp/sourceforge/qrcode/geom/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/sourceforge/qrcode/exception/AlignmentPatternNotFoundException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-virtual/range {p1 .. p1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v8

    .local v8, "tx":I
    invoke-virtual/range {p1 .. p1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v9

    .line 236
    .local v9, "ty":I
    if-ltz v8, :cond_0

    if-ltz v9, :cond_0

    move-object/from16 v0, p0

    array-length v13, v0

    add-int/lit8 v13, v13, -0x1

    if-gt v8, v13, :cond_0

    const/4 v13, 0x0

    aget-object v13, p0, v13

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    if-le v9, v13, :cond_1

    .line 237
    :cond_0
    new-instance v13, Ljp/sourceforge/qrcode/exception/AlignmentPatternNotFoundException;

    const-string v14, "Alignment Pattern finder exceeded out of image"

    invoke-direct {v13, v14}, Ljp/sourceforge/qrcode/exception/AlignmentPatternNotFoundException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 239
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v13

    aget-object v13, p0, v13

    invoke-virtual/range {p1 .. p1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v14

    aget-boolean v13, v13, v14

    if-nez v13, :cond_3

    .line 240
    const/4 v6, 0x0

    .line 241
    .local v6, "scope":I
    const/4 v3, 0x0

    .line 242
    .local v3, "found":Z
    :cond_2
    if-eqz v3, :cond_8

    .line 260
    .end local v3    # "found":Z
    .end local v6    # "scope":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v5

    .local v5, "rx":I
    move v4, v5

    .local v4, "lx":I
    move v11, v5

    .line 261
    .local v11, "x":I
    invoke-virtual/range {p1 .. p1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v2

    .local v2, "dy":I
    move v10, v2

    .local v10, "uy":I
    move v12, v2

    .line 264
    .local v12, "y":I
    :goto_0
    const/4 v13, 0x1

    if-lt v4, v13, :cond_4

    add-int/lit8 v13, v4, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v12, v13, v12}, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->targetPointOnTheCorner([[ZIIII)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 265
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    array-length v13, v0

    add-int/lit8 v13, v13, -0x1

    if-ge v5, v13, :cond_5

    add-int/lit8 v13, v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5, v12, v13, v12}, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->targetPointOnTheCorner([[ZIIII)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 266
    :cond_5
    :goto_2
    const/4 v13, 0x1

    if-lt v10, v13, :cond_6

    add-int/lit8 v13, v10, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v11, v10, v11, v13}, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->targetPointOnTheCorner([[ZIIII)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 267
    :cond_6
    :goto_3
    const/4 v13, 0x0

    aget-object v13, p0, v13

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    if-ge v2, v13, :cond_7

    add-int/lit8 v13, v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v11, v2, v11, v13}, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->targetPointOnTheCorner([[ZIIII)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 269
    :cond_7
    new-instance v13, Ljp/sourceforge/qrcode/geom/Point;

    add-int v14, v4, v5

    add-int/lit8 v14, v14, 0x1

    div-int/lit8 v14, v14, 0x2

    add-int v15, v10, v2

    add-int/lit8 v15, v15, 0x1

    div-int/lit8 v15, v15, 0x2

    invoke-direct {v13, v14, v15}, Ljp/sourceforge/qrcode/geom/Point;-><init>(II)V

    return-object v13

    .line 243
    .end local v2    # "dy":I
    .end local v4    # "lx":I
    .end local v5    # "rx":I
    .end local v10    # "uy":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    .restart local v3    # "found":Z
    .restart local v6    # "scope":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 244
    move v2, v6

    .restart local v2    # "dy":I
    :goto_4
    neg-int v13, v6

    if-le v2, v13, :cond_2

    .line 245
    move v1, v6

    .local v1, "dx":I
    move-object/from16 v7, p1

    .end local p1    # "targetPoint":Ljp/sourceforge/qrcode/geom/Point;
    .local v7, "targetPoint":Ljp/sourceforge/qrcode/geom/Point;
    :goto_5
    neg-int v13, v6

    if-gt v1, v13, :cond_9

    .line 244
    add-int/lit8 v2, v2, -0x1

    move-object/from16 p1, v7

    .end local v7    # "targetPoint":Ljp/sourceforge/qrcode/geom/Point;
    .restart local p1    # "targetPoint":Ljp/sourceforge/qrcode/geom/Point;
    goto :goto_4

    .line 246
    .end local p1    # "targetPoint":Ljp/sourceforge/qrcode/geom/Point;
    .restart local v7    # "targetPoint":Ljp/sourceforge/qrcode/geom/Point;
    :cond_9
    invoke-virtual {v7}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v13

    add-int v11, v13, v1

    .line 247
    .restart local v11    # "x":I
    invoke-virtual {v7}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v13

    add-int v12, v13, v2

    .line 248
    .restart local v12    # "y":I
    if-ltz v11, :cond_a

    if-ltz v12, :cond_a

    move-object/from16 v0, p0

    array-length v13, v0

    add-int/lit8 v13, v13, -0x1

    if-gt v11, v13, :cond_a

    const/4 v13, 0x0

    aget-object v13, p0, v13

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    if-le v12, v13, :cond_b

    .line 249
    :cond_a
    new-instance v13, Ljp/sourceforge/qrcode/exception/AlignmentPatternNotFoundException;

    const-string v14, "Alignment Pattern finder exceeded out of image"

    invoke-direct {v13, v14}, Ljp/sourceforge/qrcode/exception/AlignmentPatternNotFoundException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 250
    :cond_b
    aget-object v13, p0, v11

    aget-boolean v13, v13, v12

    if-eqz v13, :cond_10

    .line 251
    new-instance p1, Ljp/sourceforge/qrcode/geom/Point;

    invoke-virtual {v7}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v13

    add-int/2addr v13, v1

    invoke-virtual {v7}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v14

    add-int/2addr v14, v2

    move-object/from16 v0, p1

    invoke-direct {v0, v13, v14}, Ljp/sourceforge/qrcode/geom/Point;-><init>(II)V

    .line 252
    .end local v7    # "targetPoint":Ljp/sourceforge/qrcode/geom/Point;
    .restart local p1    # "targetPoint":Ljp/sourceforge/qrcode/geom/Point;
    sget-object v13, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->canvas:Ljp/sourceforge/qrcode/util/DebugCanvas;

    const v14, 0xff88888

    move-object/from16 v0, p1

    invoke-interface {v13, v0, v14}, Ljp/sourceforge/qrcode/util/DebugCanvas;->drawPoint(Ljp/sourceforge/qrcode/geom/Point;I)V

    .line 253
    const/4 v3, 0x1

    .line 245
    :goto_6
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v7, p1

    .end local p1    # "targetPoint":Ljp/sourceforge/qrcode/geom/Point;
    .restart local v7    # "targetPoint":Ljp/sourceforge/qrcode/geom/Point;
    goto :goto_5

    .line 264
    .end local v1    # "dx":I
    .end local v3    # "found":Z
    .end local v6    # "scope":I
    .end local v7    # "targetPoint":Ljp/sourceforge/qrcode/geom/Point;
    .restart local v4    # "lx":I
    .restart local v5    # "rx":I
    .restart local v10    # "uy":I
    .restart local p1    # "targetPoint":Ljp/sourceforge/qrcode/geom/Point;
    :cond_c
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    .line 265
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 266
    :cond_e
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_2

    .line 267
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .end local v4    # "lx":I
    .end local v5    # "rx":I
    .end local v10    # "uy":I
    .end local p1    # "targetPoint":Ljp/sourceforge/qrcode/geom/Point;
    .restart local v1    # "dx":I
    .restart local v3    # "found":Z
    .restart local v6    # "scope":I
    .restart local v7    # "targetPoint":Ljp/sourceforge/qrcode/geom/Point;
    :cond_10
    move-object/from16 p1, v7

    .end local v7    # "targetPoint":Ljp/sourceforge/qrcode/geom/Point;
    .restart local p1    # "targetPoint":Ljp/sourceforge/qrcode/geom/Point;
    goto :goto_6
.end method

.method static targetPointOnTheCorner([[ZIIII)Z
    .locals 2
    .param p0, "image"    # [[Z
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "nx"    # I
    .param p4, "ny"    # I

    .prologue
    const/4 v0, 0x0

    .line 273
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    array-length v1, p0

    if-gt p1, v1, :cond_0

    aget-object v1, p0, v0

    array-length v1, v1

    if-gt p2, v1, :cond_0

    array-length v1, p0

    if-gt p3, v1, :cond_0

    aget-object v1, p0, v0

    array-length v1, v1

    if-le p4, v1, :cond_1

    .line 275
    :cond_0
    new-instance v0, Ljp/sourceforge/qrcode/exception/AlignmentPatternNotFoundException;

    const-string v1, "Alignment Pattern Finder exceeded image edge"

    invoke-direct {v0, v1}, Ljp/sourceforge/qrcode/exception/AlignmentPatternNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_1
    aget-object v1, p0, p1

    aget-boolean v1, v1, p2

    if-nez v1, :cond_2

    .line 280
    aget-object v1, p0, p3

    aget-boolean v1, v1, p4

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method


# virtual methods
.method public getCenter()[[Ljp/sourceforge/qrcode/geom/Point;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->center:[[Ljp/sourceforge/qrcode/geom/Point;

    return-object v0
.end method

.method public getLogicalDistance()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->patternDistance:I

    return v0
.end method

.method public setCenter([[Ljp/sourceforge/qrcode/geom/Point;)V
    .locals 0
    .param p1, "center"    # [[Ljp/sourceforge/qrcode/geom/Point;

    .prologue
    .line 45
    iput-object p1, p0, Ljp/sourceforge/qrcode/pattern/AlignmentPattern;->center:[[Ljp/sourceforge/qrcode/geom/Point;

    .line 46
    return-void
.end method
