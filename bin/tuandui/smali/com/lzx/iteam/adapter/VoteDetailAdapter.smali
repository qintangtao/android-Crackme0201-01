.class public Lcom/lzx/iteam/adapter/VoteDetailAdapter;
.super Landroid/widget/BaseAdapter;
.source "VoteDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/VoteDetailAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventVoteBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p3, "mCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventVoteBean;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "mData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventVoteBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/lzx/iteam/adapter/VoteDetailAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/lzx/iteam/adapter/VoteDetailAdapter;->mData:Ljava/util/ArrayList;

    .line 30
    iput p3, p0, Lcom/lzx/iteam/adapter/VoteDetailAdapter;->mCount:I

    .line 32
    return-void
.end method


# virtual methods
.method public bindData(Ljava/util/ArrayList;I)V
    .locals 0
    .param p2, "mCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventVoteBean;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "mData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventVoteBean;>;"
    iput-object p1, p0, Lcom/lzx/iteam/adapter/VoteDetailAdapter;->mData:Ljava/util/ArrayList;

    .line 36
    iput p2, p0, Lcom/lzx/iteam/adapter/VoteDetailAdapter;->mCount:I

    .line 37
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/VoteDetailAdapter;->notifyDataSetChanged()V

    .line 38
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lzx/iteam/adapter/VoteDetailAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 52
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 58
    if-nez p2, :cond_1

    .line 59
    new-instance v0, Lcom/lzx/iteam/adapter/VoteDetailAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/adapter/VoteDetailAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/VoteDetailAdapter;)V

    .line 60
    .local v0, "holder":Lcom/lzx/iteam/adapter/VoteDetailAdapter$ViewHolder;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/VoteDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030100

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 61
    const v2, 0x7f0e0659

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lzx/iteam/adapter/VoteDetailAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 62
    const v2, 0x7f0e065a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lzx/iteam/adapter/VoteDetailAdapter$ViewHolder;->mCount:Landroid/widget/TextView;

    .line 63
    const v2, 0x7f0e0658

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/lzx/iteam/adapter/VoteDetailAdapter$ViewHolder;->mProgress:Landroid/widget/ProgressBar;

    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    :goto_0
    iget-object v3, v0, Lcom/lzx/iteam/adapter/VoteDetailAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lzx/iteam/adapter/VoteDetailAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/EventVoteBean;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/EventVoteBean;->getVote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    sget-object v2, Lcom/lzx/iteam/EventDetailContentActivity;->mVote:Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, p1, 0x41

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/lzx/iteam/EventDetailContentActivity;->mVote:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    iget-object v2, v0, Lcom/lzx/iteam/adapter/VoteDetailAdapter$ViewHolder;->mProgress:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/VoteDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02028a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    :goto_1
    const/4 v1, 0x0

    .line 80
    .local v1, "progress":I
    iget v2, p0, Lcom/lzx/iteam/adapter/VoteDetailAdapter;->mCount:I

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/lzx/iteam/adapter/VoteDetailAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/EventVoteBean;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/EventVoteBean;->getCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/lzx/iteam/adapter/VoteDetailAdapter;->mCount:I

    div-int v1, v2, v3

    .line 83
    :cond_0
    iget-object v3, v0, Lcom/lzx/iteam/adapter/VoteDetailAdapter$ViewHolder;->mCount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lzx/iteam/adapter/VoteDetailAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/EventVoteBean;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/EventVoteBean;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, v0, Lcom/lzx/iteam/adapter/VoteDetailAdapter$ViewHolder;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 86
    return-object p2

    .line 67
    .end local v0    # "holder":Lcom/lzx/iteam/adapter/VoteDetailAdapter$ViewHolder;
    .end local v1    # "progress":I
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/adapter/VoteDetailAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lzx/iteam/adapter/VoteDetailAdapter$ViewHolder;
    goto/16 :goto_0

    .line 77
    :cond_2
    iget-object v2, v0, Lcom/lzx/iteam/adapter/VoteDetailAdapter$ViewHolder;->mProgress:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/VoteDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020289

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
