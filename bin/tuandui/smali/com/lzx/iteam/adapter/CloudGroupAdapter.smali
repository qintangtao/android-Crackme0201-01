.class public Lcom/lzx/iteam/adapter/CloudGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "CloudGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/CloudGroupAdapter$AnimateFirstDisplayListener;,
        Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;
    }
.end annotation


# static fields
.field public static final GROUP_TYPE_PRIVATE:I = 0x1

.field public static final GROUP_TYPE_PUBLIC:I = 0x0

.field public static final GROUP_TYPE_YELLOWPAGE:I = 0x80

.field public static final ITEM_TYPE_CLOUD_GROUP_ITEM:I = 0x67

.field public static final ITEM_TYPE_NOTICE:I = 0x65


# instance fields
.field private animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

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

    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mShowCloudGroupNoticeItem:Z

    .line 41
    iput-object v3, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mCloudGroupNoticeItemText:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mContext:Landroid/app/Activity;

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 52
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 53
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 58
    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 59
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 61
    new-instance v0, Lcom/lzx/iteam/adapter/CloudGroupAdapter$AnimateFirstDisplayListener;

    invoke-direct {v0, v3}, Lcom/lzx/iteam/adapter/CloudGroupAdapter$AnimateFirstDisplayListener;-><init>(Lcom/lzx/iteam/adapter/CloudGroupAdapter$AnimateFirstDisplayListener;)V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .line 62
    iput-object p2, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 63
    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/adapter/CloudGroupAdapter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method private bindCloudGroupNoticeItem(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 229
    iget-object v2, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300f8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 230
    .local v0, "convertView":Landroid/view/View;
    const v2, 0x7f0e0643

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 231
    .local v1, "title":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mCloudGroupNoticeItemText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 233
    const v2, 0x7f0a000a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 234
    return-object v0
.end method


# virtual methods
.method public clearCloudGroupList()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->notifyDataSetChanged()V

    .line 108
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
    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mShowCloudGroupNoticeItem:Z

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

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

    .line 129
    const/16 v1, 0x67

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->getItemViewType(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 130
    iget-object v1, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/CloudGroup;

    .line 132
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->getItem(I)Lcom/lzx/iteam/bean/CloudGroup;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 137
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mShowCloudGroupNoticeItem:Z

    if-eqz v0, :cond_0

    .line 113
    const/16 v0, 0x65

    .line 115
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

    .line 142
    const/16 v3, 0x67

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->getItemViewType(I)I

    move-result v4

    if-ne v3, v4, :cond_7

    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, "hodler":Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->getItem(I)Lcom/lzx/iteam/bean/CloudGroup;

    move-result-object v0

    .line 145
    .local v0, "groupItem":Lcom/lzx/iteam/bean/CloudGroup;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 146
    :cond_0
    new-instance v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;

    .end local v1    # "hodler":Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;
    invoke-direct {v1}, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;-><init>()V

    .line 147
    .restart local v1    # "hodler":Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;
    iget-object v3, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030046

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 148
    const v3, 0x7f0e01e1

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->groupType:Landroid/widget/ImageView;

    .line 149
    const v3, 0x7f0e01e3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->groupName:Landroid/widget/TextView;

    .line 150
    const v3, 0x7f0e01e4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->groupUseMsg:Landroid/widget/TextView;

    .line 151
    const v3, 0x7f0e01e2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->groupNew:Landroid/widget/ImageView;

    .line 152
    const v3, 0x7f0e01e6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->groupManage:Landroid/widget/ImageView;

    .line 153
    const v3, 0x7f0e01e7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->groupIsCreator:Landroid/widget/ImageView;

    .line 154
    const v3, 0x7f0e01df

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->createLayout:Landroid/widget/LinearLayout;

    .line 155
    const v3, 0x7f0e01e5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->normalLayout:Landroid/widget/RelativeLayout;

    .line 156
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 161
    :goto_0
    if-nez p1, :cond_2

    .line 162
    iget-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->groupType:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02021e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->groupName:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->groupUseMsg:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/lzx/iteam/bean/CloudGroup;->contactCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u4e2a\u8054\u7cfb\u4eba"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->groupManage:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->groupNew:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->normalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 168
    iget-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->createLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    move-object v3, p2

    .line 213
    .end local v0    # "groupItem":Lcom/lzx/iteam/bean/CloudGroup;
    .end local v1    # "hodler":Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;
    :goto_2
    return-object v3

    .line 158
    .restart local v0    # "groupItem":Lcom/lzx/iteam/bean/CloudGroup;
    .restart local v1    # "hodler":Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "hodler":Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;
    check-cast v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;

    .restart local v1    # "hodler":Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;
    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_3

    .line 170
    iget-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->normalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 171
    iget-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->createLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 173
    :cond_3
    iget-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->normalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 174
    iget-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->groupManage:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->createLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 176
    iget-object v2, v0, Lcom/lzx/iteam/bean/CloudGroup;->groupImg:Ljava/lang/String;

    .line 177
    .local v2, "imageUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v4, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->groupType:Landroid/widget/ImageView;

    sget-object v5, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iget-object v6, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 178
    iget-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->groupName:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->groupUseMsg:Landroid/widget/TextView;

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

    .line 180
    const-string v3, "0"

    iget-object v4, v0, Lcom/lzx/iteam/bean/CloudGroup;->isNew:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 181
    iget-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->groupNew:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    :cond_4
    :goto_3
    const-string v3, "3"

    iget-object v4, v0, Lcom/lzx/iteam/bean/CloudGroup;->userType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 186
    iget-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->groupIsCreator:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    :goto_4
    iget-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->groupManage:Landroid/widget/ImageView;

    new-instance v4, Lcom/lzx/iteam/adapter/CloudGroupAdapter$1;

    invoke-direct {v4, p0, v0, p1}, Lcom/lzx/iteam/adapter/CloudGroupAdapter$1;-><init>(Lcom/lzx/iteam/adapter/CloudGroupAdapter;Lcom/lzx/iteam/bean/CloudGroup;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 182
    :cond_5
    const-string v3, "1"

    iget-object v4, v0, Lcom/lzx/iteam/bean/CloudGroup;->isNew:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 183
    iget-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->groupNew:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 188
    :cond_6
    iget-object v3, v1, Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;->groupIsCreator:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 213
    .end local v0    # "groupItem":Lcom/lzx/iteam/bean/CloudGroup;
    .end local v1    # "hodler":Lcom/lzx/iteam/adapter/CloudGroupAdapter$ViewHodler;
    .end local v2    # "imageUrl":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, p3}, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->bindCloudGroupNoticeItem(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_2
.end method

.method public updateCloudGroupList(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 99
    .local p1, "cloudGroupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudGroup;>;"
    iput-object p1, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mShowCloudGroupNoticeItem:Z

    .line 101
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->notifyDataSetChanged()V

    .line 102
    const-string v0, "CloudGroupAdapter"

    const-string v1, "notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public updateCloudGroupNoticeItem(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mShowCloudGroupNoticeItem:Z

    .line 93
    iput-object p1, p0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->mCloudGroupNoticeItemText:Ljava/lang/String;

    .line 94
    return-void
.end method
