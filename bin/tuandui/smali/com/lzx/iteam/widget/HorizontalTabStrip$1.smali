.class Lcom/lzx/iteam/widget/HorizontalTabStrip$1;
.super Ljava/lang/Object;
.source "HorizontalTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/widget/HorizontalTabStrip;->addTab(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/lzx/iteam/widget/HorizontalTabStrip;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$1;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    iput p2, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$1;->val$position:I

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 127
    iget-object v4, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$1;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    iget v5, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$1;->val$position:I

    invoke-static {v4, v5}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$0(Lcom/lzx/iteam/widget/HorizontalTabStrip;I)V

    .line 128
    const/4 v2, 0x0

    .line 129
    .local v2, "i":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$1;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    # getter for: Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabsContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$2(Lcom/lzx/iteam/widget/HorizontalTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 147
    iget-object v4, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$1;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    invoke-virtual {v4}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->invalidate()V

    .line 148
    iget-object v4, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$1;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    iget v5, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$1;->val$position:I

    # invokes: Lcom/lzx/iteam/widget/HorizontalTabStrip;->scrollToChild(II)V
    invoke-static {v4, v5, v6}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$3(Lcom/lzx/iteam/widget/HorizontalTabStrip;II)V

    .line 150
    iget-object v4, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$1;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    # getter for: Lcom/lzx/iteam/widget/HorizontalTabStrip;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v4}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$4(Lcom/lzx/iteam/widget/HorizontalTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    iget v5, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$1;->val$position:I

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 151
    const-string v4, "--tab"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onClick"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$1;->val$position:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 130
    :cond_1
    iget-object v4, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$1;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    # getter for: Lcom/lzx/iteam/widget/HorizontalTabStrip;->tabsContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$2(Lcom/lzx/iteam/widget/HorizontalTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 131
    .local v3, "tab":Landroid/view/ViewGroup;
    const v4, 0x7f0e0157

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 132
    .local v1, "category_text":Landroid/widget/TextView;
    const v4, 0x7f0e0158

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, "category_line":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 134
    iget-object v4, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$1;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    iget-object v5, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$1;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    # getter for: Lcom/lzx/iteam/widget/HorizontalTabStrip;->indicatorRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$7(Lcom/lzx/iteam/widget/HorizontalTabStrip;)Landroid/graphics/Rect;

    move-result-object v5

    # invokes: Lcom/lzx/iteam/widget/HorizontalTabStrip;->calculateIndicatorRect(Landroid/graphics/Rect;)V
    invoke-static {v4, v5}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$8(Lcom/lzx/iteam/widget/HorizontalTabStrip;Landroid/graphics/Rect;)V

    .line 135
    iget-object v4, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$1;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    # getter for: Lcom/lzx/iteam/widget/HorizontalTabStrip;->currentPosition:I
    invoke-static {v4}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->access$9(Lcom/lzx/iteam/widget/HorizontalTabStrip;)I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 136
    iget-object v4, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$1;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    invoke-virtual {v4}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0069

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 138
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 140
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/widget/HorizontalTabStrip$1;->this$0:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    invoke-virtual {v4}, Lcom/lzx/iteam/widget/HorizontalTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 142
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
