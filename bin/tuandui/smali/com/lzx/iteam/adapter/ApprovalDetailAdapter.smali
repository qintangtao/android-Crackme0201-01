.class public Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;
.super Landroid/widget/BaseAdapter;
.source "ApprovalDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/ApprovalBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/ApprovalBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "mList":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/ApprovalBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;->mList:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v10, 0x7f0a00c8

    const v9, 0x7f020015

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 57
    if-nez p2, :cond_0

    .line 58
    new-instance v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;)V

    .line 59
    .local v1, "holder":Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;
    iget-object v4, p0, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030015

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 60
    const v4, 0x7f0e00a7

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/widget/RoundImageView;

    iput-object v4, v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->image:Lcom/lzx/iteam/widget/RoundImageView;

    .line 61
    const v4, 0x7f0e00a8

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 62
    const v4, 0x7f0e00a9

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->state:Landroid/widget/TextView;

    .line 63
    const v4, 0x7f0e00aa

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->time:Landroid/widget/TextView;

    .line 64
    const v4, 0x7f0e00a5

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->status:Landroid/widget/ImageView;

    .line 65
    const v4, 0x7f0e00a6

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->line:Landroid/view/View;

    .line 66
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;->mList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ApprovalBean;

    .line 72
    .local v0, "bean":Lcom/lzx/iteam/bean/ApprovalBean;
    if-nez p1, :cond_1

    .line 73
    iget-object v4, v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->line:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v4, v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->status:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget-object v4, v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->state:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    :goto_1
    iget-object v4, v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ApprovalBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v4, v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->state:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ApprovalBean;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ApprovalBean;->getTime()J

    move-result-wide v2

    .line 92
    .local v2, "time":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    .line 93
    iget-object v4, v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v4, v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ApprovalBean;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Lcom/lzx/iteam/util/DateUtil;->getApprovalDate(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_2
    sget-object v4, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ApprovalBean;->getImage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->image:Lcom/lzx/iteam/widget/RoundImageView;

    sget-object v7, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v4, v5, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 99
    return-object p2

    .line 69
    .end local v0    # "bean":Lcom/lzx/iteam/bean/ApprovalBean;
    .end local v1    # "holder":Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;
    .end local v2    # "time":J
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;
    goto :goto_0

    .line 77
    .restart local v0    # "bean":Lcom/lzx/iteam/bean/ApprovalBean;
    :cond_1
    iget-object v4, v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->line:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 78
    const-string v4, "\u5df2\u540c\u610f"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ApprovalBean;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    iget-object v4, v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->status:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v4, v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->state:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 81
    :cond_2
    const-string v4, "\u5df2\u62d2\u7edd"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ApprovalBean;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 82
    iget-object v4, v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->status:Landroid/widget/ImageView;

    const v5, 0x7f020016

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    iget-object v4, v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->state:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 85
    :cond_3
    iget-object v4, v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->status:Landroid/widget/ImageView;

    const v5, 0x7f020018

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    iget-object v4, v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->state:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00af

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 96
    .restart local v2    # "time":J
    :cond_4
    iget-object v4, v1, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2
.end method
