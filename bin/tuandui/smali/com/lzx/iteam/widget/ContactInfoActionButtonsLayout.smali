.class public Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;
.super Landroid/widget/LinearLayout;
.source "ContactInfoActionButtonsLayout.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object p1, p0, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 265
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 266
    .local v2, "firstChild":Landroid/view/View;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 267
    .local v3, "firstRect":Landroid/graphics/Rect;
    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 269
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 270
    .local v4, "secondChild":Landroid/view/View;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 271
    .local v5, "secondRect":Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 284
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->getDrawingTime()J

    move-result-wide v0

    .line 285
    .local v0, "drawingTime":J
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0e048d

    if-eq v6, v7, :cond_2

    .line 286
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 287
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 289
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 290
    invoke-virtual {p0, p1, v4, v0, v1}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 301
    :cond_1
    :goto_0
    return-void

    .line 293
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 294
    invoke-virtual {p0, p1, v4, v0, v1}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 296
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 297
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/lzx/iteam/widget/ContactInfoActionButtonsLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method
