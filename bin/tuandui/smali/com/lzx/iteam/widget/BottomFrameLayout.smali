.class public Lcom/lzx/iteam/widget/BottomFrameLayout;
.super Landroid/widget/FrameLayout;
.source "BottomFrameLayout.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object p1, p0, Lcom/lzx/iteam/widget/BottomFrameLayout;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v7, 0x0

    .line 26
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 27
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/BottomFrameLayout;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 38
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/BottomFrameLayout;->getChildCount()I

    .line 31
    invoke-virtual {p0, v7}, Lcom/lzx/iteam/widget/BottomFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 32
    .local v5, "viewGroup":Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/lzx/iteam/widget/BottomFrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v4

    .line 33
    .local v4, "preferenceUtil":Lcom/lzx/iteam/util/PreferenceUtil;
    const-string v6, "horiBoardLastLeft"

    invoke-virtual {v4, v6, v7}, Lcom/lzx/iteam/util/PreferenceUtil;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 34
    .local v1, "layoutLeft":I
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 35
    .local v0, "height":I
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    add-int v2, v1, v6

    .line 36
    .local v2, "layoutRight":I
    sub-int v6, p5, p3

    sub-int v3, v6, v0

    .line 37
    .local v3, "layoutTop":I
    invoke-virtual {v5, v1, v3, v2, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_0
.end method
