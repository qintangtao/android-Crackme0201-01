.class public Lcom/lzx/iteam/widget/ChartView;
.super Landroid/view/View;
.source "ChartView.java"


# instance fields
.field private mAa:Z

.field private mCenterPoint:Landroid/graphics/Point;

.field private mChartProps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/widget/ChartProp;",
            ">;"
        }
    .end annotation
.end field

.field private mChartsNum:I

.field private mR:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mStartAngle:F

.field private mWizardLineLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0}, Lcom/lzx/iteam/widget/ChartView;->initParams()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lcom/lzx/iteam/widget/ChartView;->initParams()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-direct {p0}, Lcom/lzx/iteam/widget/ChartView;->initParams()V

    .line 50
    return-void
.end method

.method private createChartProp(I)V
    .locals 3
    .param p1, "chartsNum"    # I

    .prologue
    .line 147
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 153
    return-void

    .line 149
    :cond_0
    new-instance v0, Lcom/lzx/iteam/widget/ChartProp;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/widget/ChartProp;-><init>(Lcom/lzx/iteam/widget/ChartView;)V

    .line 150
    .local v0, "chartProp":Lcom/lzx/iteam/widget/ChartProp;
    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/ChartProp;->setId(I)V

    .line 151
    iget-object v2, p0, Lcom/lzx/iteam/widget/ChartView;->mChartProps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getPosibleChartProp(D)Lcom/lzx/iteam/widget/ChartProp;
    .locals 11
    .param p1, "angle"    # D

    .prologue
    const-wide v8, 0x4076800000000000L    # 360.0

    .line 238
    iget-object v3, p0, Lcom/lzx/iteam/widget/ChartView;->mChartProps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 239
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 249
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 241
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/widget/ChartView;->mChartProps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/ChartProp;

    .line 242
    .local v0, "chartProp":Lcom/lzx/iteam/widget/ChartProp;
    const-string v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "chartProp S angle = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/ChartProp;->getStartAngle()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", chartProp E angle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/ChartProp;->getEndAngle()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v0}, Lcom/lzx/iteam/widget/ChartProp;->getStartAngle()F

    move-result v3

    float-to-double v4, v3

    cmpl-double v3, p1, v4

    if-lez v3, :cond_2

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/ChartProp;->getEndAngle()F

    move-result v3

    float-to-double v4, v3

    cmpg-double v3, p1, v4

    if-lez v3, :cond_0

    .line 244
    :cond_2
    add-double v4, p1, v8

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/ChartProp;->getStartAngle()F

    move-result v3

    float-to-double v6, v3

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3

    add-double v4, p1, v8

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/ChartProp;->getEndAngle()F

    move-result v3

    float-to-double v6, v3

    cmpg-double v3, v4, v6

    if-lez v3, :cond_0

    .line 239
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getUpChartProp(FF)Lcom/lzx/iteam/widget/ChartProp;
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 195
    iget-object v3, p0, Lcom/lzx/iteam/widget/ChartView;->mCenterPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float v3, p2, v3

    float-to-double v4, v3

    iget-object v3, p0, Lcom/lzx/iteam/widget/ChartView;->mCenterPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double v0, v4, v6

    .line 196
    .local v0, "angle":D
    const-wide/16 v4, 0x0

    cmpg-double v3, v0, v4

    if-gez v3, :cond_0

    .line 198
    const-wide v4, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v4

    .line 200
    :cond_0
    const-string v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "up angle = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0, v0, v1}, Lcom/lzx/iteam/widget/ChartView;->getPosibleChartProp(D)Lcom/lzx/iteam/widget/ChartProp;

    move-result-object v2

    .line 203
    .local v2, "chartPropPosible":Lcom/lzx/iteam/widget/ChartProp;
    if-eqz v2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/widget/ChartView;->inChartZone(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    .end local v2    # "chartPropPosible":Lcom/lzx/iteam/widget/ChartProp;
    :goto_0
    return-object v2

    .restart local v2    # "chartPropPosible":Lcom/lzx/iteam/widget/ChartProp;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private inChartZone(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 220
    iget-object v3, p0, Lcom/lzx/iteam/widget/ChartView;->mCenterPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    iget-object v4, p0, Lcom/lzx/iteam/widget/ChartView;->mCenterPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-float v4, p1, v4

    mul-float v1, v3, v4

    .line 221
    .local v1, "a2":F
    iget-object v3, p0, Lcom/lzx/iteam/widget/ChartView;->mCenterPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float v3, p2, v3

    iget-object v4, p0, Lcom/lzx/iteam/widget/ChartView;->mCenterPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    mul-float v2, v3, v4

    .line 222
    .local v2, "b2":F
    iget v3, p0, Lcom/lzx/iteam/widget/ChartView;->mR:I

    iget v4, p0, Lcom/lzx/iteam/widget/ChartView;->mR:I

    mul-int/2addr v3, v4

    int-to-float v0, v3

    .line 223
    .local v0, "R2":F
    add-float v3, v1, v2

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_0

    .line 225
    const/4 v3, 0x1

    .line 227
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initParams()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x1

    .line 58
    iput-boolean v1, p0, Lcom/lzx/iteam/widget/ChartView;->mAa:Z

    .line 59
    iput v1, p0, Lcom/lzx/iteam/widget/ChartView;->mChartsNum:I

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lzx/iteam/widget/ChartView;->mChartProps:Ljava/util/ArrayList;

    .line 61
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/lzx/iteam/widget/ChartView;->mCenterPoint:Landroid/graphics/Point;

    .line 62
    const/16 v1, 0x32

    iput v1, p0, Lcom/lzx/iteam/widget/ChartView;->mR:I

    .line 63
    const/4 v1, 0x0

    iput v1, p0, Lcom/lzx/iteam/widget/ChartView;->mStartAngle:F

    .line 64
    const/16 v1, 0xa

    iput v1, p0, Lcom/lzx/iteam/widget/ChartView;->mWizardLineLength:I

    .line 66
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChartView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 67
    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    check-cast v0, Landroid/view/WindowManager;

    .line 68
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/widget/ChartView;->mScreenWidth:I

    .line 69
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/widget/ChartView;->mScreenHeight:I

    .line 70
    return-void
.end method


# virtual methods
.method public createCharts(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "chartsNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/widget/ChartProp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iput p1, p0, Lcom/lzx/iteam/widget/ChartView;->mChartsNum:I

    .line 81
    invoke-direct {p0, p1}, Lcom/lzx/iteam/widget/ChartView;->createChartProp(I)V

    .line 82
    iget-object v0, p0, Lcom/lzx/iteam/widget/ChartView;->mChartProps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 44
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 261
    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 263
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 264
    .local v9, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lzx/iteam/widget/ChartView;->mAa:Z

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 266
    move-object/from16 v0, p0

    iget v6, v0, Lcom/lzx/iteam/widget/ChartView;->mStartAngle:F

    .line 267
    .local v6, "startAngle":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/widget/ChartView;->mChartProps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v38

    .line 268
    .local v38, "size":I
    new-instance v5, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/widget/ChartView;->mCenterPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lzx/iteam/widget/ChartView;->mR:I

    sub-int/2addr v4, v8

    int-to-float v4, v4

    .line 269
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/widget/ChartView;->mCenterPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lzx/iteam/widget/ChartView;->mR:I

    sub-int/2addr v8, v10

    int-to-float v8, v8

    .line 270
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lzx/iteam/widget/ChartView;->mCenterPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/lzx/iteam/widget/ChartView;->mR:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    .line 271
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lzx/iteam/widget/ChartView;->mCenterPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/lzx/iteam/widget/ChartView;->mR:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    .line 268
    invoke-direct {v5, v4, v8, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 273
    .local v5, "oval":Landroid/graphics/RectF;
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_0
    move/from16 v0, v27

    move/from16 v1, v38

    if-lt v0, v1, :cond_0

    .line 382
    return-void

    .line 275
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/widget/ChartView;->mChartProps:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lzx/iteam/widget/ChartProp;

    .line 278
    .local v16, "chartProp":Lcom/lzx/iteam/widget/ChartProp;
    invoke-virtual/range {v16 .. v16}, Lcom/lzx/iteam/widget/ChartProp;->getColor()I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    invoke-virtual/range {v16 .. v16}, Lcom/lzx/iteam/widget/ChartProp;->getSweepAngle()F

    move-result v7

    .line 280
    .local v7, "sweepAngle":F
    const/4 v8, 0x1

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 284
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v7, v4

    add-float/2addr v4, v6

    float-to-double v10, v4

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const-wide v12, 0x4066800000000000L    # 180.0

    div-double/2addr v10, v12

    double-to-float v0, v10

    move/from16 v43, v0

    .line 285
    .local v43, "wizardLineAngle":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lzx/iteam/widget/ChartView;->mR:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lzx/iteam/widget/ChartView;->mWizardLineLength:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v4, v8

    int-to-float v0, v4

    move/from16 v17, v0

    .line 286
    .local v17, "deltaR":F
    move/from16 v0, v43

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v36

    .line 287
    .local v36, "sinAngle":D
    move/from16 v0, v43

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    .line 288
    .local v18, "cosAngle":D
    move/from16 v0, v17

    float-to-double v10, v0

    mul-double v10, v10, v18

    double-to-int v0, v10

    move/from16 v21, v0

    .line 289
    .local v21, "deltaXs":I
    move/from16 v0, v17

    float-to-double v10, v0

    mul-double v10, v10, v36

    double-to-int v0, v10

    move/from16 v23, v0

    .line 290
    .local v23, "deltaYs":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lzx/iteam/widget/ChartView;->mWizardLineLength:I

    int-to-double v10, v4

    mul-double v10, v10, v18

    double-to-int v0, v10

    move/from16 v20, v0

    .line 291
    .local v20, "deltaXl":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lzx/iteam/widget/ChartView;->mWizardLineLength:I

    int-to-double v10, v4

    mul-double v10, v10, v36

    double-to-int v0, v10

    move/from16 v22, v0

    .line 292
    .local v22, "deltaYl":I
    new-instance v30, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/widget/ChartView;->mCenterPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int v4, v4, v21

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/widget/ChartView;->mCenterPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    add-int v8, v8, v23

    move-object/from16 v0, v30

    invoke-direct {v0, v4, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 293
    .local v30, "lineSplashStart":Landroid/graphics/Point;
    new-instance v29, Landroid/graphics/Point;

    move-object/from16 v0, v30

    iget v4, v0, Landroid/graphics/Point;->x:I

    add-int v4, v4, v20

    move-object/from16 v0, v30

    iget v8, v0, Landroid/graphics/Point;->y:I

    add-int v8, v8, v22

    move-object/from16 v0, v29

    invoke-direct {v0, v4, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 294
    .local v29, "lineSplashEnd":Landroid/graphics/Point;
    const/high16 v4, -0x1000000

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 295
    move-object/from16 v0, v30

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v11, v4

    move-object/from16 v0, v30

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v12, v4

    move-object/from16 v0, v29

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v13, v4

    move-object/from16 v0, v29

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v14, v4

    move-object/from16 v10, p1

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 298
    move-object/from16 v0, v29

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/widget/ChartView;->mCenterPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    if-gt v4, v8, :cond_2

    .line 300
    move-object/from16 v0, v29

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lzx/iteam/widget/ChartView;->mWizardLineLength:I

    sub-int/2addr v4, v8

    int-to-float v11, v4

    move-object/from16 v0, v29

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v12, v4

    move-object/from16 v0, v29

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v13, v4

    move-object/from16 v0, v29

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v14, v4

    move-object/from16 v10, p1

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 308
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/lzx/iteam/widget/ChartProp;->getName()Ljava/lang/String;

    move-result-object v31

    .line 309
    .local v31, "name":Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v33

    .line 311
    .local v33, "nameLen":I
    invoke-virtual/range {v16 .. v16}, Lcom/lzx/iteam/widget/ChartProp;->getFontSize()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 312
    new-instance v35, Landroid/graphics/Rect;

    invoke-direct/range {v35 .. v35}, Landroid/graphics/Rect;-><init>()V

    .line 313
    .local v35, "rect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    move-object/from16 v2, v35

    invoke-virtual {v9, v0, v4, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 314
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->width()I

    move-result v34

    .line 315
    .local v34, "nameWidth":I
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    move-result v32

    .line 317
    .local v32, "nameHeight":I
    const-string v39, "..."

    .line 318
    .local v39, "slStr":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v9, v0, v4, v8, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 319
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->width()I

    move-result v40

    .line 321
    .local v40, "slWidth":I
    move-object/from16 v0, v29

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/widget/ChartView;->mCenterPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    if-gt v4, v8, :cond_5

    .line 323
    move-object/from16 v0, v29

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lzx/iteam/widget/ChartView;->mWizardLineLength:I

    sub-int v25, v4, v8

    .line 324
    .local v25, "endX":I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    .line 325
    .local v26, "endY":I
    move/from16 v0, v34

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    .line 327
    add-int/lit8 v28, v33, -0x1

    .line 328
    .local v28, "j":I
    :goto_2
    if-gez v28, :cond_3

    .line 339
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 340
    .local v24, "drawTextString":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v9, v0, v4, v8, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 341
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v25, v4

    int-to-float v4, v4

    div-int/lit8 v8, v32, 0x2

    add-int v8, v8, v26

    int-to-float v8, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 378
    .end local v24    # "drawTextString":Ljava/lang/String;
    .end local v28    # "j":I
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/widget/ChartProp;->setStartAngle(F)V

    .line 379
    add-float/2addr v6, v7

    .line 380
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/widget/ChartProp;->setEndAngle(F)V

    .line 273
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_0

    .line 304
    .end local v25    # "endX":I
    .end local v26    # "endY":I
    .end local v31    # "name":Ljava/lang/String;
    .end local v32    # "nameHeight":I
    .end local v33    # "nameLen":I
    .end local v34    # "nameWidth":I
    .end local v35    # "rect":Landroid/graphics/Rect;
    .end local v39    # "slStr":Ljava/lang/String;
    .end local v40    # "slWidth":I
    :cond_2
    move-object/from16 v0, v29

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v11, v4

    move-object/from16 v0, v29

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v12, v4

    move-object/from16 v0, v29

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lzx/iteam/widget/ChartView;->mWizardLineLength:I

    add-int/2addr v4, v8

    int-to-float v13, v4

    move-object/from16 v0, v29

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v14, v4

    move-object/from16 v10, p1

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 330
    .restart local v25    # "endX":I
    .restart local v26    # "endY":I
    .restart local v28    # "j":I
    .restart local v31    # "name":Ljava/lang/String;
    .restart local v32    # "nameHeight":I
    .restart local v33    # "nameLen":I
    .restart local v34    # "nameWidth":I
    .restart local v35    # "rect":Landroid/graphics/Rect;
    .restart local v39    # "slStr":Ljava/lang/String;
    .restart local v40    # "slWidth":I
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v42

    .line 331
    .local v42, "subNameString":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v0, v42

    move-object/from16 v1, v35

    invoke-virtual {v9, v0, v4, v8, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 332
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->width()I

    move-result v41

    .line 333
    .local v41, "subNameStrWidth":I
    add-int v4, v41, v40

    move/from16 v0, v25

    if-le v4, v0, :cond_1

    .line 337
    add-int/lit8 v28, v28, -0x1

    goto/16 :goto_2

    .line 346
    .end local v28    # "j":I
    .end local v41    # "subNameStrWidth":I
    .end local v42    # "subNameString":Ljava/lang/String;
    :cond_4
    sub-int v4, v25, v34

    int-to-float v4, v4

    div-int/lit8 v8, v32, 0x2

    add-int v8, v8, v26

    int-to-float v8, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v4, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 351
    .end local v25    # "endX":I
    .end local v26    # "endY":I
    :cond_5
    move-object/from16 v0, v29

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lzx/iteam/widget/ChartView;->mWizardLineLength:I

    add-int v25, v4, v8

    .line 352
    .restart local v25    # "endX":I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    .line 353
    .restart local v26    # "endY":I
    add-int v4, v34, v25

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lzx/iteam/widget/ChartView;->mScreenWidth:I

    if-le v4, v8, :cond_8

    .line 355
    add-int/lit8 v28, v33, -0x1

    .line 356
    .restart local v28    # "j":I
    :goto_4
    if-gez v28, :cond_7

    .line 367
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 368
    .restart local v24    # "drawTextString":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v9, v0, v4, v8, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 369
    move/from16 v0, v25

    int-to-float v4, v0

    div-int/lit8 v8, v32, 0x2

    add-int v8, v8, v26

    int-to-float v8, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 358
    .end local v24    # "drawTextString":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v42

    .line 359
    .restart local v42    # "subNameString":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v0, v42

    move-object/from16 v1, v35

    invoke-virtual {v9, v0, v4, v8, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 360
    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->width()I

    move-result v41

    .line 361
    .restart local v41    # "subNameStrWidth":I
    add-int v4, v41, v40

    add-int v4, v4, v25

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lzx/iteam/widget/ChartView;->mScreenWidth:I

    if-lt v4, v8, :cond_6

    .line 365
    add-int/lit8 v28, v28, -0x1

    goto :goto_4

    .line 373
    .end local v28    # "j":I
    .end local v41    # "subNameStrWidth":I
    .end local v42    # "subNameString":Ljava/lang/String;
    :cond_8
    move/from16 v0, v25

    int-to-float v4, v0

    div-int/lit8 v8, v32, 0x2

    add-int v8, v8, v26

    int-to-float v8, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v4, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 163
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 179
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setAntiAlias(Z)V
    .locals 0
    .param p1, "aa"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/lzx/iteam/widget/ChartView;->mAa:Z

    .line 104
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChartView;->invalidate()V

    .line 105
    return-void
.end method

.method public setCenter(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "centerPoint"    # Landroid/graphics/Point;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/lzx/iteam/widget/ChartView;->mCenterPoint:Landroid/graphics/Point;

    .line 115
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChartView;->invalidate()V

    .line 116
    return-void
.end method

.method public setR(I)V
    .locals 0
    .param p1, "r"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/lzx/iteam/widget/ChartView;->mR:I

    .line 126
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChartView;->invalidate()V

    .line 127
    return-void
.end method

.method public setStartAngle(F)V
    .locals 0
    .param p1, "startAngle"    # F

    .prologue
    .line 92
    iput p1, p0, Lcom/lzx/iteam/widget/ChartView;->mStartAngle:F

    .line 93
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChartView;->invalidate()V

    .line 94
    return-void
.end method

.method public setWizardLineLength(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/lzx/iteam/widget/ChartView;->mWizardLineLength:I

    .line 137
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ChartView;->invalidate()V

    .line 138
    return-void
.end method
