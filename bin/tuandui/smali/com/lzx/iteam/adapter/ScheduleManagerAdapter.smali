.class public Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScheduleManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ScheduleManager;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bindData(Ljava/util/ArrayList;I)V
    .locals 0
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ScheduleManager;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ScheduleManager;>;"
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;->list:Ljava/util/ArrayList;

    .line 35
    iput p2, p0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;->mFlag:I

    .line 36
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;->notifyDataSetChanged()V

    .line 37
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ScheduleManager;

    goto :goto_0
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
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "holder":Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/ScheduleManager;

    .line 58
    .local v1, "memberMsg":Lcom/lzx/iteam/bean/ScheduleManager;
    if-nez p2, :cond_1

    .line 59
    new-instance v0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;
    invoke-direct {v0, p0, v4}, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;)V

    .line 60
    .restart local v0    # "holder":Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300dd

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 61
    const v2, 0x7f0e05bb

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/widget/RoundImageView;

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;->userImage:Lcom/lzx/iteam/widget/RoundImageView;

    .line 62
    const v2, 0x7f0e05bd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;->userName:Landroid/widget/TextView;

    .line 63
    const v2, 0x7f0e05be

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;->userPosition:Landroid/widget/TextView;

    .line 64
    const v2, 0x7f0e05bc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    .line 65
    const v2, 0x7f0e05bf

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;->select:Landroid/widget/ImageView;

    .line 66
    const v2, 0x7f0e05c0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;->mask:Landroid/view/View;

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    :goto_0
    iget-object v2, v0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;->userName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleManager;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    sget-object v2, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleManager;->getAvatar()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;->userImage:Lcom/lzx/iteam/widget/RoundImageView;

    sget-object v5, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 73
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleManager;->getJob()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    iget-object v2, v0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;->userPosition:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    :goto_1
    iget-object v2, v0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    new-instance v3, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$1;-><init>(Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;Lcom/lzx/iteam/bean/ScheduleManager;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget v2, p0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;->mFlag:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 87
    iget-object v2, v0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    sget v2, Lcom/lzx/iteam/ScheduleManagerActivity;->mSelectPosition:I

    if-ne v2, p1, :cond_3

    .line 89
    iget-object v2, v0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;->select:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    :goto_2
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleManager;->getAttendance()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "0"

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleManager;->getAttendance()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 94
    iget-object v2, v0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;->mask:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :cond_0
    :goto_3
    return-object p2

    .line 69
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;
    check-cast v0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;
    goto :goto_0

    .line 76
    :cond_2
    iget-object v2, v0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;->userPosition:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v2, v0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;->userPosition:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleManager;->getJob()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 91
    :cond_3
    iget-object v2, v0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;->select:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 96
    :cond_4
    iget-object v2, v0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter$ViewHolder;->mask:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method
