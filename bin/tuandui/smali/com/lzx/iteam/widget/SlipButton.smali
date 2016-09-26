.class public Lcom/lzx/iteam/widget/SlipButton;
.super Landroid/view/View;
.source "SlipButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private Btn_Off:Landroid/graphics/Rect;

.field private Btn_On:Landroid/graphics/Rect;

.field private ChgLsn:Lcom/lzx/iteam/widget/OnChangedListener;

.field private DownX:F

.field private NowChoose:Z

.field private NowX:F

.field private OnSlip:Z

.field public bgBitmap:Landroid/graphics/Bitmap;

.field public bg_off:Landroid/graphics/Bitmap;

.field public bg_on:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private isChgLsnOn:Z

.field public maskBitmap:Landroid/graphics/Bitmap;

.field public masked:Landroid/graphics/Bitmap;

.field public slidingbarBitmap:Landroid/graphics/Bitmap;

.field public slip_btn:Landroid/graphics/Bitmap;

.field public transparent:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    iput-boolean v0, p0, Lcom/lzx/iteam/widget/SlipButton;->NowChoose:Z

    .line 16
    iput-boolean v0, p0, Lcom/lzx/iteam/widget/SlipButton;->OnSlip:Z

    .line 27
    iput-boolean v0, p0, Lcom/lzx/iteam/widget/SlipButton;->isChgLsnOn:Z

    .line 57
    invoke-direct {p0}, Lcom/lzx/iteam/widget/SlipButton;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput-boolean v0, p0, Lcom/lzx/iteam/widget/SlipButton;->NowChoose:Z

    .line 16
    iput-boolean v0, p0, Lcom/lzx/iteam/widget/SlipButton;->OnSlip:Z

    .line 27
    iput-boolean v0, p0, Lcom/lzx/iteam/widget/SlipButton;->isChgLsnOn:Z

    .line 63
    invoke-direct {p0}, Lcom/lzx/iteam/widget/SlipButton;->init()V

    .line 64
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/SlipButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/SlipButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 264
    :cond_0
    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    const v5, 0x7f0202ff

    const/4 v7, 0x0

    .line 70
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 71
    .local v1, "option":Landroid/graphics/BitmapFactory$Options;
    iget-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->maskBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/SlipButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020300

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->maskBitmap:Landroid/graphics/Bitmap;

    .line 74
    :cond_0
    iget-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->slidingbarBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/SlipButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202fd

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->slidingbarBitmap:Landroid/graphics/Bitmap;

    .line 77
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->bgBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/SlipButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v5, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->bgBitmap:Landroid/graphics/Bitmap;

    .line 80
    :cond_2
    iget-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->bg_on:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    .line 81
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/SlipButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v5, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->bg_on:Landroid/graphics/Bitmap;

    .line 83
    :cond_3
    iget-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->bg_off:Landroid/graphics/Bitmap;

    if-nez v3, :cond_4

    .line 84
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/SlipButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v5, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->bg_off:Landroid/graphics/Bitmap;

    .line 86
    :cond_4
    iget-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->slip_btn:Landroid/graphics/Bitmap;

    if-nez v3, :cond_5

    .line 87
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/SlipButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020301

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->slip_btn:Landroid/graphics/Bitmap;

    .line 89
    :cond_5
    iget-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->transparent:Landroid/graphics/Bitmap;

    if-nez v3, :cond_6

    .line 90
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/SlipButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202fe

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->transparent:Landroid/graphics/Bitmap;

    .line 96
    :cond_6
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/lzx/iteam/widget/SlipButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/lzx/iteam/widget/SlipButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->Btn_Off:Landroid/graphics/Rect;

    .line 98
    new-instance v3, Landroid/graphics/Rect;

    .line 99
    iget-object v4, p0, Lcom/lzx/iteam/widget/SlipButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/lzx/iteam/widget/SlipButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    .line 101
    iget-object v5, p0, Lcom/lzx/iteam/widget/SlipButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 102
    iget-object v6, p0, Lcom/lzx/iteam/widget/SlipButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v3, v4, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 98
    iput-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->Btn_On:Landroid/graphics/Rect;

    .line 104
    invoke-virtual {p0, p0}, Lcom/lzx/iteam/widget/SlipButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    iget-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 107
    .local v2, "w":I
    iget-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 109
    .local v0, "h":I
    if-lez v2, :cond_7

    if-gtz v0, :cond_8

    .line 116
    :cond_7
    :goto_0
    return-void

    .line 111
    :cond_8
    iget-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->masked:Landroid/graphics/Bitmap;

    if-nez v3, :cond_9

    .line 112
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->masked:Landroid/graphics/Bitmap;

    .line 114
    :cond_9
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/lzx/iteam/widget/SlipButton;->masked:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->canvas:Landroid/graphics/Canvas;

    goto :goto_0
.end method


