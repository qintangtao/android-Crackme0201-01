.class public Lcom/lzx/iteam/selectdate/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# static fields
.field private static final DEF_VISIBLE_ITEMS:I = 0x7

.field private static final ITEM_OFFSET_PERCENT:I = 0x0

.field private static final PADDING:I = 0xa


# instance fields
.field private SHADOWS_COLORS:[I

.field private bottomShadow:Landroid/graphics/drawable/GradientDrawable;

.field private centerDrawable:Landroid/graphics/drawable/Drawable;

.field private changingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/selectdate/OnWheelChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private clickingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/selectdate/OnWheelClickedListener;",
            ">;"
        }
    .end annotation
.end field

.field private currentItem:I

.field private dataObserver:Landroid/database/DataSetObserver;

.field private drawShadows:Z

.field private firstItem:I

.field isCyclic:Z

.field private isScrollingPerformed:Z

.field private itemHeight:I

.field private itemsLayout:Landroid/widget/LinearLayout;

.field label:Ljava/lang/String;

.field private recycle:Lcom/lzx/iteam/selectdate/WheelRecycle;

.field private scroller:Lcom/lzx/iteam/selectdate/WheelScroller;

.field scrollingListener:Lcom/lzx/iteam/selectdate/WheelScroller$ScrollingListener;

.field private scrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/selectdate/OnWheelScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private scrollingOffset:I

.field private topShadow:Landroid/graphics/drawable/GradientDrawable;

.field private viewAdapter:Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

.field private visibleItems:I

.field private wheelBackground:I

