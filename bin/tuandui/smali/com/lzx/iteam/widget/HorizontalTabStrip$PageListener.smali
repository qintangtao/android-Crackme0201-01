.class Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;
.super Ljava/lang/Object;
.source "HorizontalTabStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/widget/HorizontalTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/widget/HorizontalTabStrip;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/widget/HorizontalTabStrip;Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;-><init>(Lcom/lzx/iteam/widget/HorizontalTabStrip;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    .line 277
    if-nez p1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    # getter for: Lcom/lzx/iteam/widget/HorizontalTabStrip;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$4(Lcom/lzx/iteam/widget/HorizontalTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    invoke-virtual {v0, v2, v2}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->scrollTo(II)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    # getter for: Lcom/lzx/iteam/widget/HorizontalTabStrip;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$4(Lcom/lzx/iteam/widget/HorizontalTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    # getter for: Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabCount:I
    invoke-static {v1}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$5(Lcom/lzx/iteam/widget/HorizontalTabStrip;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 283
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    iget-object v1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    # invokes: Lcom/lzx/iteam/widget/HorizontalTabStrip;->getScrollRange()I
    invoke-static {v1}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$6(Lcom/lzx/iteam/widget/HorizontalTabStrip;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->scrollTo(II)V

    goto :goto_0

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    iget-object v1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    # getter for: Lcom/lzx/iteam/widget/HorizontalTabStrip;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$4(Lcom/lzx/iteam/widget/HorizontalTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    # invokes: Lcom/lzx/iteam/widget/HorizontalTabStrip;->scrollToChild(II)V
    invoke-static {v0, v1, v2}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$3(Lcom/lzx/iteam/widget/HorizontalTabStrip;II)V

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    invoke-static {v0, p1}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$0(Lcom/lzx/iteam/widget/HorizontalTabStrip;I)V

    .line 269
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    invoke-static {v0, p2}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$1(Lcom/lzx/iteam/widget/HorizontalTabStrip;F)V

    .line 271
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    iget-object v1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    # getter for: Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabsContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$2(Lcom/lzx/iteam/widget/HorizontalTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    # invokes: Lcom/lzx/iteam/widget/HorizontalTabStrip;->scrollToChild(II)V
    invoke-static {v0, p1, v1}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$3(Lcom/lzx/iteam/widget/HorizontalTabStrip;II)V

    .line 272
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->invalidate()V

    .line 273
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 292
    iget-object v4, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    invoke-static {v4, p1}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$0(Lcom/lzx/iteam/widget/HorizontalTabStrip;I)V

    .line 293
    const/4 v2, 0x0

    .line 294
    .local v2, "i":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    # getter for: Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabsContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$2(Lcom/lzx/iteam/widget/HorizontalTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 329
    return-void

    .line 295
    :cond_1
    iget-object v4, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    # getter for: Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabsContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$2(Lcom/lzx/iteam/widget/HorizontalTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 296
    .local v3, "tab":Landroid/view/ViewGroup;
    const v4, 0x7f0e0157

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 297
    .local v1, "category_text":Landroid/widget/TextView;
    const v4, 0x7f0e0158

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 298
    .local v0, "category_line":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 299
    iget-object v4, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    iget-object v5, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    # getter for: Lcom/lzx/iteam/widget/HorizontalTabStrip;->indicatorRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$7(Lcom/lzx/iteam/widget/HorizontalTabStrip;)Landroid/graphics/Rect;

    move-result-object v5

    # invokes: Lcom/lzx/iteam/widget/HorizontalTabStrip;->calculateIndicatorRect(Landroid/graphics/Rect;)V
    invoke-static {v4, v5}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$8(Lcom/lzx/iteam/widget/HorizontalTabStrip;Landroid/graphics/Rect;)V

    .line 300
    iget-object v4, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    # getter for: Lcom/lzx/iteam/widget/HorizontalTabStrip;->currentPosition:I
    invoke-static {v4}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$9(Lcom/lzx/iteam/widget/HorizontalTabStrip;)I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 301
    iget-object v4, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    invoke-virtual {v4}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0069

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 302
    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 303
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 309
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$PageListener;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    invoke-virtual {v4}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 307
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
