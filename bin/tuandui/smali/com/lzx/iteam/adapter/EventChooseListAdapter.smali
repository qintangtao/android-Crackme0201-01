.class public Lcom/lzx/iteam/adapter/EventChooseListAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventChooseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/EventChooseListAdapter$ViewHolder;
    }
.end annotation


# instance fields
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

.field private mSelectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "mData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/lzx/iteam/adapter/EventChooseListAdapter;->mData:Ljava/util/ArrayList;

    .line 22
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventChooseListAdapter;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventChooseListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/EventChooseListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventChooseListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "holder":Lcom/lzx/iteam/adapter/EventChooseListAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 53
    new-instance v0, Lcom/lzx/iteam/adapter/EventChooseListAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/lzx/iteam/adapter/EventChooseListAdapter$ViewHolder;
    invoke-direct {v0, p0, v3}, Lcom/lzx/iteam/adapter/EventChooseListAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/EventChooseListAdapter;Lcom/lzx/iteam/adapter/EventChooseListAdapter$ViewHolder;)V

    .line 54
    .restart local v0    # "holder":Lcom/lzx/iteam/adapter/EventChooseListAdapter$ViewHolder;
    iget-object v1, p0, Lcom/lzx/iteam/adapter/EventChooseListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300f6

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    const v1, 0x7f0e063f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/lzx/iteam/adapter/EventChooseListAdapter$ViewHolder;->ivChoose:Landroid/widget/ImageView;

    .line 56
    const v1, 0x7f0e063e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lzx/iteam/adapter/EventChooseListAdapter$ViewHolder;->tvItem:Landroid/widget/TextView;

    .line 57
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    iget v1, p0, Lcom/lzx/iteam/adapter/EventChooseListAdapter;->mSelectedPosition:I

    if-ne p1, v1, :cond_1

    .line 62
    iget-object v1, v0, Lcom/lzx/iteam/adapter/EventChooseListAdapter$ViewHolder;->ivChoose:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    :goto_1
    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventChooseListAdapter$ViewHolder;->tvItem:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/EventChooseListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-object p2

    .line 59
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/lzx/iteam/adapter/EventChooseListAdapter$ViewHolder;
    check-cast v0, Lcom/lzx/iteam/adapter/EventChooseListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lzx/iteam/adapter/EventChooseListAdapter$ViewHolder;
    goto :goto_0

    .line 64
    :cond_1
    iget-object v1, v0, Lcom/lzx/iteam/adapter/EventChooseListAdapter$ViewHolder;->ivChoose:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/lzx/iteam/adapter/EventChooseListAdapter;->mSelectedPosition:I

    .line 34
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/EventChooseListAdapter;->notifyDataSetChanged()V

    .line 35
    return-void
.end method
