.class public Lcom/lzx/iteam/widget/TextDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TextDrawable.java"


# static fields
.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final appearanceAttributes:[I

.field private static final themeAttributes:[I


# instance fields
.field private mResources:Landroid/content/res/Resources;

.field private mText:Ljava/lang/CharSequence;

.field private mTextAlignment:Landroid/text/Layout$Alignment;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextLayout:Landroid/text/StaticLayout;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 57
    const v2, 0x1010034

    aput v2, v0, v1

    .line 56
    sput-object v0, Lcom/lzx/iteam/widget/TextDrawable;->themeAttributes:[I

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lzx/iteam/widget/TextDrawable;->appearanceAttributes:[I

    .line 64
    return-void

    .line 59
    :array_0
    .array-data 4
        0x1010095
        0x1010096
        0x1010097
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x1

    const/4 v12, -0x1

    .line 68
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 45
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v10, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextAlignment:Landroid/text/Layout$Alignment;

    .line 53
    const-string v10, ""

    iput-object v10, p0, Lcom/lzx/iteam/widget/TextDrawable;->mText:Ljava/lang/CharSequence;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iput-object v10, p0, Lcom/lzx/iteam/widget/TextDrawable;->mResources:Landroid/content/res/Resources;

    .line 72
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextBounds:Landroid/graphics/Rect;

    .line 74
    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10, v13}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v10, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    .line 75
    iget-object v10, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v11, p0, Lcom/lzx/iteam/widget/TextDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    iput v11, v10, Landroid/text/TextPaint;->density:F

    .line 76
    iget-object v10, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v13}, Landroid/text/TextPaint;->setDither(Z)V

    .line 78
    const/16 v7, 0xf

    .line 79
    .local v7, "textSize":I
    const/4 v6, 0x0

    .line 80
    .local v6, "textColor":Landroid/content/res/ColorStateList;
    const/4 v5, -0x1

    .line 81
    .local v5, "styleIndex":I
    const/4 v9, -0x1

    .line 84
    .local v9, "typefaceIndex":I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    sget-object v11, Lcom/lzx/iteam/widget/TextDrawable;->themeAttributes:[I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 86
    .local v2, "appearanceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "ap":Landroid/content/res/TypedArray;
    if-eq v2, v12, :cond_0

    .line 90
    sget-object v10, Lcom/lzx/iteam/widget/TextDrawable;->appearanceAttributes:[I

    invoke-virtual {p1, v2, v10}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 92
    :cond_0
    if-eqz v1, :cond_1

    .line 93
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v10

    if-lt v4, v10, :cond_2

    .line 113
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    .end local v4    # "i":I
    :cond_1
    if-eqz v6, :cond_3

    .end local v6    # "textColor":Landroid/content/res/ColorStateList;
    :goto_1
    invoke-virtual {p0, v6}, Lcom/lzx/iteam/widget/TextDrawable;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 117
    int-to-float v10, v7

    invoke-direct {p0, v10}, Lcom/lzx/iteam/widget/TextDrawable;->setRawTextSize(F)V

    .line 119
    const/4 v8, 0x0

    .line 120
    .local v8, "tf":Landroid/graphics/Typeface;
    packed-switch v9, :pswitch_data_0

    .line 134
    :goto_2
    invoke-virtual {p0, v8, v5}, Lcom/lzx/iteam/widget/TextDrawable;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 135
    return-void

    .line 94
    .end local v8    # "tf":Landroid/graphics/Typeface;
    .restart local v4    # "i":I
    .restart local v6    # "textColor":Landroid/content/res/ColorStateList;
    :cond_2
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 95
    .local v3, "attr":I
    packed-switch v3, :pswitch_data_1

    .line 93
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 97
    :pswitch_0
    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 98
    goto :goto_3

    .line 100
    :pswitch_1
    invoke-virtual {v0, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 101
    goto :goto_3

    .line 103
    :pswitch_2
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 104
    goto :goto_3

    .line 106
    :pswitch_3
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 107
    goto :goto_3

    .line 116
    .end local v3    # "attr":I
    .end local v4    # "i":I
    :cond_3
    const/high16 v10, -0x1000000

    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    goto :goto_1

    .line 122
    .end local v6    # "textColor":Landroid/content/res/ColorStateList;
    .restart local v8    # "tf":Landroid/graphics/Typeface;
    :pswitch_4
    sget-object v8, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 123
    goto :goto_2

    .line 126
    :pswitch_5
    sget-object v8, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 127
    goto :goto_2

    .line 130
    :pswitch_6
    sget-object v8, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_2

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 95
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private measureContent()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 326
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextLayout:Landroid/text/StaticLayout;

    .line 329
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 339
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TextDrawable;->invalidateSelf()V

    .line 340
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v0, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    .line 333
    .local v8, "desired":D
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/lzx/iteam/widget/TextDrawable;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    double-to-int v3, v8

    .line 334
    iget-object v4, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextAlignment:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 333
    iput-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextLayout:Landroid/text/StaticLayout;

    .line 335
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private setRawTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 187
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 190
    invoke-direct {p0}, Lcom/lzx/iteam/widget/TextDrawable;->measureContent()V

    .line 192
    :cond_0
    return-void
.end method

.method private updateTextColors([I)Z
    .locals 3
    .param p1, "stateSet"    # [I

    .prologue
    .line 346
    iget-object v1, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextColors:Landroid/content/res/ColorStateList;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 347
    .local v0, "newColor":I
    iget-object v1, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 348
    iget-object v1, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 349
    const/4 v1, 0x1

    .line 352
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 398
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 399
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 400
    .local v7, "count":I
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 401
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 408
    :goto_0
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 409
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const/4 v0, -0x1

    .line 382
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, -0x1

    .line 392
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextAlign()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public getTextScaleX()F
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 359
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/lzx/iteam/widget/TextDrawable;->updateTextColors([I)Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 413
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 416
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 428
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 143
    if-nez p1, :cond_0

    const-string p1, ""

    .line 145
    :cond_0
    iput-object p1, p0, Lcom/lzx/iteam/widget/TextDrawable;->mText:Ljava/lang/CharSequence;

    .line 147
    invoke-direct {p0}, Lcom/lzx/iteam/widget/TextDrawable;->measureContent()V

    .line 148
    return-void
.end method

.method public setTextAlign(Landroid/text/Layout$Alignment;)V
    .locals 1
    .param p1, "align"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextAlignment:Landroid/text/Layout$Alignment;

    if-eq v0, p1, :cond_0

    .line 231
    iput-object p1, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextAlignment:Landroid/text/Layout$Alignment;

    .line 232
    invoke-direct {p0}, Lcom/lzx/iteam/widget/TextDrawable;->measureContent()V

    .line 234
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 292
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/widget/TextDrawable;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 293
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextColors:Landroid/content/res/ColorStateList;

    .line 301
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TextDrawable;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lzx/iteam/widget/TextDrawable;->updateTextColors([I)Z

    .line 302
    return-void
.end method

.method public setTextPath(Landroid/graphics/Path;)V
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPath:Landroid/graphics/Path;

    if-eq v0, p1, :cond_0

    .line 314
    iput-object p1, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPath:Landroid/graphics/Path;

    .line 315
    invoke-direct {p0}, Lcom/lzx/iteam/widget/TextDrawable;->measureContent()V

    .line 317
    :cond_0
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 208
    invoke-direct {p0}, Lcom/lzx/iteam/widget/TextDrawable;->measureContent()V

    .line 210
    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 169
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/lzx/iteam/widget/TextDrawable;->setTextSize(IF)V

    .line 170
    return-void
.end method

.method public setTextSize(IF)V
    .locals 2
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 178
    .line 179
    iget-object v1, p0, Lcom/lzx/iteam/widget/TextDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 178
    invoke-static {p1, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 180
    .local v0, "dimension":F
    invoke-direct {p0, v0}, Lcom/lzx/iteam/widget/TextDrawable;->setRawTextSize(F)V

    .line 181
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 247
    invoke-direct {p0}, Lcom/lzx/iteam/widget/TextDrawable;->measureContent()V

    .line 249
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 259
    if-lez p2, :cond_4

    .line 260
    if-nez p1, :cond_1

    .line 261
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 266
    :goto_0
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/widget/TextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 268
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 269
    .local v1, "typefaceStyle":I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 270
    .local v0, "need":I
    iget-object v4, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 271
    iget-object v4, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x41800000    # -0.25f

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 277
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    .line 263
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 268
    goto :goto_1

    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_3
    move v2, v3

    .line 271
    goto :goto_2

    .line 273
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    iget-object v4, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 274
    iget-object v2, p0, Lcom/lzx/iteam/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 275
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/widget/TextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method
