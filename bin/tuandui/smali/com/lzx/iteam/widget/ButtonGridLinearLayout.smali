.class public Lcom/lzx/iteam/widget/ButtonGridLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonGridLinearLayout.java"


# instance fields
.field private finalHeight:I

.field private finalWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ButtonGridLinearLayout;->getOrientation()I

    move-result v6

    .line 20
    .local v6, "orientation":I
    const/4 v13, 0x1

    if-ne v6, v13, :cond_2

    .line 21
    const/4 v8, 0x1

    .line 25
    .local v8, "tag":I
    :goto_0
    invoke-virtual {p0, v8}, Lcom/lzx/iteam/widget/ButtonGridLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/ButtonGridLayout;

    .line 26
    .local v0, "bgl":Lcom/lzx/iteam/widget/ButtonGridLayout;
    add-int/lit8 v13, v8, 0x1

    invoke-virtual {p0, v13}, Lcom/lzx/iteam/widget/ButtonGridLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 27
    .local v5, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Lcom/lzx/iteam/widget/ButtonGridLayout;->getMeasuredWidth()I

    move-result v10

    .line 28
    .local v10, "width1":I
    invoke-virtual {v0}, Lcom/lzx/iteam/widget/ButtonGridLayout;->getMeasuredHeight()I

    move-result v2

    .line 29
    .local v2, "height1":I
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    .line 30
    .local v11, "width2":I
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    .line 32
    .local v3, "height2":I
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ButtonGridLinearLayout;->getMeasuredWidth()I

    .line 33
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/ButtonGridLinearLayout;->getMeasuredHeight()I

    .line 34
    invoke-virtual {v0}, Lcom/lzx/iteam/widget/ButtonGridLayout;->getColumns()I

    move-result v1

    .line 35
    .local v1, "columns":I
    invoke-virtual {v0}, Lcom/lzx/iteam/widget/ButtonGridLayout;->getRows()I

    move-result v7

    .line 40
    .local v7, "rows":I
    const/4 v13, 0x1

    if-ne v6, v13, :cond_3

    .line 41
    rem-int v9, v2, v7

    .line 42
    .local v9, "temp":I
    if-eqz v9, :cond_0

    .line 43
    sub-int v13, v7, v9

    add-int/2addr v2, v13

    .line 44
    sub-int v13, v7, v9

    sub-int/2addr v3, v13

    .line 46
    :cond_0
    rem-int v9, v10, v1

    .line 47
    if-eqz v9, :cond_1

    .line 48
    sub-int v13, v1, v9

    add-int/2addr v10, v13

    .line 54
    :cond_1
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 55
    .local v12, "widthSpec":I
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 56
    .local v4, "heightSpec":I
    invoke-virtual {p0, v8}, Lcom/lzx/iteam/widget/ButtonGridLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v12, v4}, Landroid/view/View;->measure(II)V

    .line 58
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 59
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 60
    add-int/lit8 v13, v8, 0x1

    invoke-virtual {p0, v13}, Lcom/lzx/iteam/widget/ButtonGridLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v12, v4}, Landroid/view/View;->measure(II)V

    .line 85
    :goto_1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 86
    return-void

    .line 23
    .end local v0    # "bgl":Lcom/lzx/iteam/widget/ButtonGridLayout;
    .end local v1    # "columns":I
    .end local v2    # "height1":I
    .end local v3    # "height2":I
    .end local v4    # "heightSpec":I
    .end local v5    # "ll":Landroid/widget/LinearLayout;
    .end local v7    # "rows":I
    .end local v8    # "tag":I
    .end local v9    # "temp":I
    .end local v10    # "width1":I
    .end local v11    # "width2":I
    .end local v12    # "widthSpec":I
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "tag":I
    goto :goto_0

    .line 63
    .restart local v0    # "bgl":Lcom/lzx/iteam/widget/ButtonGridLayout;
    .restart local v1    # "columns":I
    .restart local v2    # "height1":I
    .restart local v3    # "height2":I
    .restart local v5    # "ll":Landroid/widget/LinearLayout;
    .restart local v7    # "rows":I
    .restart local v10    # "width1":I
    .restart local v11    # "width2":I
    :cond_3
    rem-int v9, v10, v1

    .line 64
    .restart local v9    # "temp":I
    if-eqz v9, :cond_4

    .line 65
    sub-int v13, v1, v9

    add-int/2addr v10, v13

    .line 66
    sub-int v13, v1, v9

    sub-int/2addr v11, v13

    .line 68
    :cond_4
    rem-int v9, v2, v7

    .line 69
    if-eqz v9, :cond_5

    .line 70
    sub-int v13, v7, v9

    add-int/2addr v2, v13

    .line 76
    :cond_5
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 77
    .restart local v12    # "widthSpec":I
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 78
    .restart local v4    # "heightSpec":I
    invoke-virtual {p0, v8}, Lcom/lzx/iteam/widget/ButtonGridLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v12, v4}, Landroid/view/View;->measure(II)V

    .line 80
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v11, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 81
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 82
    add-int/lit8 v13, v8, 0x1

    invoke-virtual {p0, v13}, Lcom/lzx/iteam/widget/ButtonGridLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v12, v4}, Landroid/view/View;->measure(II)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 96
    return-void
.end method
