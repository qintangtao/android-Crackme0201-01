.class public Lcom/lzx/iteam/adapter/EventMemberAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventMemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/EventMemberAdapter$AnimateFirstDisplayListener;,
        Lcom/lzx/iteam/adapter/EventMemberAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/net/EventMemberMsg;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/net/EventMemberMsg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    const v1, 0x7f0200b4

    const/4 v2, 0x1

    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter;->list:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 43
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 47
    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 51
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 53
    new-instance v0, Lcom/lzx/iteam/adapter/EventMemberAdapter$AnimateFirstDisplayListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lzx/iteam/adapter/EventMemberAdapter$AnimateFirstDisplayListener;-><init>(Lcom/lzx/iteam/adapter/EventMemberAdapter;Lcom/lzx/iteam/adapter/EventMemberAdapter$AnimateFirstDisplayListener;)V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter;->animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .line 54
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/adapter/EventMemberAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bindData(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Lcom/lzx/iteam/net/EventMemberMsg;

    invoke-direct {v0}, Lcom/lzx/iteam/net/EventMemberMsg;-><init>()V

    .line 59
    .local v0, "eventMemberMsg":Lcom/lzx/iteam/net/EventMemberMsg;
    invoke-virtual {v0, p1}, Lcom/lzx/iteam/net/EventMemberMsg;->setUserName(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/EventMemberAdapter;->notifyDataSetChanged()V

    .line 62
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 77
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "holder":Lcom/lzx/iteam/adapter/EventMemberAdapter$ViewHolder;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/net/EventMemberMsg;

    .line 84
    .local v1, "memberMsg":Lcom/lzx/iteam/net/EventMemberMsg;
    if-nez p2, :cond_0

    .line 85
    new-instance v0, Lcom/lzx/iteam/adapter/EventMemberAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/lzx/iteam/adapter/EventMemberAdapter$ViewHolder;
    invoke-direct {v0, p0, v4}, Lcom/lzx/iteam/adapter/EventMemberAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/EventMemberAdapter;Lcom/lzx/iteam/adapter/EventMemberAdapter$ViewHolder;)V

    .line 86
    .restart local v0    # "holder":Lcom/lzx/iteam/adapter/EventMemberAdapter$ViewHolder;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030098

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 87
    const v2, 0x7f0e0446

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lzx/iteam/adapter/EventMemberAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 88
    const v2, 0x7f0e0448

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lzx/iteam/adapter/EventMemberAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    :goto_0
    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventMemberAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lzx/iteam/net/EventMemberMsg;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const-string v3, "\u6dfb\u52a0"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/net/EventMemberMsg;

    invoke-virtual {v2}, Lcom/lzx/iteam/net/EventMemberMsg;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    .line 95
    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventMemberAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202ca

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    :goto_1
    return-object p2

    .line 91
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/lzx/iteam/adapter/EventMemberAdapter$ViewHolder;
    check-cast v0, Lcom/lzx/iteam/adapter/EventMemberAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lzx/iteam/adapter/EventMemberAdapter$ViewHolder;
    goto :goto_0

    .line 96
    :cond_1
    const-string v3, "\u6682\u65e0"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/net/EventMemberMsg;

    invoke-virtual {v2}, Lcom/lzx/iteam/net/EventMemberMsg;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_2

    .line 97
    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventMemberAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020249

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 99
    :cond_2
    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v1}, Lcom/lzx/iteam/net/EventMemberMsg;->getUserImg()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/lzx/iteam/adapter/EventMemberAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iget-object v6, p0, Lcom/lzx/iteam/adapter/EventMemberAdapter;->animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 100
    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventMemberAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    new-instance v3, Lcom/lzx/iteam/adapter/EventMemberAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/lzx/iteam/adapter/EventMemberAdapter$1;-><init>(Lcom/lzx/iteam/adapter/EventMemberAdapter;Lcom/lzx/iteam/net/EventMemberMsg;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
