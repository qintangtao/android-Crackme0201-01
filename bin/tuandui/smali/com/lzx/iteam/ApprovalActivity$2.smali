.class Lcom/lzx/iteam/ApprovalActivity$2;
.super Ljava/lang/Object;
.source "ApprovalActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ApprovalActivity;->initFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ApprovalActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ApprovalActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ApprovalActivity$2;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 213
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i1"    # I

    .prologue
    .line 188
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "i"    # I

    .prologue
    const v5, 0x7f0a00c5

    const v4, 0x7f0a00b2

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 192
    if-nez p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity$2;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mTvApply:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalActivity;->access$12(Lcom/lzx/iteam/ApprovalActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ApprovalActivity$2;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    invoke-virtual {v1}, Lcom/lzx/iteam/ApprovalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity$2;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mTvApproval:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalActivity;->access$13(Lcom/lzx/iteam/ApprovalActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ApprovalActivity$2;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    invoke-virtual {v1}, Lcom/lzx/iteam/ApprovalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity$2;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mViewApply:Landroid/view/View;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalActivity;->access$14(Lcom/lzx/iteam/ApprovalActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity$2;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mViewAp:Landroid/view/View;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalActivity;->access$15(Lcom/lzx/iteam/ApprovalActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity$2;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mLayoutComplete:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalActivity;->access$16(Lcom/lzx/iteam/ApprovalActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity$2;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    invoke-static {v0, v2}, Lcom/lzx/iteam/ApprovalActivity;->access$17(Lcom/lzx/iteam/ApprovalActivity;I)V

    .line 208
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity$2;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mTvApproval:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalActivity;->access$13(Lcom/lzx/iteam/ApprovalActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ApprovalActivity$2;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    invoke-virtual {v1}, Lcom/lzx/iteam/ApprovalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity$2;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mTvApply:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalActivity;->access$12(Lcom/lzx/iteam/ApprovalActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ApprovalActivity$2;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    invoke-virtual {v1}, Lcom/lzx/iteam/ApprovalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity$2;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mViewAp:Landroid/view/View;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalActivity;->access$15(Lcom/lzx/iteam/ApprovalActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity$2;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mViewApply:Landroid/view/View;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalActivity;->access$14(Lcom/lzx/iteam/ApprovalActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity$2;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mLayoutComplete:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalActivity;->access$16(Lcom/lzx/iteam/ApprovalActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity$2;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lzx/iteam/ApprovalActivity;->access$17(Lcom/lzx/iteam/ApprovalActivity;I)V

    goto :goto_0
.end method
