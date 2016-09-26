.class public Lcom/lzx/iteam/widget/TwiceTextChoiceView;
.super Landroid/widget/FrameLayout;
.source "TwiceTextChoiceView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/widget/TwiceTextChoiceView$OnChoiceChangeListener;
    }
.end annotation


# instance fields
.field mListener:Lcom/lzx/iteam/widget/TwiceTextChoiceView$OnChoiceChangeListener;

.field private mState:I

.field mTvAll:Landroid/widget/TextView;

.field mTvSelected:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mState:I

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300fd

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 24
    const v0, 0x7f0e0650

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mTvAll:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f0e0651

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mTvSelected:Landroid/widget/TextView;

    .line 26
    iget-object v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mTvAll:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mTvSelected:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    return-void
.end method

.method private setSelectedState(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 38
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->setAllToPressedState()V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->setSelectedToPressedState()V

    goto :goto_0
.end method

.method private setSelectedToPressedState()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mTvAll:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 83
    iget-object v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mTvAll:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mTvSelected:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 85
    iget-object v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mTvSelected:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    return-void
.end method


# virtual methods
.method public backToDefaultState()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mTvAll:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 90
    iget-object v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mTvAll:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mTvSelected:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 92
    iget-object v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mTvSelected:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mState:I

    .line 94
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mState:I

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->setAllToPressedState()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mState:I

    .line 54
    iget-object v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mListener:Lcom/lzx/iteam/widget/TwiceTextChoiceView$OnChoiceChangeListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mListener:Lcom/lzx/iteam/widget/TwiceTextChoiceView$OnChoiceChangeListener;

    invoke-interface {v0}, Lcom/lzx/iteam/widget/TwiceTextChoiceView$OnChoiceChangeListener;->choiceAll()V

    goto :goto_0

    .line 60
    :pswitch_1
    iget v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mState:I

    if-eq v0, v1, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->setSelectedToPressedState()V

    .line 62
    iput v1, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mState:I

    .line 64
    iget-object v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mListener:Lcom/lzx/iteam/widget/TwiceTextChoiceView$OnChoiceChangeListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mListener:Lcom/lzx/iteam/widget/TwiceTextChoiceView$OnChoiceChangeListener;

    invoke-interface {v0}, Lcom/lzx/iteam/widget/TwiceTextChoiceView$OnChoiceChangeListener;->choiceSelected()V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x7f0e0650
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAllToPressedState()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mTvAll:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 74
    iget-object v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mTvAll:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mTvSelected:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 76
    iget-object v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mTvSelected:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mState:I

    .line 79
    return-void
.end method

.method public setOnChoiceChangeListener(Lcom/lzx/iteam/widget/TwiceTextChoiceView$OnChoiceChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lzx/iteam/widget/TwiceTextChoiceView$OnChoiceChangeListener;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mListener:Lcom/lzx/iteam/widget/TwiceTextChoiceView$OnChoiceChangeListener;

    .line 103
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lzx/iteam/widget/TwiceTextChoiceView;->mTvSelected:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    return-void
.end method
