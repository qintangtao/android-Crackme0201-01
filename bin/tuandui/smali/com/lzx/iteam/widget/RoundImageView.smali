.class public Lcom/lzx/iteam/widget/RoundImageView;
.super Landroid/widget/ImageView;
.source "RoundImageView.java"


# instance fields
.field private final maskPaint:Landroid/graphics/Paint;

.field private rect_adius:F

.field private final roundRect:Landroid/graphics/RectF;

.field private final zonePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/widget/RoundImageView;->roundRect:Landroid/graphics/RectF;

    .line 19
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/lzx/iteam/widget/RoundImageView;->rect_adius:F

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/widget/RoundImageView;->maskPaint:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/widget/RoundImageView;->zonePaint:Landroid/graphics/Paint;

    .line 34
    invoke-direct {p0}, Lcom/lzx/iteam/widget/RoundImageView;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/lzx/iteam/widget/RoundImageView;->roundRect:Landroid/graphics/RectF;

    .line 19
    const/high16 v1, 0x41700000    # 15.0f

    iput v1, p0, Lcom/lzx/iteam/widget/RoundImageView;->rect_adius:F

    .line 20
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/lzx/iteam/widget/RoundImageView;->maskPaint:Landroid/graphics/Paint;

    .line 21
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/lzx/iteam/widget/RoundImageView;->zonePaint:Landroid/graphics/Paint;

    .line 26
    sget-object v1, Lcom/lzx/iteam/R$styleable;->RoundImageView:[I

    .line 25
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 27
    .local v0, "array":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    iget v2, p0, Lcom/lzx/iteam/widget/RoundImageView;->rect_adius:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/widget/RoundImageView;->rect_adius:F

    .line 28
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    invoke-direct {p0}, Lcom/lzx/iteam/widget/RoundImageView;->init()V

    .line 30
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 38
    iget-object v0, p0, Lcom/lzx/iteam/widget/RoundImageView;->maskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/widget/RoundImageView;->maskPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 41
    iget-object v0, p0, Lcom/lzx/iteam/widget/RoundImageView;->zonePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lcom/lzx/iteam/widget/RoundImageView;->zonePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v4, 0x1f

    .line 68
    iget-object v0, p0, Lcom/lzx/iteam/widget/RoundImageView;->roundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lzx/iteam/widget/RoundImageView;->zonePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 69
    iget-object v0, p0, Lcom/lzx/iteam/widget/RoundImageView;->roundRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/lzx/iteam/widget/RoundImageView;->rect_adius:F

    iget v2, p0, Lcom/lzx/iteam/widget/RoundImageView;->rect_adius:F

    iget-object v3, p0, Lcom/lzx/iteam/widget/RoundImageView;->zonePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 71
    iget-object v0, p0, Lcom/lzx/iteam/widget/RoundImageView;->roundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lzx/iteam/widget/RoundImageView;->maskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 72
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 74
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v5, 0x0

    .line 60
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 61
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/RoundImageView;->getWidth()I

    move-result v1

    .line 62
    .local v1, "w":I
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/RoundImageView;->getHeight()I

    move-result v0

    .line 63
    .local v0, "h":I
    iget-object v2, p0, Lcom/lzx/iteam/widget/RoundImageView;->roundRect:Landroid/graphics/RectF;

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 64
    return-void
.end method

.method public setRectAdius(F)V
    .locals 0
    .param p1, "adius"    # F

    .prologue
    .line 53
    iput p1, p0, Lcom/lzx/iteam/widget/RoundImageView;->rect_adius:F

    .line 54
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/RoundImageView;->invalidate()V

    .line 55
    return-void
.end method
