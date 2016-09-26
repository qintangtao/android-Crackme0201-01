.class public Lcom/lzx/iteam/adapter/QrGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "QrGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/QrGroupAdapter$AnimateFirstDisplayListener;,
        Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_CLOUD_GROUP_ITEM:I = 0x67

.field public static final ITEM_TYPE_NOTICE:I = 0x65


# instance fields
.field private animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private isSelect:I

.field private mCloudGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudGroupNoticeItemText:Ljava/lang/String;

.field private mContext:Landroid/app/Activity;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mShowCloudGroupNoticeItem:Z

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/nostra13/universalimageloader/core/ImageLoader;)V
    .locals 4
    .param p1, "c"    # Landroid/app/Activity;
    .param p2, "imageLoader"    # Lcom/nostra13/universalimageloader/core/ImageLoader;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const v1, 0x7f0200b4

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->mShowCloudGroupNoticeItem:Z

    .line 34
    iput-object v3, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->mCloudGroupNoticeItemText:Ljava/lang/String;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->isSelect:I

    .line 43
    iput-object p1, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->mContext:Landroid/app/Activity;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 45
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 46
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 52
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 54
    new-instance v0, Lcom/lzx/iteam/adapter/QrGroupAdapter$AnimateFirstDisplayListener;

    invoke-direct {v0, v3}, Lcom/lzx/iteam/adapter/QrGroupAdapter$AnimateFirstDisplayListener;-><init>(Lcom/lzx/iteam/adapter/QrGroupAdapter$AnimateFirstDisplayListener;)V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .line 55
    iput-object p2, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 56
    return-void
.end method

.method private bindCloudGroupNoticeItem(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 192
    iget-object v2, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300f8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, "convertView":Landroid/view/View;
    const v2, 0x7f0e0643

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 194
    .local v1, "title":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->mCloudGroupNoticeItemText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 196
    const v2, 0x7f0a000a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 197
    return-object v0
.end method


# virtual methods
.method public clearCloudGroupList()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/QrGroupAdapter;->notifyDataSetChanged()V

    .line 101
    return-void
.end method

.method public getCloudGroupList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->mShowCloudGroupNoticeItem:Z

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/lzx/iteam/bean/CloudGroup;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 122
    const/16 v1, 0x67

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/QrGroupAdapter;->getItemViewType(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 123
    iget-object v1, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/CloudGroup;

    .line 125
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/QrGroupAdapter;->getItem(I)Lcom/lzx/iteam/bean/CloudGroup;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 130
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->mShowCloudGroupNoticeItem:Z

    if-eqz v0, :cond_0

    .line 106
    const/16 v0, 0x65

    .line 108
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x67

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 135
    const/16 v3, 0x67

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/QrGroupAdapter;->getItemViewType(I)I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "hodler":Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/QrGroupAdapter;->getItem(I)Lcom/lzx/iteam/bean/CloudGroup;

    move-result-object v0

    .line 138
    .local v0, "groupItem":Lcom/lzx/iteam/bean/CloudGroup;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 139
    :cond_0
    new-instance v1, Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;

    .end local v1    # "hodler":Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;
    invoke-direct {v1}, Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;-><init>()V

    .line 140
    .restart local v1    # "hodler":Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;
    iget-object v3, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300d1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 141
    const v3, 0x7f0e01e1

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;->groupType:Landroid/widget/ImageView;

    .line 142
    const v3, 0x7f0e01e3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;->groupName:Landroid/widget/TextView;

    .line 143
    const v3, 0x7f0e01e4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;->groupUseMsg:Landroid/widget/TextView;

    .line 144
    const v3, 0x7f0e0561

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;->groupSelect:Landroid/widget/ImageView;

    .line 145
    const v3, 0x7f0e0562

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;->mask:Landroid/view/View;

    .line 146
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 152
    :goto_0
    iget-object v2, v0, Lcom/lzx/iteam/bean/CloudGroup;->groupImg:Ljava/lang/String;

    .line 153
    .local v2, "imageUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v4, v1, Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;->groupType:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iget-object v6, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 154
    iget-object v3, v1, Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;->groupName:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v3, v1, Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;->groupUseMsg:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/lzx/iteam/bean/CloudGroup;->contactCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u4e2a\u8054\u7cfb\u4eba ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/lzx/iteam/bean/CloudGroup;->memberCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u4eba\u5728\u7528)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget v3, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->isSelect:I

    if-ne p1, v3, :cond_3

    .line 157
    iget-object v3, v1, Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;->groupSelect:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    :goto_1
    iget v3, v0, Lcom/lzx/iteam/bean/CloudGroup;->groupType:I

    if-nez v3, :cond_5

    .line 162
    const-string v3, "2"

    iget-object v4, v0, Lcom/lzx/iteam/bean/CloudGroup;->userType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "3"

    iget-object v4, v0, Lcom/lzx/iteam/bean/CloudGroup;->userType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 163
    :cond_1
    iget-object v3, v1, Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;->mask:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    move-object v3, p2

    .line 173
    .end local v0    # "groupItem":Lcom/lzx/iteam/bean/CloudGroup;
    .end local v1    # "hodler":Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;
    .end local v2    # "imageUrl":Ljava/lang/String;
    :goto_3
    return-object v3

    .line 148
    .restart local v0    # "groupItem":Lcom/lzx/iteam/bean/CloudGroup;
    .restart local v1    # "hodler":Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "hodler":Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;
    check-cast v1, Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;

    .restart local v1    # "hodler":Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;
    goto :goto_0

    .line 159
    .restart local v2    # "imageUrl":Ljava/lang/String;
    :cond_3
    iget-object v3, v1, Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;->groupSelect:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 165
    :cond_4
    iget-object v3, v1, Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;->mask:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 168
    :cond_5
    iget-object v3, v1, Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;->mask:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 173
    .end local v0    # "groupItem":Lcom/lzx/iteam/bean/CloudGroup;
    .end local v1    # "hodler":Lcom/lzx/iteam/adapter/QrGroupAdapter$ViewHodler;
    .end local v2    # "imageUrl":Ljava/lang/String;
    :cond_6
    invoke-direct {p0, p3}, Lcom/lzx/iteam/adapter/QrGroupAdapter;->bindCloudGroupNoticeItem(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_3
.end method

.method public setSelect(I)V
    .locals 0
    .param p1, "select"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->isSelect:I

    .line 179
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/QrGroupAdapter;->notifyDataSetChanged()V

    .line 180
    return-void
.end method

.method public updateCloudGroupList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "cloudGroupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudGroup;>;"
    iget-object v0, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    iget-object v0, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->mShowCloudGroupNoticeItem:Z

    .line 95
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/QrGroupAdapter;->notifyDataSetChanged()V

    .line 96
    return-void
.end method

.method public updateCloudGroupNoticeItem(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->mShowCloudGroupNoticeItem:Z

    .line 86
    iput-object p1, p0, Lcom/lzx/iteam/adapter/QrGroupAdapter;->mCloudGroupNoticeItemText:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/QrGroupAdapter;->notifyDataSetChanged()V

    .line 88
    return-void
.end method
