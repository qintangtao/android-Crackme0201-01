.class public Lcom/lzx/iteam/adapter/ApprovalGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "ApprovalGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/ApprovalGridAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p2, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "mList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ApprovalGridAdapter;->mList:Ljava/util/List;

    .line 33
    iput-object p2, p0, Lcom/lzx/iteam/adapter/ApprovalGridAdapter;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ApprovalGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ApprovalGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
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

    .line 55
    if-nez p2, :cond_0

    .line 56
    new-instance v0, Lcom/lzx/iteam/adapter/ApprovalGridAdapter$ViewHolder;

    invoke-direct {v0, p0, v3}, Lcom/lzx/iteam/adapter/ApprovalGridAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/ApprovalGridAdapter;Lcom/lzx/iteam/adapter/ApprovalGridAdapter$ViewHolder;)V

    .line 57
    .local v0, "holder":Lcom/lzx/iteam/adapter/ApprovalGridAdapter$ViewHolder;
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ApprovalGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030013

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    const v1, 0x7f0e0091

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/lzx/iteam/adapter/ApprovalGridAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 59
    const v1, 0x7f0e0092

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lzx/iteam/adapter/ApprovalGridAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    :goto_0
    iget-object v2, v0, Lcom/lzx/iteam/adapter/ApprovalGridAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/ApprovalGridAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    packed-switch p1, :pswitch_data_0

    .line 83
    :goto_1
    return-object p2

    .line 62
    .end local v0    # "holder":Lcom/lzx/iteam/adapter/ApprovalGridAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/adapter/ApprovalGridAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lzx/iteam/adapter/ApprovalGridAdapter$ViewHolder;
    goto :goto_0

    .line 68
    :pswitch_0
    iget-object v1, v0, Lcom/lzx/iteam/adapter/ApprovalGridAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    const v2, 0x7f020027

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 71
    :pswitch_1
    iget-object v1, v0, Lcom/lzx/iteam/adapter/ApprovalGridAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    const v2, 0x7f02001b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 74
    :pswitch_2
    iget-object v1, v0, Lcom/lzx/iteam/adapter/ApprovalGridAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    const v2, 0x7f02001e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 77
    :pswitch_3
    iget-object v1, v0, Lcom/lzx/iteam/adapter/ApprovalGridAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    const v2, 0x7f020024

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
