.class public Lcom/lzx/iteam/adapter/ActiveDetailAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActiveDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/ActiveDetailAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "mData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ActiveDetailAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/lzx/iteam/adapter/ActiveDetailAdapter;->mData:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ActiveDetailAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 41
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    if-nez p2, :cond_0

    .line 48
    new-instance v0, Lcom/lzx/iteam/adapter/ActiveDetailAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/adapter/ActiveDetailAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/ActiveDetailAdapter;)V

    .line 49
    .local v0, "holder":Lcom/lzx/iteam/adapter/ActiveDetailAdapter$ViewHolder;
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ActiveDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/high16 v2, 0x7f030000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 50
    const v1, 0x7f0e0019

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/lzx/iteam/adapter/ActiveDetailAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 51
    const v1, 0x7f0e001a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lzx/iteam/adapter/ActiveDetailAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 52
    const v1, 0x7f0e001b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lzx/iteam/adapter/ActiveDetailAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    :goto_0
    sget-object v2, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/ActiveDetailAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;->getImage()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/lzx/iteam/adapter/ActiveDetailAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    sget-object v4, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v1, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 58
    iget-object v2, v0, Lcom/lzx/iteam/adapter/ActiveDetailAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/ActiveDetailAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v2, v0, Lcom/lzx/iteam/adapter/ActiveDetailAdapter$ViewHolder;->phone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/ActiveDetailAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-object p2

    .line 55
    .end local v0    # "holder":Lcom/lzx/iteam/adapter/ActiveDetailAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/adapter/ActiveDetailAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lzx/iteam/adapter/ActiveDetailAdapter$ViewHolder;
    goto :goto_0
.end method
