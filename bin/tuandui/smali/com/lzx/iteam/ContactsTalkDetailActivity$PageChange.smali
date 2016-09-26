.class Lcom/lzx/iteam/ContactsTalkDetailActivity$PageChange;
.super Ljava/lang/Object;
.source "ContactsTalkDetailActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ContactsTalkDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PageChange"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ContactsTalkDetailActivity;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity$PageChange;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 531
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 535
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 539
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity$PageChange;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mLlEmotionDots:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$20(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity$PageChange;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mLlEmotionDots:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$20(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 543
    return-void

    .line 540
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity$PageChange;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mLlEmotionDots:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$20(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 539
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
