.class public Lcom/lzx/iteam/adapter/VoteAdapter;
.super Landroid/widget/BaseAdapter;
.source "VoteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/VoteAdapter$OnUpdateLinster;,
        Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUpdateLinster:Lcom/lzx/iteam/adapter/VoteAdapter$OnUpdateLinster;

.field private mVotes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .param p2, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "mVotes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/lzx/iteam/adapter/VoteAdapter;->mVotes:Ljava/util/ArrayList;

    .line 26
    iput-object p2, p0, Lcom/lzx/iteam/adapter/VoteAdapter;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/adapter/VoteAdapter;)Lcom/lzx/iteam/adapter/VoteAdapter$OnUpdateLinster;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lzx/iteam/adapter/VoteAdapter;->mUpdateLinster:Lcom/lzx/iteam/adapter/VoteAdapter$OnUpdateLinster;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lzx/iteam/adapter/VoteAdapter;->mVotes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lzx/iteam/adapter/VoteAdapter;->mVotes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 41
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    if-nez p2, :cond_0

    .line 48
    new-instance v0, Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/VoteAdapter;)V

    .line 49
    .local v0, "holder":Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;
    iget-object v1, p0, Lcom/lzx/iteam/adapter/VoteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030101

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 50
    const v1, 0x7f0e065b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;->access$0(Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;Landroid/widget/ImageView;)V

    .line 51
    const v1, 0x7f0e065c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;->access$1(Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 52
    const v1, 0x7f0e065d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;->access$2(Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;Landroid/widget/EditText;)V

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/adapter/VoteAdapter;->mVotes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 59
    # getter for: Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;->access$3(Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02035d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 60
    # getter for: Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;->access$3(Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/lzx/iteam/adapter/VoteAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/lzx/iteam/adapter/VoteAdapter$1;-><init>(Lcom/lzx/iteam/adapter/VoteAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :goto_1
    # getter for: Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;->access$4(Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9009\u9879"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, p1, 0x41

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    # getter for: Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;->mContent:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;->access$5(Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v1, p0, Lcom/lzx/iteam/adapter/VoteAdapter;->mVotes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-object p2

    .line 55
    .end local v0    # "holder":Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;
    goto :goto_0

    .line 67
    :cond_1
    # getter for: Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;->access$3(Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020360

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 68
    # getter for: Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;->access$3(Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/lzx/iteam/adapter/VoteAdapter$2;

    invoke-direct {v2, p0, p1}, Lcom/lzx/iteam/adapter/VoteAdapter$2;-><init>(Lcom/lzx/iteam/adapter/VoteAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public setOnUpdateLinster(Lcom/lzx/iteam/adapter/VoteAdapter$OnUpdateLinster;)V
    .locals 0
    .param p1, "linster"    # Lcom/lzx/iteam/adapter/VoteAdapter$OnUpdateLinster;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lzx/iteam/adapter/VoteAdapter;->mUpdateLinster:Lcom/lzx/iteam/adapter/VoteAdapter$OnUpdateLinster;

    .line 96
    return-void
.end method
