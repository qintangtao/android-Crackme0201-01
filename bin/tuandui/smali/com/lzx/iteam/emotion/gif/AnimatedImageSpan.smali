.class public Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;
.super Landroid/text/style/DynamicDrawableSpan;
.source "AnimatedImageSpan.java"


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/text/style/DynamicDrawableSpan;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 19
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan$1;

    invoke-direct {v1, p0, v0}, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan$1;-><init>(Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 64
    .local v0, "b":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 66
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p8, v2

    .line 67
    .local v1, "transY":I
    iget v2, p0, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;->mVerticalAlignment:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 68
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v1, v2

    .line 71
    :cond_0
    int-to-float v2, v1

    invoke-virtual {p1, p5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 72
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 75
    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;

    invoke-virtual {v0}, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 46
    .local v1, "rect":Landroid/graphics/Rect;
    if-eqz p5, :cond_0

    .line 47
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    neg-int v2, v2

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 48
    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 50
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 51
    iput v3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 54
    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->right:I

    return v2
.end method
