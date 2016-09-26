.class Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;
.super Landroid/view/View;
.source "BalloonHint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/keyboard/BalloonHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BalloonView"
.end annotation


# static fields
.field private static final SUSPENSION_POINTS:Ljava/lang/String; = "..."


# instance fields
.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabeColor:I

.field private mLabel:Ljava/lang/String;

.field private mPaintLabel:Landroid/graphics/Paint;

.field private mSuspensionPointsWidth:F

.field final synthetic this$0:Lcom/lzx/iteam/keyboard/BalloonHint;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/keyboard/BalloonHint;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 363
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->this$0:Lcom/lzx/iteam/keyboard/BalloonHint;

    .line 364
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 353
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mLabeColor:I

    .line 365
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    .line 366
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mLabeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 367
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 368
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 369
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 370
    return-void
.end method

.method private getLimitedLabelForDrawing(Ljava/lang/String;F)Ljava/lang/String;
    .locals 5
    .param p1, "rawLabel"    # Ljava/lang/String;
    .param p2, "widthToDraw"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 461
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 462
    .local v0, "subLen":I
    if-gt v0, v4, :cond_0

    .line 467
    .end local p1    # "rawLabel":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 464
    .restart local p1    # "rawLabel":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 465
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    .line 466
    .local v1, "width":F
    iget v2, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mSuspensionPointsWidth:F

    add-float/2addr v2, v1

    cmpg-float v2, v2, p2

    if-lez v2, :cond_1

    if-lt v4, v0, :cond_0

    .line 467
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 467
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->getWidth()I

    move-result v10

    .line 429
    .local v10, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->getHeight()I

    move-result v2

    .line 430
    .local v2, "height":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_1

    .line 431
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    sub-int v13, v10, v13

    div-int/lit8 v6, v13, 0x2

    .line 432
    .local v6, "marginLeft":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    sub-int v13, v10, v13

    sub-int v7, v13, v6

    .line 434
    .local v7, "marginRight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    sub-int v13, v2, v13

    div-int/lit8 v8, v13, 0x2

    .line 435
    .local v8, "marginTop":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    sub-int v13, v2, v13

    sub-int v5, v13, v8

    .line 437
    .local v5, "marginBottom":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    sub-int v14, v10, v7

    .line 438
    sub-int v15, v2, v5

    .line 437
    invoke-virtual {v13, v6, v8, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 439
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 457
    .end local v5    # "marginBottom":I
    .end local v6    # "marginLeft":I
    .end local v7    # "marginRight":I
    .end local v8    # "marginTop":I
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    if-eqz v13, :cond_0

    .line 441
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 442
    .local v3, "labelMeasuredWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->getPaddingLeft()I

    move-result v13

    int-to-float v11, v13

    .line 443
    .local v11, "x":F
    int-to-float v13, v10

    sub-float/2addr v13, v3

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->getPaddingLeft()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->getPaddingRight()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v11, v13

    .line 444
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    .line 445
    .local v4, "labelToDraw":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->getPaddingLeft()I

    move-result v13

    int-to-float v13, v13

    cmpg-float v13, v11, v13

    if-gez v13, :cond_2

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->getPaddingLeft()I

    move-result v13

    int-to-float v11, v13

    .line 447
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->getPaddingLeft()I

    move-result v14

    sub-int v14, v10, v14

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    .line 447
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->getLimitedLabelForDrawing(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    .line 451
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v1, v13, v14

    .line 452
    .local v1, "fontHeight":I
    sub-int v13, v2, v1

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float v9, v13, v14

    .line 454
    .local v9, "marginY":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v13, v13

    sub-float v13, v9, v13

    invoke-static {}, Lcom/lzx/iteam/keyboard/Environment;->getInstance()Lcom/lzx/iteam/keyboard/Environment;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lzx/iteam/keyboard/Environment;->getBalloonTextPlus()I

    move-result v14

    int-to-float v14, v14

    sub-float v12, v13, v14

    .line 455
    .local v12, "y":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, -0x80000000

    .line 390
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 391
    .local v5, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 392
    .local v0, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 393
    .local v6, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 395
    .local v1, "heightSize":I
    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v7, :cond_0

    .line 396
    invoke-virtual {p0, v6, v1}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->setMeasuredDimension(II)V

    .line 424
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->getPaddingRight()I

    move-result v8

    add-int v4, v7, v8

    .line 401
    .local v4, "measuredWidth":I
    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->getPaddingBottom()I

    move-result v8

    add-int v3, v7, v8

    .line 402
    .local v3, "measuredHeight":I
    iget-object v7, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_7

    .line 403
    iget-object v7, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v4, v7

    .line 404
    iget-object v7, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v3, v7

    .line 409
    :cond_1
    :goto_1
    if-gt v6, v4, :cond_2

    if-ne v5, v9, :cond_3

    .line 410
    :cond_2
    move v4, v6

    .line 413
    :cond_3
    if-gt v1, v3, :cond_4

    .line 414
    if-ne v0, v9, :cond_5

    .line 415
    :cond_4
    move v3, v1

    .line 418
    :cond_5
    invoke-static {}, Lcom/lzx/iteam/keyboard/Environment;->getInstance()Lcom/lzx/iteam/keyboard/Environment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lzx/iteam/keyboard/Environment;->getScreenWidth()I

    move-result v7

    .line 419
    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->getPaddingLeft()I

    move-result v8

    .line 418
    sub-int/2addr v7, v8

    .line 419
    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->getPaddingRight()I

    move-result v8

    .line 418
    sub-int v2, v7, v8

    .line 420
    .local v2, "maxWidth":I
    if-le v4, v2, :cond_6

    .line 421
    move v4, v2

    .line 423
    :cond_6
    invoke-virtual {p0, v4, v3}, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 405
    .end local v2    # "maxWidth":I
    :cond_7
    iget-object v7, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 406
    iget-object v7, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v4, v7

    .line 407
    iget-object v7, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v7, v7, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v8, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v8, v8, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v3, v7

    goto :goto_1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 374
    return-void
.end method

.method public setTextConfig(Ljava/lang/String;FZI)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "fontSize"    # F
    .param p3, "textBold"    # Z
    .param p4, "textColor"    # I

    .prologue
    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 380
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 382
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 383
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 384
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 385
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/keyboard/BalloonHint$BalloonView;->mSuspensionPointsWidth:F

    .line 386
    return-void
.end method
