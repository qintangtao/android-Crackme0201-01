.class public Lcom/lzx/iteam/widget/TextMoreView;
.super Landroid/widget/FrameLayout;
.source "TextMoreView.java"


# instance fields
.field private mIvImage:Landroid/widget/ImageView;

.field private mIvMore:Landroid/widget/ImageView;

.field private mTvDesc:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300f7

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 23
    const v3, 0x7f0e0641

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/widget/TextMoreView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lzx/iteam/widget/TextMoreView;->mTvDesc:Landroid/widget/TextView;

    .line 24
    const v3, 0x7f0e0642

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/widget/TextMoreView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lzx/iteam/widget/TextMoreView;->mIvMore:Landroid/widget/ImageView;

    .line 25
    const v3, 0x7f0e0640

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/widget/TextMoreView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lzx/iteam/widget/TextMoreView;->mIvImage:Landroid/widget/ImageView;

    .line 26
    sget-object v3, Lcom/lzx/iteam/R$styleable;->TextMoreView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 27
    .local v0, "array":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "desc":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 29
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/lzx/iteam/widget/TextMoreView;->mTvDesc:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v3, p0, Lcom/lzx/iteam/widget/TextMoreView;->mIvImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    return-void
.end method


# virtual methods
.method public setDescText(Ljava/lang/String;)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextMoreView;->mTvDesc:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextMoreView;->mIvImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    return-void
.end method

.method public setImageGone()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lzx/iteam/widget/TextMoreView;->mIvImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    return-void
.end method
