.class public Lcom/lzx/iteam/widget/HorizontalTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "HorizontalTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;
    }
.end annotation


# instance fields
.field private currentPosition:I

.field private currentPositionOffset:F

.field private defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private drawables:[Lcom/lzx/iteam/widget/TextDrawable;

.field private indicatorRect:Landroid/graphics/Rect;

.field private lastScrollX:I

.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private final pageListener:Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private scrollOffset:I

.field private tabCount:I

.field private tabsContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v2, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;-><init>(Lcom/lzx/iteam/widget/HorizontalTabStrip;Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;)V

    iput-object v2, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->pageListener:Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;

    .line 36
    iput v5, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->currentPosition:I

    .line 37
    const/4 v2, 0x0

    iput v2, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->currentPositionOffset:F

    .line 44
    const/16 v2, 0xa

    iput v2, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->scrollOffset:I

    .line 45
    iput v5, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->lastScrollX:I

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 61
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/lzx/iteam/widget/TextDrawable;

    iput-object v2, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->drawables:[Lcom/lzx/iteam/widget/TextDrawable;

    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->drawables:[Lcom/lzx/iteam/widget/TextDrawable;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 68
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->indicatorRect:Landroid/graphics/Rect;

    .line 70
    invoke-virtual {p0, v7}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->setFillViewport(Z)V

    .line 71
    invoke-virtual {p0, v5}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->setWillNotDraw(Z)V

    .line 74
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    .line 75
    iget-object v2, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 76
    iget-object v2, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v2, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->addView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 80
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v2, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->scrollOffset:I

    int-to-float v2, v2

    invoke-static {v7, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->scrollOffset:I

    .line 82
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 85
    return-void

    .line 64
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->drawables:[Lcom/lzx/iteam/widget/TextDrawable;

    new-instance v3, Lcom/lzx/iteam/widget/TextDrawable;

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/lzx/iteam/widget/TextDrawable;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v1

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/lzx/iteam/widget/HorizontalTabStrip;I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->currentPosition:I

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/widget/HorizontalTabStrip;F)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->currentPositionOffset:F

    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/widget/HorizontalTabStrip;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/widget/HorizontalTabStrip;II)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$4(Lcom/lzx/iteam/widget/HorizontalTabStrip;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/widget/HorizontalTabStrip;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabCount:I

    return v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/widget/HorizontalTabStrip;)I
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->getScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/widget/HorizontalTabStrip;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->indicatorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/widget/HorizontalTabStrip;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->calculateIndicatorRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$9(Lcom/lzx/iteam/widget/HorizontalTabStrip;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->currentPosition:I

    return v0
.end method

.method private addTab(ILjava/lang/String;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x41700000    # 15.0f

    .line 100
    iget-object v3, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030035

    invoke-virtual {v3, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 101
    .local v2, "tab":Landroid/view/ViewGroup;
    const v3, 0x7f0e0157

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 102
    .local v1, "category_text":Landroid/widget/TextView;
    const v3, 0x7f0e0158

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "category_line":Landroid/view/View;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 105
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 106
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 107
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 108
    if-nez p1, :cond_0

    .line 109
    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 110
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 111
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0069

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    :goto_0
    new-instance v3, Lcom/lzx/iteam/widget/HorizontalTabStrip$1;

    invoke-direct {v3, p0, p1}, Lcom/lzx/iteam/widget/HorizontalTabStrip$1;-><init>(Lcom/lzx/iteam/widget/HorizontalTabStrip;I)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v3, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v2, p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 155
    return-void

    .line 113
    :cond_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 114
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 115
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private calculateIndicatorRect(Landroid/graphics/Rect;)V
    .locals 12
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const v10, 0x7f0e0157

    const/high16 v9, 0x3f800000    # 1.0f

    .line 159
    iget-object v7, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v8, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->currentPosition:I

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 160
    .local v1, "currentTab":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 163
    .local v0, "category_text":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v2, v7

    .line 164
    .local v2, "left":F
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float v6, v7, v2

    .line 166
    .local v6, "width":F
    iget v7, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->currentPositionOffset:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    iget v7, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->currentPosition:I

    iget v8, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_0

    .line 167
    iget-object v7, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v8, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->currentPosition:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 168
    .local v3, "nextTab":Landroid/view/ViewGroup;
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 170
    .local v4, "next_category_text":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v7

    invoke-virtual {v4}, Landroid/widget/TextView;->getLeft()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v5, v7

    .line 171
    .local v5, "next_left":F
    iget v7, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->currentPositionOffset:F

    sub-float v7, v9, v7

    mul-float/2addr v7, v2

    iget v8, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->currentPositionOffset:F

    mul-float/2addr v8, v5

    add-float v2, v7, v8

    .line 172
    iget v7, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->currentPositionOffset:F

    sub-float v7, v9, v7

    mul-float/2addr v7, v6

    iget v8, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->currentPositionOffset:F

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v5

    mul-float/2addr v8, v9

    add-float v6, v7, v8

    .line 175
    .end local v3    # "nextTab":Landroid/view/ViewGroup;
    .end local v4    # "next_category_text":Landroid/widget/TextView;
    .end local v5    # "next_left":F
    :cond_0
    float-to-int v7, v2

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->getPaddingTop()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v9

    add-int/2addr v8, v9

    .line 176
    float-to-int v9, v6

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->getPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v10

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->getPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    .line 175
    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 177
    .end local v0    # "category_text":Landroid/widget/TextView;
    .end local v2    # "left":F
    .end local v6    # "width":F
    :cond_1
    return-void
.end method

.method private getScrollRange()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method private scrollToChild(II)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 186
    iget v1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabCount:I

    if-nez v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->indicatorRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->calculateIndicatorRect(Landroid/graphics/Rect;)V

    .line 191
    iget v0, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->lastScrollX:I

    .line 192
    .local v0, "newScrollX":I
    iget-object v1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->indicatorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->scrollOffset:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    .line 193
    iget-object v1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->indicatorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->scrollOffset:I

    sub-int v0, v1, v2

    .line 197
    :cond_2
    :goto_1
    iget v1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->lastScrollX:I

    if-eq v0, v1, :cond_0

    .line 198
    iput v0, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->lastScrollX:I

    .line 199
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->scrollTo(II)V

    goto :goto_0

    .line 194
    :cond_3
    iget-object v1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->indicatorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->scrollOffset:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_2

    .line 195
    iget-object v1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->indicatorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->scrollOffset:I

    add-int v0, v1, v2

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 210
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->indicatorRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->calculateIndicatorRect(Landroid/graphics/Rect;)V

    .line 242
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 258
    iget-object v1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 259
    iget-object v1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabCount:I

    .line 260
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabCount:I

    if-lt v0, v1, :cond_0

    .line 263
    return-void

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->addTab(ILjava/lang/String;)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setTabData(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 2
    .param p2, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 91
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabCount:I

    .line 92
    iput-object p2, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->mContext:Landroid/content/Context;

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabCount:I

    if-lt v0, v1, :cond_0

    .line 96
    return-void

    .line 94
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->addTab(ILjava/lang/String;)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    .line 249
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip;->pageListener:Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 253
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->notifyDataSetChanged()V

    .line 254
    return-void
.end method
