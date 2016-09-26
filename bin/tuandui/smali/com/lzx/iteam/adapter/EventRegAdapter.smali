.class public Lcom/lzx/iteam/adapter/EventRegAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventRegAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventRegBean;",
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
            "Lcom/lzx/iteam/bean/EventRegBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "mData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventRegBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventRegAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/lzx/iteam/adapter/EventRegAdapter;->mData:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/adapter/EventRegAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventRegAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventRegAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, "holder":Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventRegAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/EventRegBean;

    .line 56
    .local v0, "eventRegBean":Lcom/lzx/iteam/bean/EventRegBean;
    if-nez p2, :cond_0

    .line 57
    new-instance v1, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;

    .end local v1    # "holder":Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;
    invoke-direct {v1, p0}, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/EventRegAdapter;)V

    .line 58
    .restart local v1    # "holder":Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventRegAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300d5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    const v2, 0x7f0e0565

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/widget/RoundImageView;

    invoke-static {v1, v2}, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->access$0(Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;Lcom/lzx/iteam/widget/RoundImageView;)V

    .line 60
    # getter for: Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->mIvHead:Lcom/lzx/iteam/widget/RoundImageView;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->access$1(Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;)Lcom/lzx/iteam/widget/RoundImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/adapter/EventRegAdapter;->mContext:Landroid/content/Context;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/RoundImageView;->setRectAdius(F)V

    .line 61
    const v2, 0x7f0e0566

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->access$2(Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 62
    const v2, 0x7f0e0567

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->access$3(Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 63
    const v2, 0x7f0e0568

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->access$4(Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 64
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :goto_0
    sget-object v2, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventRegBean;->getImage()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->mIvHead:Lcom/lzx/iteam/widget/RoundImageView;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->access$1(Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;)Lcom/lzx/iteam/widget/RoundImageView;

    move-result-object v4

    sget-object v5, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 69
    # getter for: Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->mTvName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->access$5(Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventRegBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    # getter for: Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->mTvTime:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->access$6(Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventRegBean;->getRegTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/lzx/iteam/util/DateUtil;->getReplyDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventRegBean;->isTimeOut()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    # getter for: Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->mTvTimeOut:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->access$7(Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    # getter for: Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->mTvTime:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->access$6(Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/adapter/EventRegAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0097

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    :goto_1
    # getter for: Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->mIvHead:Lcom/lzx/iteam/widget/RoundImageView;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->access$1(Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;)Lcom/lzx/iteam/widget/RoundImageView;

    move-result-object v2

    new-instance v3, Lcom/lzx/iteam/adapter/EventRegAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/lzx/iteam/adapter/EventRegAdapter$1;-><init>(Lcom/lzx/iteam/adapter/EventRegAdapter;Lcom/lzx/iteam/bean/EventRegBean;)V

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/RoundImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-object p2

    .line 66
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;
    check-cast v1, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;
    goto :goto_0

    .line 75
    :cond_1
    # getter for: Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->mTvTime:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->access$6(Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/adapter/EventRegAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0087

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    # getter for: Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->mTvTimeOut:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->access$7(Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
