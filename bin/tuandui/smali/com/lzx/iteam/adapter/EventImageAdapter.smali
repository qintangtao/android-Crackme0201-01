.class public Lcom/lzx/iteam/adapter/EventImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private holder:Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;

.field private mContext:Landroid/content/Context;

.field private mEventId:Ljava/lang/String;

.field private mImageDatas:[Ljava/lang/String;

.field private mOriImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTalkId:Ljava/lang/String;

.field private mThumeImages:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mEventId"    # Ljava/lang/String;
    .param p3, "mImageDatas"    # [Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->holder:Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;

    .line 42
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mImageDatas:[Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mEventId:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mImageDatas"    # [Ljava/lang/String;
    .param p3, "talkId"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->holder:Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;

    .line 49
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mImageDatas:[Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mTalkId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mImageDatas"    # [Ljava/lang/String;
    .param p4, "mThumeImages"    # Ljava/lang/String;
    .param p5, "mEventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p3, "mOriImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->holder:Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;

    .line 34
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mImageDatas:[Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mOriImages:Ljava/util/ArrayList;

    .line 37
    iput-object p4, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mThumeImages:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mEventId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/adapter/EventImageAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/adapter/EventImageAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mOriImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/adapter/EventImageAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mThumeImages:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mImageDatas:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mImageDatas:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 66
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

    .line 72
    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mImageDatas:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 73
    .local v0, "imageData":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 74
    new-instance v2, Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;

    invoke-direct {v2, p0, v4}, Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/EventImageAdapter;Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;)V

    iput-object v2, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->holder:Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;

    .line 75
    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030079

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 76
    iget-object v3, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->holder:Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;

    const v2, 0x7f0e0385

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 77
    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->holder:Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    :goto_0
    const-string v1, ""

    .line 83
    .local v1, "path":Ljava/lang/String;
    sget-object v2, Lcom/lzx/iteam/util/Constants;->NEW_TALK_ID:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mTalkId:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mTalkId:Ljava/lang/String;

    sget-object v3, Lcom/lzx/iteam/util/Constants;->NEW_TALK_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    sget-object v2, Lcom/lzx/iteam/selectimage/Bimp;->mPictureData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v2, p1, :cond_0

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lzx/iteam/selectimage/Bimp;->mPictureData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    :cond_0
    sget-object v2, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->holder:Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;

    iget-object v3, v3, Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    sget-object v4, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionEventImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v1, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 89
    const-string v2, "talk_list_send_da"

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/lzx/iteam/selectimage/Bimp;->mPictureData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "  none    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_1
    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mOriImages:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->holder:Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    new-instance v3, Lcom/lzx/iteam/adapter/EventImageAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/lzx/iteam/adapter/EventImageAdapter$1;-><init>(Lcom/lzx/iteam/adapter/EventImageAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :cond_1
    return-object p2

    .line 79
    .end local v1    # "path":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;

    iput-object v2, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->holder:Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;

    goto/16 :goto_0

    .line 90
    .restart local v1    # "path":Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/lzx/iteam/util/Constants;->NEW_EVENT_ID:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mEventId:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->mEventId:Ljava/lang/String;

    sget-object v3, Lcom/lzx/iteam/util/Constants;->NEW_EVENT_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 91
    sget-object v2, Lcom/lzx/iteam/selectimage/Bimp;->mPictureData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v2, p1, :cond_4

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lzx/iteam/selectimage/Bimp;->mPictureData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    :cond_4
    sget-object v2, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->holder:Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;

    iget-object v3, v3, Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    sget-object v4, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionEventImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v1, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 96
    const-string v2, "event_list"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 98
    :cond_5
    sget-object v2, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/EventImageAdapter;->holder:Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;

    iget-object v3, v3, Lcom/lzx/iteam/adapter/EventImageAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    sget-object v4, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionEventImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v0, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 99
    const-string v2, "talk_list"

    const-string v3, "show"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
