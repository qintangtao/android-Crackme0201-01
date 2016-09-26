.class public Lcom/lzx/iteam/widget/DialpadEditText;
.super Landroid/widget/EditText;
.source "DialpadEditText.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DialpadEditText"


# instance fields
.field canvas:Landroid/graphics/Canvas;

.field first:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/widget/DialpadEditText;->first:Z

    .line 21
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/widget/DialpadEditText;->canvas:Landroid/graphics/Canvas;

    .line 25
    return-void
.end method


# virtual methods
.method public init()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 43
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/DialpadEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 44
    .local v3, "paint":Landroid/text/TextPaint;
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    .line 45
    .local v4, "textsize":F
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/DialpadEditText;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/DialpadEditText;->getPaddingBottom()I

    move-result v8

    sub-int v2, v7, v8

    .line 46
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/DialpadEditText;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/DialpadEditText;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/DialpadEditText;->getPaddingRight()I

    move-result v8

    sub-int v6, v7, v8

    .line 47
    .local v6, "width":I
    if-lez v2, :cond_0

    if-gtz v6, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 52
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v7, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v8, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v1, v8

    .line 53
    .local v1, "fontheight":I
    if-ge v1, v2, :cond_0

    .line 54
    float-to-double v8, v4

    add-double/2addr v8, v10

    double-to-float v4, v8

    .line 55
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 56
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/DialpadEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 57
    .local v5, "textwidth":F
    int-to-float v7, v6

    cmpl-float v7, v5, v7

    if-lez v7, :cond_1

    .line 58
    float-to-double v8, v4

    sub-double/2addr v8, v10

    double-to-float v4, v8

    .line 59
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 71
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 29
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 31
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onSizeChanged(IIII)V

    .line 108
    if-eq p1, p3, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/DialpadEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/widget/DialpadEditText;->resizeText(Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 99
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/DialpadEditText;->init()V

    .line 102
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/widget/DialpadEditText;->resizeText(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 36
    const-string v1, "DialpadEditText"

    const-string v2, "DialpadEditText.onTouchEvent return... "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public resizeText(Ljava/lang/String;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/DialpadEditText;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/DialpadEditText;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/DialpadEditText;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 75
    .local v3, "width":I
    if-lez v3, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/DialpadEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 77
    .local v0, "paint":Landroid/text/TextPaint;
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    .line 78
    .local v2, "textsize":F
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v1, v4

    .line 79
    .local v1, "textWidth":I
    if-gt v1, v3, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/DialpadEditText;->init()V

    .line 94
    .end local v0    # "paint":Landroid/text/TextPaint;
    .end local v1    # "textWidth":I
    .end local v2    # "textsize":F
    :cond_0
    :goto_0
    return-void

    .line 84
    .restart local v0    # "paint":Landroid/text/TextPaint;
    .restart local v1    # "textWidth":I
    .restart local v2    # "textsize":F
    :cond_1
    float-to-double v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    double-to-float v2, v4

    .line 85
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 86
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v1, v4

    .line 87
    if-gt v1, v3, :cond_1

    goto :goto_0
.end method