.field private wheelForeground:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 54
    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->SHADOWS_COLORS:[I

    .line 66
    iput v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->currentItem:I

    .line 69
    const/4 v0, 0x7

    iput v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->visibleItems:I

    .line 72
    iput v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemHeight:I

    .line 78
    const v0, 0x7f020370

    iput v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->wheelBackground:I

    .line 79
    const v0, 0x7f020371

    iput v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->wheelForeground:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->drawShadows:Z

    .line 94
    iput-boolean v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->isCyclic:Z

    .line 106
    new-instance v0, Lcom/lzx/iteam/selectdate/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/selectdate/WheelRecycle;-><init>(Lcom/lzx/iteam/selectdate/WheelView;)V

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->recycle:Lcom/lzx/iteam/selectdate/WheelRecycle;

    .line 109
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->changingListeners:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingListeners:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->clickingListeners:Ljava/util/List;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->label:Ljava/lang/String;

    .line 148
    new-instance v0, Lcom/lzx/iteam/selectdate/WheelView$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/selectdate/WheelView$1;-><init>(Lcom/lzx/iteam/selectdate/WheelView;)V

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingListener:Lcom/lzx/iteam/selectdate/WheelScroller$ScrollingListener;

    .line 225
    new-instance v0, Lcom/lzx/iteam/selectdate/WheelView$2;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/selectdate/WheelView$2;-><init>(Lcom/lzx/iteam/selectdate/WheelView;)V

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 136
    invoke-direct {p0, p1}, Lcom/lzx/iteam/selectdate/WheelView;->initData(Landroid/content/Context;)V

    .line 137
    return-void

    .line 53
    :array_0
    .array-data 4
        -0x10000001
        -0x30000001
        0x3fffffff    # 1.9999999f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 54
    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->SHADOWS_COLORS:[I

    .line 66
    iput v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->currentItem:I

    .line 69
    const/4 v0, 0x7

    iput v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->visibleItems:I

    .line 72
    iput v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemHeight:I

    .line 78
    const v0, 0x7f020370

    iput v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->wheelBackground:I

    .line 79
    const v0, 0x7f020371

    iput v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->wheelForeground:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->drawShadows:Z

    .line 94
    iput-boolean v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->isCyclic:Z

    .line 106
    new-instance v0, Lcom/lzx/iteam/selectdate/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/selectdate/WheelRecycle;-><init>(Lcom/lzx/iteam/selectdate/WheelView;)V

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->recycle:Lcom/lzx/iteam/selectdate/WheelRecycle;

    .line 109
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->changingListeners:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingListeners:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->clickingListeners:Ljava/util/List;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->label:Ljava/lang/String;

    .line 148
    new-instance v0, Lcom/lzx/iteam/selectdate/WheelView$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/selectdate/WheelView$1;-><init>(Lcom/lzx/iteam/selectdate/WheelView;)V

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingListener:Lcom/lzx/iteam/selectdate/WheelScroller$ScrollingListener;

    .line 225
    new-instance v0, Lcom/lzx/iteam/selectdate/WheelView$2;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/selectdate/WheelView$2;-><init>(Lcom/lzx/iteam/selectdate/WheelView;)V

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 128
    invoke-direct {p0, p1}, Lcom/lzx/iteam/selectdate/WheelView;->initData(Landroid/content/Context;)V

    .line 129
    return-void

    .line 53
    :array_0
    .array-data 4
        -0x10000001
        -0x30000001
        0x3fffffff    # 1.9999999f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 54
    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->SHADOWS_COLORS:[I

    .line 66
    iput v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->currentItem:I

    .line 69
    const/4 v0, 0x7

    iput v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->visibleItems:I

    .line 72
    iput v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemHeight:I

    .line 78
    const v0, 0x7f020370

    iput v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->wheelBackground:I

    .line 79
    const v0, 0x7f020371

    iput v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->wheelForeground:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->drawShadows:Z

    .line 94
    iput-boolean v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->isCyclic:Z

    .line 106
    new-instance v0, Lcom/lzx/iteam/selectdate/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/selectdate/WheelRecycle;-><init>(Lcom/lzx/iteam/selectdate/WheelView;)V

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->recycle:Lcom/lzx/iteam/selectdate/WheelRecycle;

    .line 109
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->changingListeners:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingListeners:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->clickingListeners:Ljava/util/List;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->label:Ljava/lang/String;

    .line 148
    new-instance v0, Lcom/lzx/iteam/selectdate/WheelView$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/selectdate/WheelView$1;-><init>(Lcom/lzx/iteam/selectdate/WheelView;)V

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingListener:Lcom/lzx/iteam/selectdate/WheelScroller$ScrollingListener;

    .line 225
    new-instance v0, Lcom/lzx/iteam/selectdate/WheelView$2;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/selectdate/WheelView$2;-><init>(Lcom/lzx/iteam/selectdate/WheelView;)V

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 120
    invoke-direct {p0, p1}, Lcom/lzx/iteam/selectdate/WheelView;->initData(Landroid/content/Context;)V

    .line 121
    return-void

    .line 53
    :array_0
    .array-data 4
        -0x10000001
        -0x30000001
        0x3fffffff    # 1.9999999f
    .end array-data
.end method

.method static synthetic access$0(Lcom/lzx/iteam/selectdate/WheelView;Z)V
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/lzx/iteam/selectdate/WheelView;->isScrollingPerformed:Z

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/selectdate/WheelView;I)V
    .locals 0

    .prologue
    .line 720
    invoke-direct {p0, p1}, Lcom/lzx/iteam/selectdate/WheelView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/selectdate/WheelView;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingOffset:I

    return v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/selectdate/WheelView;I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingOffset:I

    return-void
.end method

.method static synthetic access$4(Lcom/lzx/iteam/selectdate/WheelView;)Lcom/lzx/iteam/selectdate/WheelScroller;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->scroller:Lcom/lzx/iteam/selectdate/WheelScroller;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/selectdate/WheelView;)Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->isScrollingPerformed:Z

    return v0
.end method

.method private addViewItem(IZ)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "first"    # Z

    .prologue
    const/4 v1, 0x0

    .line 908
    invoke-direct {p0, p1}, Lcom/lzx/iteam/selectdate/WheelView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    .line 909
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 910
    if-eqz p2, :cond_1

    .line 911
    iget-object v2, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 916
    :goto_0
    const/4 v1, 0x1

    .line 919
    :cond_0
    return v1

    .line 913
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private buildViewForMeasuring()V
    .locals 6

    .prologue
    .line 886
    iget-object v2, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 887
    iget-object v2, p0, Lcom/lzx/iteam/selectdate/WheelView;->recycle:Lcom/lzx/iteam/selectdate/WheelRecycle;

    iget-object v3, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/lzx/iteam/selectdate/WheelView;->firstItem:I

    new-instance v5, Lcom/lzx/iteam/selectdate/ItemsRange;

    invoke-direct {v5}, Lcom/lzx/iteam/selectdate/ItemsRange;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/lzx/iteam/selectdate/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/lzx/iteam/selectdate/ItemsRange;)I

    .line 893
    :goto_0
    iget v2, p0, Lcom/lzx/iteam/selectdate/WheelView;->visibleItems:I

    div-int/lit8 v0, v2, 0x2

    .line 894
    .local v0, "addItems":I
    iget v2, p0, Lcom/lzx/iteam/selectdate/WheelView;->currentItem:I

    add-int v1, v2, v0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/lzx/iteam/selectdate/WheelView;->currentItem:I

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    .line 899
    return-void

    .line 889
    .end local v0    # "addItems":I
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/selectdate/WheelView;->createItemsLayout()V

    goto :goto_0

    .line 895
    .restart local v0    # "addItems":I
    .restart local v1    # "i":I
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/lzx/iteam/selectdate/WheelView;->addViewItem(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 896
    iput v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->firstItem:I

    .line 894
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private calculateLayoutWidth(II)I
    .locals 6
    .param p1, "widthSize"    # I
    .param p2, "mode"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 544
    invoke-direct {p0}, Lcom/lzx/iteam/selectdate/WheelView;->initResourcesIfNecessary()V

    .line 547
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 549
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 548
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 550
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 552
    .local v0, "width":I
    if-ne p2, v5, :cond_1

    .line 553
    move v0, p1

    .line 565
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v2, v0, -0x14

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 566
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 565
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 568
    return v0

    .line 555
    :cond_1
    add-int/lit8 v0, v0, 0x14

    .line 558
    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 560
    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_0

    if-ge p1, v0, :cond_0

    .line 561
    move v0, p1

    goto :goto_0
.end method

.method private createItemsLayout()V
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 876
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    .line 877
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 879
    :cond_0
    return-void
.end method

.method private doScroll(I)V
    .locals 8
    .param p1, "delta"    # I

    .prologue
    .line 721
    iget v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingOffset:I

    add-int/2addr v6, p1

    iput v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingOffset:I

    .line 723
    invoke-direct {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getItemHeight()I

    move-result v3

    .line 724
    .local v3, "itemHeight":I
    iget v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingOffset:I

    div-int v0, v6, v3

    .line 726
    .local v0, "count":I
    iget v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->currentItem:I

    sub-int v5, v6, v0

    .line 727
    .local v5, "pos":I
    iget-object v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->viewAdapter:Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

    invoke-interface {v6}, Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v2

    .line 729
    .local v2, "itemCount":I
    iget v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingOffset:I

    rem-int v1, v6, v3

    .line 730
    .local v1, "fixPos":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v7, v3, 0x2

    if-gt v6, v7, :cond_0

    .line 731
    const/4 v1, 0x0

    .line 733
    :cond_0
    iget-boolean v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->isCyclic:Z

    if-eqz v6, :cond_6

    if-lez v2, :cond_6

    .line 734
    if-lez v1, :cond_4

    .line 735
    add-int/lit8 v5, v5, -0x1

    .line 736
    add-int/lit8 v0, v0, 0x1

    .line 742
    :cond_1
    :goto_0
    if-ltz v5, :cond_5

    .line 745
    rem-int/2addr v5, v2

    .line 763
    :cond_2
    :goto_1
    iget v4, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingOffset:I

    .line 764
    .local v4, "offset":I
    iget v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->currentItem:I

    if-eq v5, v6, :cond_a

    .line 765
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(IZ)V

    .line 771
    :goto_2
    mul-int v6, v0, v3

    sub-int v6, v4, v6

    iput v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingOffset:I

    .line 772
    iget v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_3

    .line 773
    iget v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getHeight()I

    move-result v7

    rem-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingOffset:I

    .line 775
    :cond_3
    return-void

    .line 737
    .end local v4    # "offset":I
    :cond_4
    if-gez v1, :cond_1

    .line 738
    add-int/lit8 v5, v5, 0x1

    .line 739
    add-int/lit8 v0, v0, -0x1

    .line 742
    goto :goto_0

    .line 743
    :cond_5
    add-int/2addr v5, v2

    goto :goto_0

    .line 748
    :cond_6
    if-gez v5, :cond_7

    .line 749
    iget v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->currentItem:I

    .line 750
    const/4 v5, 0x0

    .line 751
    goto :goto_1

    :cond_7
    if-lt v5, v2, :cond_8

    .line 752
    iget v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->currentItem:I

    sub-int/2addr v6, v2

    add-int/lit8 v0, v6, 0x1

    .line 753
    add-int/lit8 v5, v2, -0x1

    .line 754
    goto :goto_1

    :cond_8
    if-lez v5, :cond_9

    if-lez v1, :cond_9

    .line 755
    add-int/lit8 v5, v5, -0x1

    .line 756
    add-int/lit8 v0, v0, 0x1

    .line 757
    goto :goto_1

    :cond_9
    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_2

    if-gez v1, :cond_2

    .line 758
    add-int/lit8 v5, v5, 0x1

    .line 759
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 767
    .restart local v4    # "offset":I
    :cond_a
    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->invalidate()V

    goto :goto_2
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getHeight()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 664
    .local v6, "center":I
    invoke-direct {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getItemHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    const-wide v2, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v0, v2

    double-to-int v7, v0

    .line 673
    .local v7, "offset":I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 674
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 676
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 680
    const/4 v1, 0x0

    add-int v0, v6, v7

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    add-int v0, v6, v7

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 681
    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 648
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 650
    iget v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->currentItem:I

    iget v2, p0, Lcom/lzx/iteam/selectdate/WheelView;->firstItem:I

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getItemHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-direct {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getItemHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 651
    .local v0, "top":I
    const/high16 v1, 0x41200000    # 10.0f

    neg-int v2, v0

    iget v3, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 653
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 655
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 656
    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 634
    invoke-direct {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getItemHeight()I

    move-result v1

    mul-int/lit8 v0, v1, 0x3

    .line 636
    .local v0, "height":I
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v5, v5, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 637
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 639
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 640
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 641
    return-void
.end method

.method private getDesiredHeight(Landroid/widget/LinearLayout;)I
    .locals 3
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v2, 0x0

    .line 511
    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 512
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemHeight:I

    .line 515
    :cond_0
    iget v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemHeight:I

    iget v2, p0, Lcom/lzx/iteam/selectdate/WheelView;->visibleItems:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemHeight:I

    mul-int/lit8 v2, v2, 0x0

    div-int/lit8 v2, v2, 0x32

    sub-int v0, v1, v2

    .line 517
    .local v0, "desired":I
    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getItemHeight()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 525
    iget v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemHeight:I

    if-eqz v0, :cond_0

    .line 526
    iget v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemHeight:I

    .line 534
    :goto_0
    return v0

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemHeight:I

    .line 531
    iget v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemHeight:I

    goto :goto_0

    .line 534
    :cond_1
    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->visibleItems:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method private getItemView(I)Landroid/view/View;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 938
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->viewAdapter:Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->viewAdapter:Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

    invoke-interface {v1}, Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 939
    :cond_0
    const/4 v1, 0x0

    .line 951
    :goto_0
    return-object v1

    .line 941
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->viewAdapter:Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

    invoke-interface {v1}, Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 942
    .local v0, "count":I
    invoke-direct {p0, p1}, Lcom/lzx/iteam/selectdate/WheelView;->isValidItemIndex(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 943
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->viewAdapter:Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

    iget-object v2, p0, Lcom/lzx/iteam/selectdate/WheelView;->recycle:Lcom/lzx/iteam/selectdate/WheelRecycle;

    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/WheelRecycle;->getEmptyItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {v1, v2, v3}, Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;->getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 946
    :cond_2
    add-int/2addr p1, v0

    .line 945
    :cond_3
    if-ltz p1, :cond_2

    .line 950
    rem-int/2addr p1, v0

    .line 951
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->viewAdapter:Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

    iget-object v2, p0, Lcom/lzx/iteam/selectdate/WheelView;->recycle:Lcom/lzx/iteam/selectdate/WheelRecycle;

    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/WheelRecycle;->getItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {v1, p1, v2, v3}, Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private getItemsRange()Lcom/lzx/iteam/selectdate/ItemsRange;
    .locals 8

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getItemHeight()I

    move-result v3

    if-nez v3, :cond_0

    .line 793
    const/4 v3, 0x0

    .line 815
    :goto_0
    return-object v3

    .line 796
    :cond_0
    iget v2, p0, Lcom/lzx/iteam/selectdate/WheelView;->currentItem:I

    .line 797
    .local v2, "first":I
    const/4 v0, 0x1

    .line 799
    .local v0, "count":I
    :goto_1
    invoke-direct {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getItemHeight()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 804
    iget v3, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingOffset:I

    if-eqz v3, :cond_2

    .line 805
    iget v3, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingOffset:I

    if-lez v3, :cond_1

    .line 806
    add-int/lit8 v2, v2, -0x1

    .line 808
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 811
    iget v3, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingOffset:I

    invoke-direct {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getItemHeight()I

    move-result v4

    div-int v1, v3, v4

    .line 812
    .local v1, "emptyItems":I
    sub-int/2addr v2, v1

    .line 813
    int-to-double v4, v0

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 815
    .end local v1    # "emptyItems":I
    :cond_2
    new-instance v3, Lcom/lzx/iteam/selectdate/ItemsRange;

    invoke-direct {v3, v2, v0}, Lcom/lzx/iteam/selectdate/ItemsRange;-><init>(II)V

    goto :goto_0

    .line 800
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 801
    add-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method private initData(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    new-instance v0, Lcom/lzx/iteam/selectdate/WheelScroller;

    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingListener:Lcom/lzx/iteam/selectdate/WheelScroller$ScrollingListener;

    invoke-direct {v0, v1, v2}, Lcom/lzx/iteam/selectdate/WheelScroller;-><init>(Landroid/content/Context;Lcom/lzx/iteam/selectdate/WheelScroller$ScrollingListener;)V

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->scroller:Lcom/lzx/iteam/selectdate/WheelScroller;

    .line 145
    return-void
.end method

.method private initResourcesIfNecessary()V
    .locals 3

    .prologue
    .line 488
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->wheelForeground:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1

    .line 493
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/lzx/iteam/selectdate/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 497
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/lzx/iteam/selectdate/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 500
    :cond_2
    iget v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->wheelBackground:I

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/selectdate/WheelView;->setBackgroundResource(I)V

    .line 501
    return-void
.end method

.method private isValidItemIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 928
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->viewAdapter:Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->viewAdapter:Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

    invoke-interface {v0}, Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 929
    iget-boolean v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->isCyclic:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->viewAdapter:Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

    invoke-interface {v0}, Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 928
    if-ge p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layout(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 607
    add-int/lit8 v0, p1, -0x14

    .line 609
    .local v0, "itemsWidth":I
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v2, v0, p2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 610
    return-void
.end method

.method private rebuildItems()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 824
    const/4 v3, 0x0

    .line 825
    .local v3, "updated":Z
    invoke-direct {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getItemsRange()Lcom/lzx/iteam/selectdate/ItemsRange;

    move-result-object v2

    .line 826
    .local v2, "range":Lcom/lzx/iteam/selectdate/ItemsRange;
    iget-object v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    .line 827
    iget-object v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->recycle:Lcom/lzx/iteam/selectdate/WheelRecycle;

    iget-object v7, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v8, p0, Lcom/lzx/iteam/selectdate/WheelView;->firstItem:I

    invoke-virtual {v6, v7, v8, v2}, Lcom/lzx/iteam/selectdate/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/lzx/iteam/selectdate/ItemsRange;)I

    move-result v0

    .line 828
    .local v0, "first":I
    iget v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->firstItem:I

    if-eq v6, v0, :cond_2

    move v3, v4

    .line 829
    :goto_0
    iput v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->firstItem:I

    .line 835
    .end local v0    # "first":I
    :goto_1
    if-nez v3, :cond_0

    .line 836
    iget v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->firstItem:I

    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/ItemsRange;->getFirst()I

    move-result v7

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/ItemsRange;->getCount()I

    move-result v7

    if-ne v6, v7, :cond_4

    move v3, v5

    .line 839
    :cond_0
    :goto_2
    iget v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->firstItem:I

    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/ItemsRange;->getFirst()I

    move-result v7

    if-le v6, v7, :cond_6

    iget v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->firstItem:I

    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/ItemsRange;->getLast()I

    move-result v7

    if-gt v6, v7, :cond_6

    .line 840
    iget v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->firstItem:I

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_3
    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/ItemsRange;->getFirst()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 850
    .end local v1    # "i":I
    :cond_1
    :goto_4
    iget v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->firstItem:I

    .line 851
    .restart local v0    # "first":I
    iget-object v4, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .restart local v1    # "i":I
    :goto_5
    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/ItemsRange;->getCount()I

    move-result v4

    if-lt v1, v4, :cond_7

    .line 856
    iput v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->firstItem:I

    .line 858
    return v3

    .end local v1    # "i":I
    :cond_2
    move v3, v5

    .line 828
    goto :goto_0

    .line 831
    .end local v0    # "first":I
    :cond_3
    invoke-direct {p0}, Lcom/lzx/iteam/selectdate/WheelView;->createItemsLayout()V

    .line 832
    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    move v3, v4

    .line 836
    goto :goto_2

    .line 841
    .restart local v1    # "i":I
    :cond_5
    invoke-direct {p0, v1, v4}, Lcom/lzx/iteam/selectdate/WheelView;->addViewItem(IZ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 844
    iput v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->firstItem:I

    .line 840
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 847
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/ItemsRange;->getFirst()I

    move-result v4

    iput v4, p0, Lcom/lzx/iteam/selectdate/WheelView;->firstItem:I

    goto :goto_4

    .line 852
    .restart local v0    # "first":I
    .restart local v1    # "i":I
    :cond_7
    iget v4, p0, Lcom/lzx/iteam/selectdate/WheelView;->firstItem:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4, v5}, Lcom/lzx/iteam/selectdate/WheelView;->addViewItem(IZ)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-nez v4, :cond_8

    .line 853
    add-int/lit8 v0, v0, 0x1

    .line 851
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 865
    invoke-direct {p0}, Lcom/lzx/iteam/selectdate/WheelView;->rebuildItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcom/lzx/iteam/selectdate/WheelView;->calculateLayoutWidth(II)I

    .line 867
    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lzx/iteam/selectdate/WheelView;->layout(II)V

    .line 869
    :cond_0
    return-void
.end method


# virtual methods
.method public addChangingListener(Lcom/lzx/iteam/selectdate/OnWheelChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lzx/iteam/selectdate/OnWheelChangedListener;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    return-void
.end method

.method public addClickingListener(Lcom/lzx/iteam/selectdate/OnWheelClickedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lzx/iteam/selectdate/OnWheelClickedListener;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    return-void
.end method

.method public addScrollingListener(Lcom/lzx/iteam/selectdate/OnWheelScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lzx/iteam/selectdate/OnWheelScrollListener;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method public drawShadows()Z
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->drawShadows:Z

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->currentItem:I

    return v0
.end method

.method public getViewAdapter()Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->viewAdapter:Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->visibleItems:I

    return v0
.end method

.method public invalidateWheel(Z)V
    .locals 4
    .param p1, "clearCaches"    # Z

    .prologue
    .line 470
    if-eqz p1, :cond_2

    .line 471
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->recycle:Lcom/lzx/iteam/selectdate/WheelRecycle;

    invoke-virtual {v0}, Lcom/lzx/iteam/selectdate/WheelRecycle;->clearAll()V

    .line 472
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 475
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingOffset:I

    .line 481
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->invalidate()V

    .line 482
    return-void

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->recycle:Lcom/lzx/iteam/selectdate/WheelRecycle;

    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/lzx/iteam/selectdate/WheelView;->firstItem:I

    new-instance v3, Lcom/lzx/iteam/selectdate/ItemsRange;

    invoke-direct {v3}, Lcom/lzx/iteam/selectdate/ItemsRange;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/lzx/iteam/selectdate/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/lzx/iteam/selectdate/ItemsRange;)I

    goto :goto_0
.end method

.method public isCyclic()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->isCyclic:Z

    return v0
.end method

.method protected notifyChangingListeners(II)V
    .locals 3
    .param p1, "oldValue"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 277
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    return-void

    .line 277
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/selectdate/OnWheelChangedListener;

    .line 278
    .local v0, "listener":Lcom/lzx/iteam/selectdate/OnWheelChangedListener;
    invoke-interface {v0, p0, p1, p2}, Lcom/lzx/iteam/selectdate/OnWheelChangedListener;->onChanged(Lcom/lzx/iteam/selectdate/WheelView;II)V

    goto :goto_0
.end method

.method protected notifyClickListenersAboutClick(I)V
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 336
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    return-void

    .line 336
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/selectdate/OnWheelClickedListener;

    .line 337
    .local v0, "listener":Lcom/lzx/iteam/selectdate/OnWheelClickedListener;
    invoke-interface {v0, p0, p1}, Lcom/lzx/iteam/selectdate/OnWheelClickedListener;->onItemClicked(Lcom/lzx/iteam/selectdate/WheelView;I)V

    goto :goto_0
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .locals 3

    .prologue
    .line 311
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    return-void

    .line 311
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/selectdate/OnWheelScrollListener;

    .line 312
    .local v0, "listener":Lcom/lzx/iteam/selectdate/OnWheelScrollListener;
    invoke-interface {v0, p0}, Lcom/lzx/iteam/selectdate/OnWheelScrollListener;->onScrollingFinished(Lcom/lzx/iteam/selectdate/WheelView;)V

    goto :goto_0
.end method

.method protected notifyScrollingListenersAboutStart()V
    .locals 3

    .prologue
    .line 302
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    return-void

    .line 302
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/selectdate/OnWheelScrollListener;

    .line 303
    .local v0, "listener":Lcom/lzx/iteam/selectdate/OnWheelScrollListener;
    invoke-interface {v0, p0}, Lcom/lzx/iteam/selectdate/OnWheelScrollListener;->onScrollingStarted(Lcom/lzx/iteam/selectdate/WheelView;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 614
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 616
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->viewAdapter:Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->viewAdapter:Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

    invoke-interface {v0}, Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 617
    invoke-direct {p0}, Lcom/lzx/iteam/selectdate/WheelView;->updateView()V

    .line 619
    invoke-direct {p0, p1}, Lcom/lzx/iteam/selectdate/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    .line 620
    invoke-direct {p0, p1}, Lcom/lzx/iteam/selectdate/WheelView;->drawCenterRect(Landroid/graphics/Canvas;)V

    .line 623
    :cond_0
    iget-boolean v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->drawShadows:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/lzx/iteam/selectdate/WheelView;->drawShadows(Landroid/graphics/Canvas;)V

    .line 624
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 598
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/lzx/iteam/selectdate/WheelView;->layout(II)V

    .line 599
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 573
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 574
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 575
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 576
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 578
    .local v2, "heightSize":I
    invoke-direct {p0}, Lcom/lzx/iteam/selectdate/WheelView;->buildViewForMeasuring()V

    .line 580
    invoke-direct {p0, v5, v4}, Lcom/lzx/iteam/selectdate/WheelView;->calculateLayoutWidth(II)I

    move-result v3

    .line 583
    .local v3, "width":I
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_1

    .line 584
    move v0, v2

    .line 593
    .local v0, "height":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/lzx/iteam/selectdate/WheelView;->setMeasuredDimension(II)V

    .line 594
    return-void

    .line 586
    .end local v0    # "height":I
    :cond_1
    iget-object v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v6}, Lcom/lzx/iteam/selectdate/WheelView;->getDesiredHeight(Landroid/widget/LinearLayout;)I

    move-result v0

    .line 588
    .restart local v0    # "height":I
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_0

    .line 589
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 686
    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getViewAdapter()Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    .line 713
    :cond_0
    :goto_0
    return v2

    .line 690
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 713
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/lzx/iteam/selectdate/WheelView;->scroller:Lcom/lzx/iteam/selectdate/WheelScroller;

    invoke-virtual {v2, p1}, Lcom/lzx/iteam/selectdate/WheelScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 692
    :pswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 693
    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 698
    :pswitch_1
    iget-boolean v2, p0, Lcom/lzx/iteam/selectdate/WheelView;->isScrollingPerformed:Z

    if-nez v2, :cond_2

    .line 699
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 700
    .local v0, "distance":I
    if-lez v0, :cond_3

    .line 701
    invoke-direct {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 705
    :goto_2
    invoke-direct {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getItemHeight()I

    move-result v2

    div-int v1, v0, v2

    .line 706
    .local v1, "items":I
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/lzx/iteam/selectdate/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/lzx/iteam/selectdate/WheelView;->isValidItemIndex(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 707
    iget v2, p0, Lcom/lzx/iteam/selectdate/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/selectdate/WheelView;->notifyClickListenersAboutClick(I)V

    goto :goto_1

    .line 703
    .end local v1    # "items":I
    :cond_3
    invoke-direct {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    goto :goto_2

    .line 690
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeChangingListener(Lcom/lzx/iteam/selectdate/OnWheelChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lzx/iteam/selectdate/OnWheelChangedListener;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 269
    return-void
.end method

.method public removeClickingListener(Lcom/lzx/iteam/selectdate/OnWheelClickedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lzx/iteam/selectdate/OnWheelClickedListener;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 330
    return-void
.end method

.method public removeScrollingListener(Lcom/lzx/iteam/selectdate/OnWheelScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lzx/iteam/selectdate/OnWheelScrollListener;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 296
    return-void
.end method

.method public scroll(II)V
    .locals 3
    .param p1, "itemsToScroll"    # I
    .param p2, "time"    # I

    .prologue
    .line 783
    invoke-direct {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getItemHeight()I

    move-result v1

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingOffset:I

    sub-int v0, v1, v2

    .line 784
    .local v0, "distance":I
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->scroller:Lcom/lzx/iteam/selectdate/WheelScroller;

    invoke-virtual {v1, v0, p2}, Lcom/lzx/iteam/selectdate/WheelScroller;->scroll(II)V

    .line 785
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 401
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(IZ)V

    .line 402
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "animated"    # Z

    .prologue
    const/4 v6, 0x0

    .line 357
    iget-object v4, p0, Lcom/lzx/iteam/selectdate/WheelView;->viewAdapter:Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lzx/iteam/selectdate/WheelView;->viewAdapter:Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

    invoke-interface {v4}, Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v4, p0, Lcom/lzx/iteam/selectdate/WheelView;->viewAdapter:Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

    invoke-interface {v4}, Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 362
    .local v0, "itemCount":I
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_3

    .line 363
    :cond_2
    iget-boolean v4, p0, Lcom/lzx/iteam/selectdate/WheelView;->isCyclic:Z

    if-eqz v4, :cond_0

    .line 364
    :goto_1
    if-ltz p1, :cond_5

    .line 367
    rem-int/2addr p1, v0

    .line 372
    :cond_3
    iget v4, p0, Lcom/lzx/iteam/selectdate/WheelView;->currentItem:I

    if-eq p1, v4, :cond_0

    .line 373
    if-eqz p2, :cond_7

    .line 374
    iget v4, p0, Lcom/lzx/iteam/selectdate/WheelView;->currentItem:I

    sub-int v1, p1, v4

    .line 375
    .local v1, "itemsToScroll":I
    iget-boolean v4, p0, Lcom/lzx/iteam/selectdate/WheelView;->isCyclic:Z

    if-eqz v4, :cond_4

    .line 376
    iget v4, p0, Lcom/lzx/iteam/selectdate/WheelView;->currentItem:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v0

    iget v5, p0, Lcom/lzx/iteam/selectdate/WheelView;->currentItem:I

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v3, v4, v5

    .line 377
    .local v3, "scroll":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 378
    if-gez v1, :cond_6

    move v1, v3

    .line 381
    .end local v3    # "scroll":I
    :cond_4
    :goto_2
    invoke-virtual {p0, v1, v6}, Lcom/lzx/iteam/selectdate/WheelView;->scroll(II)V

    goto :goto_0

    .line 365
    .end local v1    # "itemsToScroll":I
    :cond_5
    add-int/2addr p1, v0

    goto :goto_1

    .line 378
    .restart local v1    # "itemsToScroll":I
    .restart local v3    # "scroll":I
    :cond_6
    neg-int v1, v3

    goto :goto_2

    .line 383
    .end local v1    # "itemsToScroll":I
    .end local v3    # "scroll":I
    :cond_7
    iput v6, p0, Lcom/lzx/iteam/selectdate/WheelView;->scrollingOffset:I

    .line 385
    iget v2, p0, Lcom/lzx/iteam/selectdate/WheelView;->currentItem:I

    .line 386
    .local v2, "old":I
    iput p1, p0, Lcom/lzx/iteam/selectdate/WheelView;->currentItem:I

    .line 388
    iget v4, p0, Lcom/lzx/iteam/selectdate/WheelView;->currentItem:I

    invoke-virtual {p0, v2, v4}, Lcom/lzx/iteam/selectdate/WheelView;->notifyChangingListeners(II)V

    .line 390
    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->invalidate()V

    goto :goto_0
.end method

.method public setCyclic(Z)V
    .locals 1
    .param p1, "isCyclic"    # Z

    .prologue
    .line 417
    iput-boolean p1, p0, Lcom/lzx/iteam/selectdate/WheelView;->isCyclic:Z

    .line 418
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/selectdate/WheelView;->invalidateWheel(Z)V

    .line 419
    return-void
.end method

.method public setDrawShadows(Z)V
    .locals 0
    .param p1, "drawShadows"    # Z

    .prologue
    .line 434
    iput-boolean p1, p0, Lcom/lzx/iteam/selectdate/WheelView;->drawShadows:Z

    .line 435
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->scroller:Lcom/lzx/iteam/selectdate/WheelScroller;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/selectdate/WheelScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 194
    return-void
.end method

.method public setShadowColor(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "middle"    # I
    .param p3, "end"    # I

    .prologue
    .line 444
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->SHADOWS_COLORS:[I

    .line 445
    return-void
.end method

.method public setViewAdapter(Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;)V
    .locals 2
    .param p1, "viewAdapter"    # Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->viewAdapter:Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->viewAdapter:Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 247
    :cond_0
    iput-object p1, p0, Lcom/lzx/iteam/selectdate/WheelView;->viewAdapter:Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

    .line 248
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->viewAdapter:Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->viewAdapter:Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 252
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/selectdate/WheelView;->invalidateWheel(Z)V

    .line 253
    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/lzx/iteam/selectdate/WheelView;->visibleItems:I

    .line 214
    return-void
.end method

.method public setWheelBackground(I)V
    .locals 1
    .param p1, "resource"    # I

    .prologue
    .line 452
    iput p1, p0, Lcom/lzx/iteam/selectdate/WheelView;->wheelBackground:I

    .line 453
    iget v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->wheelBackground:I

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/selectdate/WheelView;->setBackgroundResource(I)V

    .line 454
    return-void
.end method

.method public setWheelForeground(I)V
    .locals 2
    .param p1, "resource"    # I

    .prologue
    .line 461
    iput p1, p0, Lcom/lzx/iteam/selectdate/WheelView;->wheelForeground:I

    .line 462
    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/lzx/iteam/selectdate/WheelView;->wheelForeground:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 463
    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView;->scroller:Lcom/lzx/iteam/selectdate/WheelScroller;

    invoke-virtual {v0}, Lcom/lzx/iteam/selectdate/WheelScroller;->stopScrolling()V

    .line 959
    return-void
.end method
