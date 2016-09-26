.class public Lcom/lzx/iteam/adapter/EventSendGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventSendGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/EventSendGridAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResultData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "mResultData":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/EventListData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventSendGridAdapter;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/lzx/iteam/adapter/EventSendGridAdapter;->mResultData:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventSendGridAdapter;->mResultData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventSendGridAdapter;->mResultData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 40
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "holder":Lcom/lzx/iteam/adapter/EventSendGridAdapter$ViewHolder;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventSendGridAdapter;->mResultData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/EventListData;

    .line 47
    .local v0, "EventListData":Lcom/lzx/iteam/bean/EventListData;
    if-nez p2, :cond_0

    .line 48
    new-instance v1, Lcom/lzx/iteam/adapter/EventSendGridAdapter$ViewHolder;

    .end local v1    # "holder":Lcom/lzx/iteam/adapter/EventSendGridAdapter$ViewHolder;
    invoke-direct {v1, p0, v4}, Lcom/lzx/iteam/adapter/EventSendGridAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/EventSendGridAdapter;Lcom/lzx/iteam/adapter/EventSendGridAdapter$ViewHolder;)V

    .line 49
    .restart local v1    # "holder":Lcom/lzx/iteam/adapter/EventSendGridAdapter$ViewHolder;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventSendGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300e4

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 50
    const v2, 0x7f0e05dd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/EventSendGridAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 51
    const v2, 0x7f0e05de

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/EventSendGridAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 52
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    :goto_0
    iget-object v2, v1, Lcom/lzx/iteam/adapter/EventSendGridAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/EventSendGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getEventTitleHead()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object v2, v1, Lcom/lzx/iteam/adapter/EventSendGridAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getEventName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-object p2

    .line 54
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/lzx/iteam/adapter/EventSendGridAdapter$ViewHolder;
    check-cast v1, Lcom/lzx/iteam/adapter/EventSendGridAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/lzx/iteam/adapter/EventSendGridAdapter$ViewHolder;
    goto :goto_0
.end method