# virtual methods
.method public SetOnChangedListener(Lcom/lzx/iteam/widget/OnChangedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/lzx/iteam/widget/OnChangedListener;

    .prologue
    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/widget/SlipButton;->isChgLsnOn:Z

    .line 210
    iput-object p1, p0, Lcom/lzx/iteam/widget/SlipButton;->ChgLsn:Lcom/lzx/iteam/widget/OnChangedListener;

    .line 211
    return-void
.end method

.method public createMaskBitmap(F)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "x"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 221
    iget-object v6, p0, Lcom/lzx/iteam/widget/SlipButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 223
    .local v0, "ballWidth":I
    iget-object v6, p0, Lcom/lzx/iteam/widget/SlipButton;->maskBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-object v5

    .line 225
    :cond_1
    iget-object v6, p0, Lcom/lzx/iteam/widget/SlipButton;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 226
    .local v4, "w":I
    iget-object v6, p0, Lcom/lzx/iteam/widget/SlipButton;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 228
    .local v2, "h":I
    if-lez v4, :cond_0

    if-lez v2, :cond_0

    .line 230
    const/high16 v1, -0x1000000

    .line 231
    .local v1, "color":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 233
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 234
    iget-object v6, p0, Lcom/lzx/iteam/widget/SlipButton;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v9, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 235
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    iget-object v6, p0, Lcom/lzx/iteam/widget/SlipButton;->canvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/lzx/iteam/widget/SlipButton;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7, v10, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 237
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 238
    iget-object v6, p0, Lcom/lzx/iteam/widget/SlipButton;->canvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/lzx/iteam/widget/SlipButton;->slidingbarBitmap:Landroid/graphics/Bitmap;

    sub-int v8, v0, v4

    int-to-float v8, v8

    add-float/2addr v8, p1

    invoke-virtual {v6, v7, v8, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 240
    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 241
    iget-object v6, p0, Lcom/lzx/iteam/widget/SlipButton;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v9, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 242
    iget-object v6, p0, Lcom/lzx/iteam/widget/SlipButton;->canvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/lzx/iteam/widget/SlipButton;->bgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7, v10, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 244
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 245
    iget-object v5, p0, Lcom/lzx/iteam/widget/SlipButton;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v9, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 246
    iget-object v5, p0, Lcom/lzx/iteam/widget/SlipButton;->canvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/lzx/iteam/widget/SlipButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6, p1, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 248
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 249
    iget-object v5, p0, Lcom/lzx/iteam/widget/SlipButton;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v9, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 250
    iget-object v5, p0, Lcom/lzx/iteam/widget/SlipButton;->canvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/lzx/iteam/widget/SlipButton;->transparent:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6, v10, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 252
    iget-object v5, p0, Lcom/lzx/iteam/widget/SlipButton;->masked:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public destory()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/lzx/iteam/widget/SlipButton;->maskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/lzx/iteam/widget/SlipButton;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/widget/SlipButton;->slidingbarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/lzx/iteam/widget/SlipButton;->slidingbarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/widget/SlipButton;->bgBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/lzx/iteam/widget/SlipButton;->bgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/widget/SlipButton;->bg_on:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/lzx/iteam/widget/SlipButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 293
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/widget/SlipButton;->bg_off:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 294
    iget-object v0, p0, Lcom/lzx/iteam/widget/SlipButton;->bg_off:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 296
    :cond_4
    iget-object v0, p0, Lcom/lzx/iteam/widget/SlipButton;->slip_btn:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 297
    iget-object v0, p0, Lcom/lzx/iteam/widget/SlipButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 299
    :cond_5
    iget-object v0, p0, Lcom/lzx/iteam/widget/SlipButton;->transparent:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 300
    iget-object v0, p0, Lcom/lzx/iteam/widget/SlipButton;->transparent:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 303
    :cond_6
    return-void
.end method

.method public getSwitch()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/lzx/iteam/widget/SlipButton;->NowChoose:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 121
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 123
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 124
    .local v0, "paint":Landroid/graphics/Paint;
    iget-object v2, p0, Lcom/lzx/iteam/widget/SlipButton;->Btn_On:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v2

    .line 126
    .local v1, "x":F
    iget-boolean v2, p0, Lcom/lzx/iteam/widget/SlipButton;->OnSlip:Z

    if-eqz v2, :cond_2

    .line 129
    iget v1, p0, Lcom/lzx/iteam/widget/SlipButton;->NowX:F

    .line 130
    iget v2, p0, Lcom/lzx/iteam/widget/SlipButton;->NowX:F

    iget-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->Btn_On:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/lzx/iteam/widget/SlipButton;->Btn_On:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v2

    .line 142
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/widget/SlipButton;->createMaskBitmap(F)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v2, v4, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 144
    return-void

    .line 132
    :cond_1
    iget v2, p0, Lcom/lzx/iteam/widget/SlipButton;->NowX:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/lzx/iteam/widget/SlipButton;->Btn_Off:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v2

    .line 135
    goto :goto_0

    .line 136
    :cond_2
    iget-boolean v2, p0, Lcom/lzx/iteam/widget/SlipButton;->NowChoose:Z

    if-eqz v2, :cond_3

    .line 137
    iget-object v2, p0, Lcom/lzx/iteam/widget/SlipButton;->Btn_On:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v2

    goto :goto_0

    .line 139
    :cond_3
    iget-object v2, p0, Lcom/lzx/iteam/widget/SlipButton;->Btn_Off:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v2

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 151
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 204
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/SlipButton;->invalidate()V

    .line 205
    return v5

    .line 155
    :pswitch_0
    invoke-direct {p0}, Lcom/lzx/iteam/widget/SlipButton;->attemptClaimDrag()V

    .line 156
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/widget/SlipButton;->NowX:F

    goto :goto_0

    .line 161
    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/lzx/iteam/widget/SlipButton;->setPressed(Z)V

    .line 162
    iput-boolean v5, p0, Lcom/lzx/iteam/widget/SlipButton;->OnSlip:Z

    .line 163
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/widget/SlipButton;->DownX:F

    .line 164
    iget v1, p0, Lcom/lzx/iteam/widget/SlipButton;->DownX:F

    iput v1, p0, Lcom/lzx/iteam/widget/SlipButton;->NowX:F

    goto :goto_0

    .line 169
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/lzx/iteam/widget/SlipButton;->setPressed(Z)V

    .line 170
    iput-boolean v4, p0, Lcom/lzx/iteam/widget/SlipButton;->OnSlip:Z

    .line 171
    iget-boolean v0, p0, Lcom/lzx/iteam/widget/SlipButton;->NowChoose:Z

    .line 173
    .local v0, "LastChoose":Z
    iget-boolean v1, p0, Lcom/lzx/iteam/widget/SlipButton;->NowChoose:Z

    if-nez v1, :cond_1

    .line 174
    iput-boolean v5, p0, Lcom/lzx/iteam/widget/SlipButton;->NowChoose:Z

    .line 175
    iget-object v1, p0, Lcom/lzx/iteam/widget/SlipButton;->Btn_On:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcom/lzx/iteam/widget/SlipButton;->NowX:F

    .line 182
    :goto_1
    iget-boolean v1, p0, Lcom/lzx/iteam/widget/SlipButton;->isChgLsnOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lzx/iteam/widget/SlipButton;->NowChoose:Z

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/widget/SlipButton;->ChgLsn:Lcom/lzx/iteam/widget/OnChangedListener;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/lzx/iteam/widget/SlipButton;->ChgLsn:Lcom/lzx/iteam/widget/OnChangedListener;

    iget-boolean v2, p0, Lcom/lzx/iteam/widget/SlipButton;->NowChoose:Z

    invoke-interface {v1, v2, p0}, Lcom/lzx/iteam/widget/OnChangedListener;->OnChanged(ZLandroid/view/View;)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/widget/SlipButton;->Btn_Off:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcom/lzx/iteam/widget/SlipButton;->NowX:F

    .line 179
    iput-boolean v4, p0, Lcom/lzx/iteam/widget/SlipButton;->NowChoose:Z

    goto :goto_1

    .line 188
    .end local v0    # "LastChoose":Z
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/lzx/iteam/widget/SlipButton;->setPressed(Z)V

    .line 189
    iget v1, p0, Lcom/lzx/iteam/widget/SlipButton;->NowX:F

    iget-object v2, p0, Lcom/lzx/iteam/widget/SlipButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lzx/iteam/widget/SlipButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 190
    iput-boolean v5, p0, Lcom/lzx/iteam/widget/SlipButton;->NowChoose:Z

    .line 191
    iget-object v1, p0, Lcom/lzx/iteam/widget/SlipButton;->Btn_On:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcom/lzx/iteam/widget/SlipButton;->NowX:F

    goto :goto_0

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/lzx/iteam/widget/SlipButton;->Btn_Off:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcom/lzx/iteam/widget/SlipButton;->NowX:F

    .line 195
    iput-boolean v4, p0, Lcom/lzx/iteam/widget/SlipButton;->NowChoose:Z

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setSwitch(Z)V
    .locals 3
    .param p1, "isOpen"    # Z

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/lzx/iteam/widget/SlipButton;->NowChoose:Z

    .line 37
    .local v0, "LastChoose":Z
    iput-boolean p1, p0, Lcom/lzx/iteam/widget/SlipButton;->NowChoose:Z

    .line 39
    iget-boolean v1, p0, Lcom/lzx/iteam/widget/SlipButton;->isChgLsnOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lzx/iteam/widget/SlipButton;->NowChoose:Z

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/widget/SlipButton;->ChgLsn:Lcom/lzx/iteam/widget/OnChangedListener;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/lzx/iteam/widget/SlipButton;->ChgLsn:Lcom/lzx/iteam/widget/OnChangedListener;

    iget-boolean v2, p0, Lcom/lzx/iteam/widget/SlipButton;->NowChoose:Z

    invoke-interface {v1, v2, p0}, Lcom/lzx/iteam/widget/OnChangedListener;->OnChanged(ZLandroid/view/View;)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/SlipButton;->invalidate()V

    .line 43
    return-void
.end method

.method public setSwitchWithoutListener(Z)V
    .locals 0
    .param p1, "isOpen"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/lzx/iteam/widget/SlipButton;->NowChoose:Z

    .line 47
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/SlipButton;->invalidate()V

    .line 48
    return-void
.end method
