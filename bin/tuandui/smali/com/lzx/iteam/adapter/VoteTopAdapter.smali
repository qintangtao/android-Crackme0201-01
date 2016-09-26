.class public Lcom/lzx/iteam/adapter/VoteTopAdapter;
.super Landroid/widget/BaseAdapter;
.source "VoteTopAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/VoteTopAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private isShowCheck:Z

.field private mColors:[I

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
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
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p3, "isShowCheck"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "mData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/VoteTopAdapter;->mColors:[I

    .line 27
    iput-object p1, p0, Lcom/lzx/iteam/adapter/VoteTopAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/lzx/iteam/adapter/VoteTopAdapter;->mData:Ljava/util/ArrayList;

    .line 29
    iput-boolean p3, p0, Lcom/lzx/iteam/adapter/VoteTopAdapter;->isShowCheck:Z

    .line 30
    return-void

    .line 24
    :array_0
    .array-data 4
        0x7f020289
        0x7f02028a
        0x7f02028b
        0x7f02028c
        0x7f02028d
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lzx/iteam/adapter/VoteTopAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    if-nez p2, :cond_0

    .line 52
    new-instance v0, Lcom/lzx/iteam/adapter/VoteTopAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/adapter/VoteTopAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/VoteTopAdapter;)V

    .line 53
    .local v0, "holder":Lcom/lzx/iteam/adapter/VoteTopAdapter$ViewHolder;
    iget-object v1, p0, Lcom/lzx/iteam/adapter/VoteTopAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030102

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 54
    const v1, 0x7f0e065e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lzx/iteam/adapter/VoteTopAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 55
    const v1, 0x7f0e065f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/lzx/iteam/adapter/VoteTopAdapter$ViewHolder;->mCheck:Landroid/widget/CheckBox;

    .line 56
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    iget-object v2, v0, Lcom/lzx/iteam/adapter/VoteTopAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v3, p1, 0x41

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/lzx/iteam/adapter/VoteTopAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-boolean v1, p0, Lcom/lzx/iteam/adapter/VoteTopAdapter;->isShowCheck:Z

    if-nez v1, :cond_1

    .line 63
    iget-object v1, v0, Lcom/lzx/iteam/adapter/VoteTopAdapter$ViewHolder;->mCheck:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 82
    :goto_1
    return-object p2

    .line 59
    .end local v0    # "holder":Lcom/lzx/iteam/adapter/VoteTopAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/adapter/VoteTopAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lzx/iteam/adapter/VoteTopAdapter$ViewHolder;
    goto :goto_0

    .line 65
    :cond_1
    sget v1, Lcom/lzx/iteam/EventDetailContentActivity;->index:I

    if-ne v1, p1, :cond_2

    .line 66
    iget-object v1, v0, Lcom/lzx/iteam/adapter/VoteTopAdapter$ViewHolder;->mCheck:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 68
    :cond_2
    iget-object v1, v0, Lcom/lzx/iteam/adapter/VoteTopAdapter$ViewHolder;->mCheck:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public setShowCheck(Z)V
    .locals 0
    .param p1, "isShowCheck"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/lzx/iteam/adapter/VoteTopAdapter;->isShowCheck:Z

    .line 87
    return-void
.end method
