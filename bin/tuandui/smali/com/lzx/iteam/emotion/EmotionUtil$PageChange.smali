.class public Lcom/lzx/iteam/emotion/EmotionUtil$PageChange;
.super Ljava/lang/Object;
.source "EmotionUtil.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/emotion/EmotionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageChange"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/emotion/EmotionUtil;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/emotion/EmotionUtil;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/lzx/iteam/emotion/EmotionUtil$PageChange;->this$0:Lcom/lzx/iteam/emotion/EmotionUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 99
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 103
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/emotion/EmotionUtil$PageChange;->this$0:Lcom/lzx/iteam/emotion/EmotionUtil;

    # getter for: Lcom/lzx/iteam/emotion/EmotionUtil;->mLlEmotionDots:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lzx/iteam/emotion/EmotionUtil;->access$0(Lcom/lzx/iteam/emotion/EmotionUtil;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/lzx/iteam/emotion/EmotionUtil$PageChange;->this$0:Lcom/lzx/iteam/emotion/EmotionUtil;

    # getter for: Lcom/lzx/iteam/emotion/EmotionUtil;->mLlEmotionDots:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lzx/iteam/emotion/EmotionUtil;->access$0(Lcom/lzx/iteam/emotion/EmotionUtil;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 111
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/emotion/EmotionUtil$PageChange;->this$0:Lcom/lzx/iteam/emotion/EmotionUtil;

    # getter for: Lcom/lzx/iteam/emotion/EmotionUtil;->mLlEmotionDots:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lzx/iteam/emotion/EmotionUtil;->access$0(Lcom/lzx/iteam/emotion/EmotionUtil;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
