.class Lcom/lzx/iteam/ChatActivity$PageChange;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PageChange"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ChatActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ChatActivity;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity$PageChange;->this$0:Lcom/lzx/iteam/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 637
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 641
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 645
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$PageChange;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mLlEmotionDots:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$25(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 648
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$PageChange;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mLlEmotionDots:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$25(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 649
    return-void

    .line 646
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$PageChange;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mLlEmotionDots:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$25(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 645
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
