.class public Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChatGroupMemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$AnimateFirstDisplayListener;,
        Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ChatContact;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;->list:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$AnimateFirstDisplayListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$AnimateFirstDisplayListener;-><init>(Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$AnimateFirstDisplayListener;)V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;->animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bindData(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ChatContact;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatContact;>;"
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 76
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;->list:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 78
    new-instance v0, Lcom/lzx/iteam/bean/ChatContact;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/ChatContact;-><init>()V

    .line 79
    .local v0, "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    iput-object p2, v0, Lcom/lzx/iteam/bean/ChatContact;->userName:Ljava/lang/String;

    .line 80
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;->notifyDataSetChanged()V

    .line 84
    .end local v0    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 98
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, "holder":Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$ViewHolder;
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ChatContact;

    .line 105
    .local v0, "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    if-nez p2, :cond_1

    .line 106
    new-instance v1, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$ViewHolder;

    .end local v1    # "holder":Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$ViewHolder;
    invoke-direct {v1, p0, v5}, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$ViewHolder;)V

    .line 107
    .restart local v1    # "holder":Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$ViewHolder;
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030098

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 108
    const v3, 0x7f0e0446

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 109
    const v3, 0x7f0e0448

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 110
    const v3, 0x7f0e0447

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    .line 111
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 115
    :goto_0
    iget-object v4, v1, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/ChatContact;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/ChatContact;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const-string v3, "\u6dfb\u52a0"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatContact;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "\u53d1\u8d77\u7fa4\u804a"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatContact;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_2

    .line 118
    iget-object v3, v1, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0202ca

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    :goto_1
    return-object p2

    .line 113
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$ViewHolder;
    check-cast v1, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$ViewHolder;
    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatContact;->getUserImg()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "imageUrl":Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 122
    sget-object v3, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v4, v1, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    sget-object v5, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3, v2, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 124
    :cond_3
    iget-object v3, v1, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    new-instance v4, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter$1;-><init>(Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;Lcom/lzx/iteam/bean/ChatContact;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
