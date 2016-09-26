.class public Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;
.super Landroid/widget/BaseAdapter;
.source "AttendanceMemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bindData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ScheduleManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ScheduleManager;>;"
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;->list:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;->notifyDataSetChanged()V

    .line 35
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ScheduleManager;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "holder":Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/ScheduleManager;

    .line 56
    .local v1, "memberMsg":Lcom/lzx/iteam/bean/ScheduleManager;
    if-nez p2, :cond_0

    .line 57
    new-instance v0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;
    invoke-direct {v0, p0, v4}, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;)V

    .line 58
    .restart local v0    # "holder":Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300dd

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    const v2, 0x7f0e05bb

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;->userImage:Landroid/widget/ImageView;

    .line 60
    const v2, 0x7f0e05bd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;->userName:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f0e05be

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;->userPosition:Landroid/widget/TextView;

    .line 62
    const v2, 0x7f0e05bc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    :goto_0
    iget-object v2, v0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;->userName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleManager;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    sget-object v2, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleManager;->getAvatar()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;->userImage:Landroid/widget/ImageView;

    sget-object v5, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 69
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleManager;->getJob()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    iget-object v2, v0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;->userPosition:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    :goto_1
    iget-object v2, v0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    new-instance v3, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$1;-><init>(Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-object p2

    .line 65
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;
    check-cast v0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;
    goto :goto_0

    .line 72
    :cond_1
    iget-object v2, v0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;->userPosition:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v2, v0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter$ViewHolder;->userPosition:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleManager;->getJob()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
