.class public Lcom/lzx/iteam/widget/VerticalKeyPadScrollLayout;
.super Landroid/widget/RelativeLayout;
.source "VerticalKeyPadScrollLayout.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-object p1, p0, Lcom/lzx/iteam/widget/VerticalKeyPadScrollLayout;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v8, 0x0

    .line 27
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 28
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/VerticalKeyPadScrollLayout;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 39
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v6, p0, Lcom/lzx/iteam/widget/VerticalKeyPadScrollLayout;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v3

    .line 32
    .local v3, "preferenceUtil":Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-virtual {p0, v8}, Lcom/lzx/iteam/widget/VerticalKeyPadScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 33
    .local v2, "keyPad":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/VerticalKeyPadScrollLayout;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v1, v6, 0x2

    .line 34
    .local v1, "defaultTop":I
    const-string v6, "verticalBoardLastTop"

    invoke-virtual {v3, v6, v1}, Lcom/lzx/iteam/util/PreferenceUtil;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 35
    .local v5, "top":I
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/VerticalKeyPadScrollLayout;->getWidth()I

    move-result v4

    .line 36
    .local v4, "right":I
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    add-int v0, v5, v6

    .line 37
    .local v0, "bottom":I
    invoke-virtual {v2, v8, v5, v4, v0}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 38
    const-string v6, "VerticalPad"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "top:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bottom"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
