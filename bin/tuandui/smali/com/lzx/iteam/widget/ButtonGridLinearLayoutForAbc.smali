.class public Lcom/lzx/iteam/widget/ButtonGridLinearLayoutForAbc;
.super Landroid/widget/LinearLayout;
.source "ButtonGridLinearLayoutForAbc.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 16
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/lzx/iteam/widget/ButtonGridLinearLayoutForAbc;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/ButtonGridLayout;

    .line 17
    .local v0, "bgl":Lcom/lzx/iteam/widget/ButtonGridLayout;
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/lzx/iteam/widget/ButtonGridLinearLayoutForAbc;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 18
    .local v5, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Lcom/lzx/iteam/widget/ButtonGridLayout;->getMeasuredWidth()I

    move-result v8

    .line 19
    .local v8, "width1":I
    invoke-virtual {v0}, Lcom/lzx/iteam/widget/ButtonGridLayout;->getMeasuredHeight()I

    move-result v2

    .line 20
    .local v2, "height1":I
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 21
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    .line 23
    .local v3, "height2":I
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ButtonGridLinearLayoutForAbc;->getMeasuredWidth()I

    .line 24
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ButtonGridLinearLayoutForAbc;->getMeasuredHeight()I

    .line 25
    invoke-virtual {v0}, Lcom/lzx/iteam/widget/ButtonGridLayout;->getColumns()I

    move-result v1

    .line 26
    .local v1, "columns":I
    invoke-virtual {v0}, Lcom/lzx/iteam/widget/ButtonGridLayout;->getRows()I

    move-result v6

    .line 31
    .local v6, "rows":I
    rem-int v7, v2, v6

    .line 32
    .local v7, "temp":I
    if-eqz v7, :cond_0

    .line 33
    sub-int v10, v6, v7

    add-int/2addr v2, v10

    .line 34
    sub-int v10, v6, v7

    sub-int/2addr v3, v10

    .line 36
    :cond_0
    rem-int v7, v8, v1

    .line 37
    if-eqz v7, :cond_1

    .line 38
    sub-int v10, v1, v7

    add-int/2addr v8, v10

    .line 44
    :cond_1
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 45
    .local v9, "widthSpec":I
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 46
    .local v4, "heightSpec":I
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/lzx/iteam/widget/ButtonGridLinearLayoutForAbc;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v9, v4}, Landroid/view/View;->measure(II)V

    .line 48
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 49
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 50
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/lzx/iteam/widget/ButtonGridLinearLayoutForAbc;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v9, v4}, Landroid/view/View;->measure(II)V

    .line 53
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 54
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 64
    return-void
.end method
