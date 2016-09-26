.class public Lcom/lzx/iteam/keyboard/SoftKeyboardView;
.super Landroid/view/View;
.source "SoftKeyboardView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SoftKeyboardView"


# instance fields
.field private mBalloonOnKey:Lcom/lzx/iteam/keyboard/BalloonHint;

.field private mBalloonPopup:Lcom/lzx/iteam/keyboard/BalloonHint;

.field private mContext:Landroid/content/Context;

.field private mDimSkb:Z

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mFunctionKeyTextSize:I

.field private mHintLocationToSkbContainer:[I

.field private mKeyPressed:Z

.field private mLongPressTimer:Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;

.field private mMovingNeverHidePopupBalloon:Z

.field private mNormalKeyTextSize:I

.field private mOffsetToSkbContainer:[I

.field private mPaint:Landroid/graphics/Paint;

.field private mRepeatForLongPress:Z

.field private mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

.field private mSoftKeyboard:Lcom/lzx/iteam/keyboard/SoftKeyboard;

.field private mSoundManager:Lcom/lzx/iteam/keyboard/SoundManager;

.field protected mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    iput-boolean v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mKeyPressed:Z

    .line 73
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mOffsetToSkbContainer:[I

    .line 78
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    .line 98
    iput-boolean v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mRepeatForLongPress:Z

    .line 104
    iput-boolean v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mMovingNeverHidePopupBalloon:Z

    .line 110
    new-array v0, v2, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mVibratePattern:[J

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 128
    invoke-static {p1}, Lcom/lzx/iteam/keyboard/SoundManager;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/keyboard/SoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoundManager:Lcom/lzx/iteam/keyboard/SoundManager;

    .line 129
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mContext:Landroid/content/Context;

    .line 130
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 131
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 133
    return-void

    .line 110
    nop

    :array_0
    .array-data 8
        0x1
        0x14
    .end array-data
.end method

.method private drawSoftKey(Landroid/graphics/Canvas;Lcom/lzx/iteam/keyboard/SoftKey;II)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "softKey"    # Lcom/lzx/iteam/keyboard/SoftKey;
    .param p3, "keyXMargin"    # I
    .param p4, "keyYMargin"    # I

    .prologue
    .line 453
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mKeyPressed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 454
    invoke-virtual/range {p2 .. p2}, Lcom/lzx/iteam/keyboard/SoftKey;->getKeyHlBg()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 455
    .local v4, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Lcom/lzx/iteam/keyboard/SoftKey;->getColorHl()I

    move-result v14

    .line 461
    .local v14, "textColor":I
    :goto_0
    if-eqz v4, :cond_0

    .line 462
    move-object/from16 v0, p2

    iget v0, v0, Lcom/lzx/iteam/keyboard/SoftKey;->mLeft:I

    move/from16 v17, v0

    add-int v17, v17, p3

    move-object/from16 v0, p2

    iget v0, v0, Lcom/lzx/iteam/keyboard/SoftKey;->mTop:I

    move/from16 v18, v0

    add-int v18, v18, p4

    .line 463
    move-object/from16 v0, p2

    iget v0, v0, Lcom/lzx/iteam/keyboard/SoftKey;->mRight:I

    move/from16 v19, v0

    sub-int v19, v19, p3

    move-object/from16 v0, p2

    iget v0, v0, Lcom/lzx/iteam/keyboard/SoftKey;->mBottom:I

    move/from16 v20, v0

    sub-int v20, v20, p4

    .line 462
    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 464
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 467
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/lzx/iteam/keyboard/SoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v8

    .line 468
    .local v8, "keyLabel":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/lzx/iteam/keyboard/SoftKey;->getKeyIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 469
    .local v7, "keyIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_3

    .line 470
    move-object v6, v7

    .line 471
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Lcom/lzx/iteam/keyboard/SoftKey;->width()I

    move-result v17

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    sub-int v17, v17, v18

    div-int/lit8 v10, v17, 0x2

    .line 472
    .local v10, "marginLeft":I
    invoke-virtual/range {p2 .. p2}, Lcom/lzx/iteam/keyboard/SoftKey;->width()I

    move-result v17

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    sub-int v17, v17, v18

    sub-int v11, v17, v10

    .line 474
    .local v11, "marginRight":I
    invoke-virtual/range {p2 .. p2}, Lcom/lzx/iteam/keyboard/SoftKey;->height()I

    move-result v17

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    sub-int v17, v17, v18

    div-int/lit8 v12, v17, 0x2

    .line 475
    .local v12, "marginTop":I
    invoke-virtual/range {p2 .. p2}, Lcom/lzx/iteam/keyboard/SoftKey;->height()I

    move-result v17

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    sub-int v17, v17, v18

    sub-int v9, v17, v12

    .line 477
    .local v9, "marginBottom":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/lzx/iteam/keyboard/SoftKey;->mLeft:I

    move/from16 v17, v0

    add-int v17, v17, v10

    .line 478
    move-object/from16 v0, p2

    iget v0, v0, Lcom/lzx/iteam/keyboard/SoftKey;->mTop:I

    move/from16 v18, v0

    add-int v18, v18, v12

    move-object/from16 v0, p2

    iget v0, v0, Lcom/lzx/iteam/keyboard/SoftKey;->mRight:I

    move/from16 v19, v0

    sub-int v19, v19, v11

    .line 479
    move-object/from16 v0, p2

    iget v0, v0, Lcom/lzx/iteam/keyboard/SoftKey;->mBottom:I

    move/from16 v20, v0

    sub-int v20, v20, v9

    .line 477
    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 480
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 490
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v9    # "marginBottom":I
    .end local v10    # "marginLeft":I
    .end local v11    # "marginRight":I
    .end local v12    # "marginTop":I
    :cond_1
    :goto_1
    return-void

    .line 457
    .end local v4    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v7    # "keyIcon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "keyLabel":Ljava/lang/String;
    .end local v14    # "textColor":I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/lzx/iteam/keyboard/SoftKey;->getKeyBg()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 458
    .restart local v4    # "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Lcom/lzx/iteam/keyboard/SoftKey;->getColor()I

    move-result v14

    .restart local v14    # "textColor":I
    goto/16 :goto_0

    .line 481
    .restart local v7    # "keyIcon":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "keyLabel":Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_1

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 483
    move-object/from16 v0, p2

    iget v0, v0, Lcom/lzx/iteam/keyboard/SoftKey;->mLeft:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    .line 484
    invoke-virtual/range {p2 .. p2}, Lcom/lzx/iteam/keyboard/SoftKey;->width()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v19

    sub-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    .line 483
    add-float v15, v17, v18

    .line 485
    .local v15, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v18, v0

    sub-int v5, v17, v18

    .line 486
    .local v5, "fontHeight":I
    invoke-virtual/range {p2 .. p2}, Lcom/lzx/iteam/keyboard/SoftKey;->height()I

    move-result v17

    sub-int v17, v17, v5

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v13, v17, v18

    .line 487
    .local v13, "marginY":F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/lzx/iteam/keyboard/SoftKey;->mTop:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3fc00000    # 1.5f

    div-float v18, v18, v19

    add-float v16, v17, v18

    .line 488
    .local v16, "y":F
    const/high16 v17, 0x3f800000    # 1.0f

    add-float v17, v17, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v8, v15, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method private showBalloon(Lcom/lzx/iteam/keyboard/BalloonHint;[IZ)V
    .locals 7
    .param p1, "balloon"    # Lcom/lzx/iteam/keyboard/BalloonHint;
    .param p2, "balloonLocationToSkb"    # [I
    .param p3, "movePress"    # Z

    .prologue
    .line 180
    const-wide/16 v2, 0x0

    .line 181
    .local v2, "delay":J
    if-eqz p3, :cond_0

    const-wide/16 v2, 0x0

    .line 182
    :cond_0
    invoke-virtual {p1}, Lcom/lzx/iteam/keyboard/BalloonHint;->needForceDismiss()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/lzx/iteam/keyboard/BalloonHint;->delayedDismiss(J)V

    .line 185
    :cond_1
    invoke-virtual {p1}, Lcom/lzx/iteam/keyboard/BalloonHint;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    invoke-virtual {p1, v2, v3, p2}, Lcom/lzx/iteam/keyboard/BalloonHint;->delayedShow(J[I)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_2
    invoke-virtual {p1}, Lcom/lzx/iteam/keyboard/BalloonHint;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/lzx/iteam/keyboard/BalloonHint;->getHeight()I

    move-result v6

    move-object v1, p1

    move-object v4, p2

    .line 188
    invoke-virtual/range {v1 .. v6}, Lcom/lzx/iteam/keyboard/BalloonHint;->delayedUpdate(J[III)V

    goto :goto_0
.end method

.method private tryPlayKeyDown()V
    .locals 1

    .prologue
    .line 402
    invoke-static {}, Lcom/lzx/iteam/keyboard/Settings;->getKeySound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoundManager:Lcom/lzx/iteam/keyboard/SoundManager;

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/SoundManager;->playKeyDown()V

    .line 405
    :cond_0
    return-void
.end method

.method private tryVibrate()V
    .locals 1

    .prologue
    .line 392
    invoke-static {}, Lcom/lzx/iteam/keyboard/Settings;->getVibrate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    :cond_0
    return-void
.end method


# virtual methods
.method public dimSoftKeyboard(Z)V
    .locals 0
    .param p1, "dimSkb"    # Z

    .prologue
    .line 408
    iput-boolean p1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mDimSkb:Z

    .line 409
    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->invalidate()V

    .line 410
    return-void
.end method

.method public getSoftKeyboard()Lcom/lzx/iteam/keyboard/SoftKeyboard;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyboard:Lcom/lzx/iteam/keyboard/SoftKeyboard;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyboard:Lcom/lzx/iteam/keyboard/SoftKeyboard;

    if-nez v3, :cond_0

    .line 447
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 418
    invoke-static {}, Lcom/lzx/iteam/keyboard/Environment;->getInstance()Lcom/lzx/iteam/keyboard/Environment;

    move-result-object v9

    .line 419
    .local v9, "env":Lcom/lzx/iteam/keyboard/Environment;
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/lzx/iteam/keyboard/Environment;->getKeyTextSize(Z)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mNormalKeyTextSize:I

    .line 420
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Lcom/lzx/iteam/keyboard/Environment;->getKeyTextSize(Z)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mFunctionKeyTextSize:I

    .line 422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyboard:Lcom/lzx/iteam/keyboard/SoftKeyboard;

    invoke-virtual {v3}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->getRowNum()I

    move-result v16

    .line 423
    .local v16, "rowNum":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyboard:Lcom/lzx/iteam/keyboard/SoftKeyboard;

    invoke-virtual {v3}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->getKeyXMargin()I

    move-result v13

    .line 424
    .local v13, "keyXMargin":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyboard:Lcom/lzx/iteam/keyboard/SoftKeyboard;

    invoke-virtual {v3}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->getKeyYMargin()I

    move-result v14

    .line 425
    .local v14, "keyYMargin":I
    const/4 v15, 0x0

    .local v15, "row":I
    :goto_1
    move/from16 v0, v16

    if-lt v15, v0, :cond_2

    .line 441
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mDimSkb:Z

    if-eqz v3, :cond_1

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x60000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 443
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getWidth()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getHeight()I

    move-result v3

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 446
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 426
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyboard:Lcom/lzx/iteam/keyboard/SoftKeyboard;

    invoke-virtual {v3, v15}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->getKeyRowForDisplay(I)Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;

    move-result-object v12

    .line 427
    .local v12, "keyRow":Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;
    if-nez v12, :cond_4

    .line 425
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 428
    :cond_4
    iget-object v0, v12, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    move-object/from16 v18, v0

    .line 429
    .local v18, "softKeys":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/keyboard/SoftKey;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v11

    .line 430
    .local v11, "keyNum":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v11, :cond_3

    .line 431
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lzx/iteam/keyboard/SoftKey;

    .line 432
    .local v17, "softKey":Lcom/lzx/iteam/keyboard/SoftKey;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    iget v3, v3, Lcom/lzx/iteam/keyboard/SoftKeyType;->mKeyTypeId:I

    if-nez v3, :cond_5

    .line 433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mNormalKeyTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 437
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v13, v14}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->drawSoftKey(Landroid/graphics/Canvas;Lcom/lzx/iteam/keyboard/SoftKey;II)V

    .line 430
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 435
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mFunctionKeyTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_3
.end method

.method public onKeyMove(II)Lcom/lzx/iteam/keyboard/SoftKey;
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    .line 356
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 387
    :goto_0
    return-object v0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getPaddingTop()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/keyboard/SoftKey;->moveWithinKey(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    goto :goto_0

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    iget v1, v1, Lcom/lzx/iteam/keyboard/SoftKey;->mLeft:I

    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    iget v2, v2, Lcom/lzx/iteam/keyboard/SoftKey;->mTop:I

    .line 364
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    iget v3, v3, Lcom/lzx/iteam/keyboard/SoftKey;->mRight:I

    iget-object v4, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    iget v4, v4, Lcom/lzx/iteam/keyboard/SoftKey;->mBottom:I

    .line 363
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 366
    iget-boolean v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mRepeatForLongPress:Z

    if-eqz v0, :cond_6

    .line 367
    iget-boolean v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mMovingNeverHidePopupBalloon:Z

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mLongPressTimer:Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;

    invoke-virtual {p0, p1, p2, v0, v5}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->onKeyPress(IILcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;Z)Lcom/lzx/iteam/keyboard/SoftKey;

    move-result-object v0

    goto :goto_0

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonOnKey:Lcom/lzx/iteam/keyboard/BalloonHint;

    if-eqz v0, :cond_5

    .line 372
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonOnKey:Lcom/lzx/iteam/keyboard/BalloonHint;

    invoke-virtual {v0, v6, v7}, Lcom/lzx/iteam/keyboard/BalloonHint;->delayedDismiss(J)V

    .line 377
    :goto_1
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/SoftKey;->needBalloon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonPopup:Lcom/lzx/iteam/keyboard/BalloonHint;

    invoke-virtual {v0, v6, v7}, Lcom/lzx/iteam/keyboard/BalloonHint;->delayedDismiss(J)V

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mLongPressTimer:Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;

    if-eqz v0, :cond_4

    .line 382
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mLongPressTimer:Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;

    invoke-virtual {v0}, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->removeTimer()Z

    .line 384
    :cond_4
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mLongPressTimer:Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;

    invoke-virtual {p0, p1, p2, v0, v5}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->onKeyPress(IILcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;Z)Lcom/lzx/iteam/keyboard/SoftKey;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_5
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 387
    :cond_6
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mLongPressTimer:Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;

    invoke-virtual {p0, p1, p2, v0, v5}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->onKeyPress(IILcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;Z)Lcom/lzx/iteam/keyboard/SoftKey;

    move-result-object v0

    goto :goto_0
.end method

.method public onKeyPress(IILcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;Z)Lcom/lzx/iteam/keyboard/SoftKey;
    .locals 20
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "longPressTimer"    # Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;
    .param p4, "movePress"    # Z

    .prologue
    .line 217
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mKeyPressed:Z

    .line 218
    const/16 v16, 0x0

    .line 219
    .local v16, "moveWithinPreviousKey":Z
    if-eqz p4, :cond_2

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyboard:Lcom/lzx/iteam/keyboard/SoftKeyboard;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mapToKey(II)Lcom/lzx/iteam/keyboard/SoftKey;

    move-result-object v17

    .line 221
    .local v17, "newKey":Lcom/lzx/iteam/keyboard/SoftKey;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    move-object/from16 v0, v17

    if-ne v0, v2, :cond_0

    const/16 v16, 0x1

    .line 222
    :cond_0
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    .line 226
    .end local v17    # "newKey":Lcom/lzx/iteam/keyboard/SoftKey;
    :goto_0
    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    if-nez v2, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    .line 328
    :goto_1
    return-object v2

    .line 224
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyboard:Lcom/lzx/iteam/keyboard/SoftKeyboard;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->mapToKey(II)Lcom/lzx/iteam/keyboard/SoftKey;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    goto :goto_0

    .line 227
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mKeyPressed:Z

    .line 229
    if-nez p4, :cond_4

    .line 230
    invoke-direct/range {p0 .. p0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->tryPlayKeyDown()V

    .line 231
    invoke-direct/range {p0 .. p0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->tryVibrate()V

    .line 234
    :cond_4
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mLongPressTimer:Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;

    .line 236
    if-nez p4, :cond_8

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SoftKey;->getPopupResId()I

    move-result v2

    if-gtz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SoftKey;->repeatable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 238
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mLongPressTimer:Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->startTimer()V

    .line 247
    :cond_6
    :goto_2
    invoke-static {}, Lcom/lzx/iteam/keyboard/Environment;->getInstance()Lcom/lzx/iteam/keyboard/Environment;

    move-result-object v10

    .line 249
    .local v10, "env":Lcom/lzx/iteam/keyboard/Environment;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonOnKey:Lcom/lzx/iteam/keyboard/BalloonHint;

    if-eqz v2, :cond_b

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SoftKey;->getKeyHlBg()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 251
    .local v13, "keyHlBg":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonOnKey:Lcom/lzx/iteam/keyboard/BalloonHint;

    invoke-virtual {v2, v13}, Lcom/lzx/iteam/keyboard/BalloonHint;->setBalloonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyboard:Lcom/lzx/iteam/keyboard/SoftKeyboard;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->getKeyXMargin()I

    move-result v14

    .line 255
    .local v14, "keyXMargin":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyboard:Lcom/lzx/iteam/keyboard/SoftKeyboard;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->getKeyYMargin()I

    move-result v15

    .line 256
    .local v15, "keyYMargin":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SoftKey;->width()I

    move-result v2

    mul-int/lit8 v3, v14, 0x2

    sub-int v7, v2, v3

    .line 257
    .local v7, "desired_width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SoftKey;->height()I

    move-result v2

    mul-int/lit8 v3, v15, 0x2

    sub-int v8, v2, v3

    .line 259
    .local v8, "desired_height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    iget-object v2, v2, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    iget v2, v2, Lcom/lzx/iteam/keyboard/SoftKeyType;->mKeyTypeId:I

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v10, v2}, Lcom/lzx/iteam/keyboard/Environment;->getKeyTextSize(Z)I

    move-result v2

    int-to-float v4, v2

    .line 260
    .local v4, "textSize":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SoftKey;->getKeyIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 261
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_a

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonOnKey:Lcom/lzx/iteam/keyboard/BalloonHint;

    invoke-virtual {v2, v11, v7, v8}, Lcom/lzx/iteam/keyboard/BalloonHint;->setBalloonConfig(Landroid/graphics/drawable/Drawable;II)V

    .line 270
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getPaddingLeft()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    iget v6, v6, Lcom/lzx/iteam/keyboard/SoftKey;->mLeft:I

    add-int/2addr v5, v6

    .line 271
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonOnKey:Lcom/lzx/iteam/keyboard/BalloonHint;

    invoke-virtual {v6}, Lcom/lzx/iteam/keyboard/BalloonHint;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lzx/iteam/keyboard/SoftKey;->width()I

    move-result v18

    sub-int v6, v6, v18

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    .line 270
    aput v5, v2, v3

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v3, 0x0

    aget v5, v2, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mOffsetToSkbContainer:[I

    const/16 v18, 0x0

    aget v6, v6, v18

    add-int/2addr v5, v6

    aput v5, v2, v3

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getPaddingTop()I

    move-result v5

    .line 275
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    iget v6, v6, Lcom/lzx/iteam/keyboard/SoftKey;->mBottom:I

    sub-int/2addr v6, v15

    add-int/2addr v5, v6

    .line 276
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonOnKey:Lcom/lzx/iteam/keyboard/BalloonHint;

    invoke-virtual {v6}, Lcom/lzx/iteam/keyboard/BalloonHint;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 274
    aput v5, v2, v3

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v3, 0x1

    aget v5, v2, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mOffsetToSkbContainer:[I

    const/16 v18, 0x1

    aget v6, v6, v18

    add-int/2addr v5, v6

    aput v5, v2, v3

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonOnKey:Lcom/lzx/iteam/keyboard/BalloonHint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v2, v3, v1}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->showBalloon(Lcom/lzx/iteam/keyboard/BalloonHint;[IZ)V

    .line 286
    .end local v4    # "textSize":F
    .end local v7    # "desired_width":I
    .end local v8    # "desired_height":I
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "keyHlBg":Landroid/graphics/drawable/Drawable;
    .end local v14    # "keyXMargin":I
    .end local v15    # "keyYMargin":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SoftKey;->needBalloon()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SoftKey;->getBalloonBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SoftKey;->getBalloonBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 293
    .local v9, "balloonBg":Landroid/graphics/drawable/Drawable;
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonPopup:Lcom/lzx/iteam/keyboard/BalloonHint;

    invoke-virtual {v2, v9}, Lcom/lzx/iteam/keyboard/BalloonHint;->setBalloonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SoftKey;->width()I

    move-result v2

    invoke-virtual {v10}, Lcom/lzx/iteam/keyboard/Environment;->getKeyBalloonWidthPlus()I

    move-result v3

    add-int v7, v2, v3

    .line 296
    .restart local v7    # "desired_width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SoftKey;->height()I

    move-result v2

    .line 297
    invoke-virtual {v10}, Lcom/lzx/iteam/keyboard/Environment;->getKeyBalloonHeightPlus()I

    move-result v3

    .line 296
    add-int v8, v2, v3

    .line 299
    .restart local v8    # "desired_height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    iget-object v2, v2, Lcom/lzx/iteam/keyboard/SoftKey;->mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

    iget v2, v2, Lcom/lzx/iteam/keyboard/SoftKeyType;->mKeyTypeId:I

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    :goto_7
    invoke-virtual {v10, v2}, Lcom/lzx/iteam/keyboard/Environment;->getBalloonTextSize(Z)I

    move-result v2

    int-to-float v4, v2

    .line 300
    .restart local v4    # "textSize":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SoftKey;->getKeyIconPopup()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 301
    .local v12, "iconPopup":Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_e

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonPopup:Lcom/lzx/iteam/keyboard/BalloonHint;

    invoke-virtual {v2, v12, v7, v8}, Lcom/lzx/iteam/keyboard/BalloonHint;->setBalloonConfig(Landroid/graphics/drawable/Drawable;II)V

    .line 312
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getPaddingLeft()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    iget v6, v6, Lcom/lzx/iteam/keyboard/SoftKey;->mLeft:I

    add-int/2addr v5, v6

    .line 313
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonPopup:Lcom/lzx/iteam/keyboard/BalloonHint;

    invoke-virtual {v6}, Lcom/lzx/iteam/keyboard/BalloonHint;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lzx/iteam/keyboard/SoftKey;->width()I

    move-result v18

    sub-int v6, v6, v18

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 312
    aput v5, v2, v3

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v3, 0x0

    aget v5, v2, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mOffsetToSkbContainer:[I

    const/16 v18, 0x0

    aget v6, v6, v18

    add-int/2addr v5, v6

    aput v5, v2, v3

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v3, 0x0

    aget v5, v2, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v6

    const-string v18, "horiBoardLastLeft"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/lzx/iteam/util/PreferenceUtil;->getInt(Ljava/lang/String;I)I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v2, v3

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getPaddingTop()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    iget v6, v6, Lcom/lzx/iteam/keyboard/SoftKey;->mTop:I

    add-int/2addr v5, v6

    .line 319
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonPopup:Lcom/lzx/iteam/keyboard/BalloonHint;

    invoke-virtual {v6}, Lcom/lzx/iteam/keyboard/BalloonHint;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lzx/iteam/keyboard/SoftKey;->height()I

    move-result v18

    sub-int v6, v6, v18

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyboard:Lcom/lzx/iteam/keyboard/SoftKeyboard;

    invoke-virtual {v6}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->getKeyYMargin()I

    move-result v6

    sub-int/2addr v5, v6

    .line 318
    aput v5, v2, v3

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v3, 0x1

    aget v5, v2, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mOffsetToSkbContainer:[I

    const/16 v18, 0x1

    aget v6, v6, v18

    add-int/2addr v5, v6

    aput v5, v2, v3

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonPopup:Lcom/lzx/iteam/keyboard/BalloonHint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mHintLocationToSkbContainer:[I

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v2, v3, v1}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->showBalloon(Lcom/lzx/iteam/keyboard/BalloonHint;[IZ)V

    .line 327
    .end local v4    # "textSize":F
    .end local v7    # "desired_width":I
    .end local v8    # "desired_height":I
    .end local v9    # "balloonBg":Landroid/graphics/drawable/Drawable;
    .end local v12    # "iconPopup":Landroid/graphics/drawable/Drawable;
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mRepeatForLongPress:Z

    if-eqz v2, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->startTimer()V

    .line 328
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    goto/16 :goto_1

    .line 241
    .end local v10    # "env":Lcom/lzx/iteam/keyboard/Environment;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mLongPressTimer:Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->removeTimer()Z

    goto/16 :goto_2

    .line 259
    .restart local v7    # "desired_width":I
    .restart local v8    # "desired_height":I
    .restart local v10    # "env":Lcom/lzx/iteam/keyboard/Environment;
    .restart local v13    # "keyHlBg":Landroid/graphics/drawable/Drawable;
    .restart local v14    # "keyXMargin":I
    .restart local v15    # "keyYMargin":I
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 265
    .restart local v4    # "textSize":F
    .restart local v11    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonOnKey:Lcom/lzx/iteam/keyboard/BalloonHint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-virtual {v3}, Lcom/lzx/iteam/keyboard/SoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v3

    .line 266
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-virtual {v6}, Lcom/lzx/iteam/keyboard/SoftKey;->getColorHl()I

    move-result v6

    .line 265
    invoke-virtual/range {v2 .. v8}, Lcom/lzx/iteam/keyboard/BalloonHint;->setBalloonConfig(Ljava/lang/String;FZIII)V

    goto/16 :goto_4

    .line 280
    .end local v4    # "textSize":F
    .end local v7    # "desired_width":I
    .end local v8    # "desired_height":I
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "keyHlBg":Landroid/graphics/drawable/Drawable;
    .end local v14    # "keyXMargin":I
    .end local v15    # "keyYMargin":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    iget v3, v3, Lcom/lzx/iteam/keyboard/SoftKey;->mLeft:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    iget v5, v5, Lcom/lzx/iteam/keyboard/SoftKey;->mTop:I

    .line 281
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    iget v6, v6, Lcom/lzx/iteam/keyboard/SoftKey;->mRight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/lzx/iteam/keyboard/SoftKey;->mBottom:I

    move/from16 v18, v0

    .line 280
    move/from16 v0, v18

    invoke-virtual {v2, v3, v5, v6, v0}, Landroid/graphics/Rect;->union(IIII)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_5

    .line 291
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyboard:Lcom/lzx/iteam/keyboard/SoftKeyboard;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->getBalloonBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .restart local v9    # "balloonBg":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_6

    .line 299
    .restart local v7    # "desired_width":I
    .restart local v8    # "desired_height":I
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 305
    .restart local v4    # "textSize":F
    .restart local v12    # "iconPopup":Landroid/graphics/drawable/Drawable;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonPopup:Lcom/lzx/iteam/keyboard/BalloonHint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-virtual {v3}, Lcom/lzx/iteam/keyboard/SoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v3

    .line 306
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-virtual {v5}, Lcom/lzx/iteam/keyboard/SoftKey;->needBalloon()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    .line 307
    invoke-virtual {v6}, Lcom/lzx/iteam/keyboard/SoftKey;->getColorBalloon()I

    move-result v6

    .line 305
    invoke-virtual/range {v2 .. v8}, Lcom/lzx/iteam/keyboard/BalloonHint;->setBalloonConfig(Ljava/lang/String;FZIII)V

    goto/16 :goto_8

    .line 324
    .end local v4    # "textSize":F
    .end local v7    # "desired_width":I
    .end local v8    # "desired_height":I
    .end local v9    # "balloonBg":Landroid/graphics/drawable/Drawable;
    .end local v12    # "iconPopup":Landroid/graphics/drawable/Drawable;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonPopup:Lcom/lzx/iteam/keyboard/BalloonHint;

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lcom/lzx/iteam/keyboard/BalloonHint;->delayedDismiss(J)V

    goto/16 :goto_9
.end method

.method public onKeyRelease(II)Lcom/lzx/iteam/keyboard/SoftKey;
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v0, 0x0

    .line 332
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mKeyPressed:Z

    .line 333
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    if-nez v1, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-object v0

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mLongPressTimer:Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;

    invoke-virtual {v1}, Lcom/lzx/iteam/keyboard/SkbContainer$LongPressTimer;->removeTimer()Z

    .line 337
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonOnKey:Lcom/lzx/iteam/keyboard/BalloonHint;

    if-eqz v1, :cond_3

    .line 338
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonOnKey:Lcom/lzx/iteam/keyboard/BalloonHint;

    invoke-virtual {v1, v6, v7}, Lcom/lzx/iteam/keyboard/BalloonHint;->delayedDismiss(J)V

    .line 345
    :goto_1
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-virtual {v1}, Lcom/lzx/iteam/keyboard/SoftKey;->needBalloon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonPopup:Lcom/lzx/iteam/keyboard/BalloonHint;

    invoke-virtual {v1, v6, v7}, Lcom/lzx/iteam/keyboard/BalloonHint;->delayedDismiss(J)V

    .line 349
    :cond_2
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getPaddingTop()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/keyboard/SoftKey;->moveWithinKey(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    goto :goto_0

    .line 340
    :cond_3
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    iget v2, v2, Lcom/lzx/iteam/keyboard/SoftKey;->mLeft:I

    iget-object v3, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    iget v3, v3, Lcom/lzx/iteam/keyboard/SoftKey;->mTop:I

    .line 341
    iget-object v4, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    iget v4, v4, Lcom/lzx/iteam/keyboard/SoftKey;->mRight:I

    iget-object v5, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    iget v5, v5, Lcom/lzx/iteam/keyboard/SoftKey;->mBottom:I

    .line 340
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 342
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, "measuredWidth":I
    const/4 v0, 0x0

    .line 169
    .local v0, "measuredHeight":I
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyboard:Lcom/lzx/iteam/keyboard/SoftKeyboard;

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyboard:Lcom/lzx/iteam/keyboard/SoftKeyboard;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->getSkbCoreWidth()I

    move-result v1

    .line 171
    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyboard:Lcom/lzx/iteam/keyboard/SoftKeyboard;

    invoke-virtual {v2}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->getSkbCoreHeight()I

    move-result v0

    .line 172
    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 173
    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 175
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->setMeasuredDimension(II)V

    .line 176
    return-void
.end method

.method public resetKeyPress(J)V
    .locals 5
    .param p1, "balloonDelay"    # J

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mKeyPressed:Z

    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mKeyPressed:Z

    .line 196
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonOnKey:Lcom/lzx/iteam/keyboard/BalloonHint;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonOnKey:Lcom/lzx/iteam/keyboard/BalloonHint;

    invoke-virtual {v0, p1, p2}, Lcom/lzx/iteam/keyboard/BalloonHint;->delayedDismiss(J)V

    .line 209
    :goto_1
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonPopup:Lcom/lzx/iteam/keyboard/BalloonHint;

    invoke-virtual {v0, p1, p2}, Lcom/lzx/iteam/keyboard/BalloonHint;->delayedDismiss(J)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    iget v1, v1, Lcom/lzx/iteam/keyboard/SoftKey;->mLeft:I

    iget-object v2, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    iget v2, v2, Lcom/lzx/iteam/keyboard/SoftKey;->mTop:I

    .line 202
    iget-object v3, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    iget v3, v3, Lcom/lzx/iteam/keyboard/SoftKey;->mRight:I

    iget-object v4, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyDown:Lcom/lzx/iteam/keyboard/SoftKey;

    iget v4, v4, Lcom/lzx/iteam/keyboard/SoftKey;->mBottom:I

    .line 201
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 206
    :cond_3
    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->invalidate()V

    goto :goto_1
.end method

.method public resizeKeyboard(II)V
    .locals 1
    .param p1, "skbWidth"    # I
    .param p2, "skbHeight"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyboard:Lcom/lzx/iteam/keyboard/SoftKeyboard;

    invoke-virtual {v0, p1, p2}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->setSkbCoreSize(II)V

    .line 151
    return-void
.end method

.method public setBalloonHint(Lcom/lzx/iteam/keyboard/BalloonHint;Lcom/lzx/iteam/keyboard/BalloonHint;Z)V
    .locals 0
    .param p1, "balloonOnKey"    # Lcom/lzx/iteam/keyboard/BalloonHint;
    .param p2, "balloonPopup"    # Lcom/lzx/iteam/keyboard/BalloonHint;
    .param p3, "movingNeverHidePopup"    # Z

    .prologue
    .line 155
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonOnKey:Lcom/lzx/iteam/keyboard/BalloonHint;

    .line 156
    iput-object p2, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mBalloonPopup:Lcom/lzx/iteam/keyboard/BalloonHint;

    .line 157
    iput-boolean p3, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mMovingNeverHidePopupBalloon:Z

    .line 158
    return-void
.end method

.method public setOffsetToSkbContainer([I)V
    .locals 4
    .param p1, "offsetToSkbContainer"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mOffsetToSkbContainer:[I

    aget v1, p1, v2

    aput v1, v0, v2

    .line 162
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mOffsetToSkbContainer:[I

    aget v1, p1, v3

    aput v1, v0, v3

    .line 163
    return-void
.end method

.method public setSoftKeyboard(Lcom/lzx/iteam/keyboard/SoftKeyboard;)Z
    .locals 2
    .param p1, "softSkb"    # Lcom/lzx/iteam/keyboard/SoftKeyboard;

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 137
    const/4 v1, 0x0

    .line 142
    :goto_0
    return v1

    .line 139
    :cond_0
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->mSoftKeyboard:Lcom/lzx/iteam/keyboard/SoftKeyboard;

    .line 140
    invoke-virtual {p1}, Lcom/lzx/iteam/keyboard/SoftKeyboard;->getSkbBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 141
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/keyboard/SoftKeyboardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
