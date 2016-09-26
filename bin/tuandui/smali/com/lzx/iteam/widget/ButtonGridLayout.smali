.class public Lcom/lzx/iteam/widget/ButtonGridLayout;
.super Landroid/view/ViewGroup;
.source "ButtonGridLayout.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ButtonGridLayout"


# instance fields
.field private columns:I

.field private context:Landroid/content/Context;

.field private mButtonHeight:I

.field private mButtonWidth:I

.field private mButtons:[Landroid/view/View;

.field private mGap:F

.field private mHeight:I

.field private mWidth:I

.field private num_children:I

.field private rows:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    iput-object p1, p0, Lcom/lzx/iteam/widget/ButtonGridLayout;->context:Landroid/content/Context;

    .line 94
    sget-object v1, Lcom/lzx/iteam/R$styleable;->ButtonGrid:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/widget/ButtonGridLayout;->mGap:F

    .line 97
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/widget/ButtonGridLayout;->rows:I

    .line 98
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/widget/ButtonGridLayout;->columns:I

    .line 100
    iget v1, p0, Lcom/lzx/iteam/widget/ButtonGridLayout;->rows:I

    iget v2, p0, Lcom/lzx/iteam/widget/ButtonGridLayout;->columns:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/lzx/iteam/widget/ButtonGridLayout;->num_children:I

    .line 101
    iget v1, p0, Lcom/lzx/iteam/widget/ButtonGridLayout;->num_children:I

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/lzx/iteam/widget/ButtonGridLayout;->mButtons:[Landroid/view/View;

    .line 102
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method


# virtual methods
.method public getColumns()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/lzx/iteam/widget/ButtonGridLayout;->columns:I

    return v0
.end method

.method public getRows()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/lzx/iteam/widget/ButtonGridLayout;->rows:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 118
    iget-object v0, p0, Lcom/lzx/iteam/widget/ButtonGridLayout;->mButtons:[Landroid/view/View;

    .line 119
    .local v0, "buttons":[Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/lzx/iteam/widget/ButtonGridLayout;->num_children:I

    if-lt v1, v2, :cond_0

    .line 133
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/widget/ButtonGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 21
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 160
    sub-int v16, p4, p2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/widget/ButtonGridLayout;->mWidth:I

    .line 161
    .local v16, "width":I
    sub-int v12, p5, p3

    move-object/from16 v0, p0

    iput v12, v0, Lcom/lzx/iteam/widget/ButtonGridLayout;->mHeight:I

    .line 170
    .local v12, "height":I
    const-string v19, "ButtonGridLayout"

    const-string v20, "value: "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/widget/ButtonGridLayout;->mHeight:I

    move/from16 v19, v0

    sub-int v19, v12, v19

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/widget/ButtonGridLayout;->getPaddingTop()I

    move-result v20

    add-int v18, v19, v20

    .line 173
    .local v18, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/widget/ButtonGridLayout;->mGap:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 175
    .local v11, "gapPixel":I
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/widget/ButtonGridLayout;->getPaddingLeft()I

    move-result v19

    sub-int v19, v16, v19

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/widget/ButtonGridLayout;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    .line 176
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/widget/ButtonGridLayout;->columns:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    mul-int v20, v20, v11

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/widget/ButtonGridLayout;->columns:I

    move/from16 v20, v0

    div-int v19, v19, v20

    .line 175
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/widget/ButtonGridLayout;->mButtonWidth:I

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/widget/ButtonGridLayout;->getPaddingTop()I

    move-result v19

    sub-int v19, v12, v19

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/widget/ButtonGridLayout;->getPaddingBottom()I

    move-result v20

    sub-int v19, v19, v20

    .line 178
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/widget/ButtonGridLayout;->rows:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    mul-int v20, v20, v11

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/widget/ButtonGridLayout;->rows:I

    move/from16 v20, v0

    div-int v19, v19, v20

    .line 177
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/widget/ButtonGridLayout;->mButtonHeight:I

    .line 180
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/widget/ButtonGridLayout;->mButtonWidth:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 181
    .local v5, "btnWidthMeasureSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/widget/ButtonGridLayout;->mButtonHeight:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 183
    .local v4, "btnHeightMeasureSpec":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/widget/ButtonGridLayout;->num_children:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v13, v0, :cond_0

    .line 193
    const/4 v13, 0x0

    .line 194
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lzx/iteam/widget/ButtonGridLayout;->mButtons:[Landroid/view/View;

    .line 195
    .local v9, "buttons":[Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/widget/ButtonGridLayout;->getPaddingLeft()I

    move-result v14

    .line 196
    .local v14, "paddingLeft":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/lzx/iteam/widget/ButtonGridLayout;->mButtonWidth:I

    .line 197
    .local v8, "buttonWidth":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/lzx/iteam/widget/ButtonGridLayout;->mButtonHeight:I

    .line 198
    .local v7, "buttonHeight":I
    const/4 v15, 0x0

    .local v15, "row":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/widget/ButtonGridLayout;->rows:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v15, v0, :cond_2

    .line 212
    return-void

    .line 184
    .end local v7    # "buttonHeight":I
    .end local v8    # "buttonWidth":I
    .end local v9    # "buttons":[Landroid/view/View;
    .end local v14    # "paddingLeft":I
    .end local v15    # "row":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/widget/ButtonGridLayout;->mButtons:[Landroid/view/View;

    move-object/from16 v19, v0

    aget-object v6, v19, v13

    check-cast v6, Lcom/lzx/iteam/widget/TextImageButton;

    .line 185
    .local v6, "button":Lcom/lzx/iteam/widget/TextImageButton;
    if-eqz v6, :cond_1

    .line 186
    iget v0, v6, Lcom/lzx/iteam/widget/TextImageButton;->width:I

    move/from16 v19, v0

    mul-int v19, v19, v5

    move/from16 v0, v19

    invoke-virtual {v6, v0, v4}, Lcom/lzx/iteam/widget/TextImageButton;->measure(II)V

    .line 183
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 199
    .end local v6    # "button":Lcom/lzx/iteam/widget/TextImageButton;
    .restart local v7    # "buttonHeight":I
    .restart local v8    # "buttonWidth":I
    .restart local v9    # "buttons":[Landroid/view/View;
    .restart local v14    # "paddingLeft":I
    .restart local v15    # "row":I
    :cond_2
    move/from16 v17, v14

    .line 200
    .local v17, "x":I
    const/4 v10, 0x0

    .local v10, "col":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/widget/ButtonGridLayout;->columns:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v10, v0, :cond_3

    .line 209
    add-int v19, v7, v11

    add-int v18, v18, v19

    .line 198
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 201
    :cond_3
    aget-object v6, v9, v13

    check-cast v6, Lcom/lzx/iteam/widget/TextImageButton;

    .line 203
    .restart local v6    # "button":Lcom/lzx/iteam/widget/TextImageButton;
    if-eqz v6, :cond_4

    .line 204
    iget v0, v6, Lcom/lzx/iteam/widget/TextImageButton;->width:I

    move/from16 v19, v0

    mul-int v19, v19, v8

    add-int v19, v19, v17

    add-int v20, v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/lzx/iteam/widget/TextImageButton;->layout(IIII)V

    .line 205
    add-int v19, v8, v11

    add-int v17, v17, v19

    .line 206
    add-int/lit8 v13, v13, 0x1

    .line 200
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 227
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 237
    return-void
.end method

.method public setChildrenBackgroundResource(I)V
    .locals 3
    .param p1, "resid"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lzx/iteam/widget/ButtonGridLayout;->mButtons:[Landroid/view/View;

    .line 143
    .local v0, "buttons":[Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/lzx/iteam/widget/ButtonGridLayout;->num_children:I

    if-lt v1, v2, :cond_0

    .line 146
    return-void

    .line 144
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
