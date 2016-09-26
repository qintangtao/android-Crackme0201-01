.class public Lcom/lzx/iteam/widget/TextImageButton;
.super Landroid/widget/ImageButton;
.source "TextImageButton.java"


# instance fields
.field text:Ljava/lang/String;

.field textColor:I

.field textSize:F

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    sget-object v1, Lcom/lzx/iteam/R$styleable;->TextImageButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/widget/TextImageButton;->text:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/widget/TextImageButton;->textColor:I

    .line 25
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/widget/TextImageButton;->textSize:F

    .line 26
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/widget/TextImageButton;->width:I

    .line 27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextImageButton;->text:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 108
    iget-object v3, p0, Lcom/lzx/iteam/widget/TextImageButton;->text:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 109
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 110
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 112
    iget v3, p0, Lcom/lzx/iteam/widget/TextImageButton;->textColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget v3, p0, Lcom/lzx/iteam/widget/TextImageButton;->textSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 114
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 115
    .local v1, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v4, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float v0, v3, v4

    .line 116
    .local v0, "dy":F
    iget-object v3, p0, Lcom/lzx/iteam/widget/TextImageButton;->text:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TextImageButton;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TextImageButton;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v0

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 118
    .end local v0    # "dy":F
    .end local v1    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v2    # "paint":Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->onSizeChanged(IIII)V

    .line 37
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextImageButton;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TextImageButton;->setMaxTextSize()V

    .line 40
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/lzx/iteam/widget/TextImageButton;->textColor:I

    .line 93
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TextImageButton;->postInvalidate()V

    .line 94
    return-void
.end method

.method public setMaxTextSize()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 43
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 44
    .local v3, "paint":Landroid/graphics/Paint;
    iget v6, p0, Lcom/lzx/iteam/widget/TextImageButton;->textSize:F

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 45
    new-instance v1, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 46
    .local v1, "fm":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 47
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TextImageButton;->getHeight()I

    move-result v2

    .line 48
    .local v2, "height":I
    iget v6, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v7, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v6, v7

    float-to-int v0, v6

    .line 49
    .local v0, "current":I
    :goto_0
    div-int/lit8 v6, v2, 0x2

    if-lt v0, v6, :cond_1

    .line 56
    iget-object v6, p0, Lcom/lzx/iteam/widget/TextImageButton;->text:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 57
    iget v6, p0, Lcom/lzx/iteam/widget/TextImageButton;->textSize:F

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 58
    iget-object v6, p0, Lcom/lzx/iteam/widget/TextImageButton;->text:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v4, v6

    .line 59
    .local v4, "w":I
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TextImageButton;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TextImageButton;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TextImageButton;->getPaddingRight()I

    move-result v7

    sub-int v5, v6, v7

    .line 60
    .local v5, "width":I
    if-eqz v5, :cond_0

    if-le v4, v5, :cond_0

    .line 61
    :goto_1
    if-gt v4, v5, :cond_2

    .line 70
    .end local v4    # "w":I
    .end local v5    # "width":I
    :cond_0
    return-void

    .line 50
    :cond_1
    iget v6, p0, Lcom/lzx/iteam/widget/TextImageButton;->textSize:F

    add-float/2addr v6, v8

    iput v6, p0, Lcom/lzx/iteam/widget/TextImageButton;->textSize:F

    .line 51
    iget v6, p0, Lcom/lzx/iteam/widget/TextImageButton;->textSize:F

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 52
    new-instance v1, Landroid/graphics/Paint$FontMetrics;

    .end local v1    # "fm":Landroid/graphics/Paint$FontMetrics;
    invoke-direct {v1}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 53
    .restart local v1    # "fm":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 54
    iget v6, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v7, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v6, v7

    float-to-int v0, v6

    goto :goto_0

    .line 62
    .restart local v4    # "w":I
    .restart local v5    # "width":I
    :cond_2
    iget v6, p0, Lcom/lzx/iteam/widget/TextImageButton;->textSize:F

    sub-float/2addr v6, v8

    iput v6, p0, Lcom/lzx/iteam/widget/TextImageButton;->textSize:F

    .line 63
    iget v6, p0, Lcom/lzx/iteam/widget/TextImageButton;->textSize:F

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 64
    iget-object v6, p0, Lcom/lzx/iteam/widget/TextImageButton;->text:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v4, v6

    goto :goto_1
.end method

.method public setText(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TextImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextImageButton;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/widget/TextImageButton;->text:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lzx/iteam/widget/TextImageButton;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/lzx/iteam/widget/TextImageButton;->text:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TextImageButton;->setMaxTextSize()V

    .line 81
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TextImageButton;->postInvalidate()V

    .line 84
    :cond_1
    return-void
.end method

.method public setTextSize(I)V
    .locals 1
    .param p1, "textSize"    # I

    .prologue
    .line 97
    int-to-float v0, p1

    iput v0, p0, Lcom/lzx/iteam/widget/TextImageButton;->textSize:F

    .line 98
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TextImageButton;->postInvalidate()V

    .line 99
    return-void
.end method
