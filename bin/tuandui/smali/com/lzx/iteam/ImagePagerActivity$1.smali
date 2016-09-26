.class Lcom/lzx/iteam/ImagePagerActivity$1;
.super Ljava/lang/Object;
.source "ImagePagerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ImagePagerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ImagePagerActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ImagePagerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ImagePagerActivity$1;->this$0:Lcom/lzx/iteam/ImagePagerActivity;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 93
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 97
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "arg0"    # I

    .prologue
    .line 101
    iget-object v1, p0, Lcom/lzx/iteam/ImagePagerActivity$1;->this$0:Lcom/lzx/iteam/ImagePagerActivity;

    const v2, 0x7f080168

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lzx/iteam/ImagePagerActivity$1;->this$0:Lcom/lzx/iteam/ImagePagerActivity;

    # getter for: Lcom/lzx/iteam/ImagePagerActivity;->mPager:Lcom/lzx/iteam/widget/HackyViewPager;
    invoke-static {v5}, Lcom/lzx/iteam/ImagePagerActivity;->access$3(Lcom/lzx/iteam/ImagePagerActivity;)Lcom/lzx/iteam/widget/HackyViewPager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lzx/iteam/widget/HackyViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/ImagePagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/lzx/iteam/ImagePagerActivity$1;->this$0:Lcom/lzx/iteam/ImagePagerActivity;

    # getter for: Lcom/lzx/iteam/ImagePagerActivity;->indicator:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/ImagePagerActivity;->access$4(Lcom/lzx/iteam/ImagePagerActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p0, Lcom/lzx/iteam/ImagePagerActivity$1;->this$0:Lcom/lzx/iteam/ImagePagerActivity;

    invoke-static {v1, p1}, Lcom/lzx/iteam/ImagePagerActivity;->access$5(Lcom/lzx/iteam/ImagePagerActivity;I)V

    .line 104
    return-void
.end method
