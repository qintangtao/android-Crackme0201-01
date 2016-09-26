.class public Lcom/lzx/iteam/widget/WrapContentHeightViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "WrapContentHeightViewPager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 24
    const/4 v2, 0x0

    .line 26
    .local v2, "height":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/WrapContentHeightViewPager;->getChildCount()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 36
    const/high16 v4, 0x40000000    # 2.0f

    .line 35
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 38
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 39
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0, v3}, Lcom/lzx/iteam/widget/WrapContentHeightViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, "child":Landroid/view/View;
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 28
    invoke-virtual {v0, p1, v4}, Landroid/view/View;->measure(II)V

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 31
    .local v1, "h":I
    if-le v1, v2, :cond_1

    .line 32
    move v2, v1

    .line 26
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
