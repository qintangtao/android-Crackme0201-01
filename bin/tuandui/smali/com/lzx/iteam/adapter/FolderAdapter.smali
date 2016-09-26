.class public Lcom/lzx/iteam/adapter/FolderAdapter;
.super Landroid/widget/BaseAdapter;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/FolderAdapter$ImageViewClickListener;,
        Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field cache:Lcom/lzx/iteam/selectimage/BitmapCache;

.field private dm:Landroid/util/DisplayMetrics;

.field holder:Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;

.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->TAG:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->holder:Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;

    .line 39
    new-instance v0, Lcom/lzx/iteam/selectimage/BitmapCache;

    invoke-direct {v0}, Lcom/lzx/iteam/selectimage/BitmapCache;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->cache:Lcom/lzx/iteam/selectimage/BitmapCache;

    .line 40
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/FolderAdapter;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/adapter/FolderAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public dipToPx(I)I
    .locals 2
    .param p1, "dip"    # I

    .prologue
    .line 176
    int-to-float v0, p1

    iget-object v1, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/lzx/iteam/ImageFileActivity;->contentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 100
    if-nez p2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 102
    const-string v3, "plugin_camera_select_folder"

    invoke-static {v3}, Lcom/lzx/iteam/selectimage/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v3

    .line 101
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 103
    new-instance v2, Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;

    invoke-direct {v2, p0, v4}, Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/FolderAdapter;Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;)V

    iput-object v2, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->holder:Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;

    .line 104
    iget-object v3, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->holder:Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;

    .line 105
    const-string v2, "file_back"

    invoke-static {v2}, Lcom/lzx/iteam/selectimage/Res;->getWidgetID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 104
    iput-object v2, v3, Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;->backImage:Landroid/widget/ImageView;

    .line 106
    iget-object v3, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->holder:Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;

    .line 107
    const-string v2, "file_image"

    invoke-static {v2}, Lcom/lzx/iteam/selectimage/Res;->getWidgetID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 106
    iput-object v2, v3, Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 108
    iget-object v3, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->holder:Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;

    .line 109
    const-string v2, "choose_back"

    invoke-static {v2}, Lcom/lzx/iteam/selectimage/Res;->getWidgetID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 108
    iput-object v2, v3, Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;->choose_back:Landroid/widget/ImageView;

    .line 110
    iget-object v3, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->holder:Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;

    const-string v2, "name"

    invoke-static {v2}, Lcom/lzx/iteam/selectimage/Res;->getWidgetID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;->folderName:Landroid/widget/TextView;

    .line 111
    iget-object v3, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->holder:Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;

    const-string v2, "filenum"

    invoke-static {v2}, Lcom/lzx/iteam/selectimage/Res;->getWidgetID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;->fileNum:Landroid/widget/TextView;

    .line 112
    iget-object v2, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->holder:Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 116
    iget-object v2, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->holder:Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 117
    iget-object v2, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->holder:Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    :goto_0
    sget-object v2, Lcom/lzx/iteam/ImageFileActivity;->contentList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/selectimage/ImageBucket;

    iget-object v2, v2, Lcom/lzx/iteam/selectimage/ImageBucket;->imageList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 125
    sget-object v2, Lcom/lzx/iteam/ImageFileActivity;->contentList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/selectimage/ImageBucket;

    iget-object v2, v2, Lcom/lzx/iteam/selectimage/ImageBucket;->imageList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    .local v1, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->holder:Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;

    iget-object v3, v2, Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;->folderName:Landroid/widget/TextView;

    sget-object v2, Lcom/lzx/iteam/ImageFileActivity;->contentList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/selectimage/ImageBucket;

    iget-object v2, v2, Lcom/lzx/iteam/selectimage/ImageBucket;->bucketName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v2, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->holder:Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;

    iget-object v3, v2, Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;->fileNum:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/lzx/iteam/ImageFileActivity;->contentList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/selectimage/ImageBucket;

    iget v2, v2, Lcom/lzx/iteam/selectimage/ImageBucket;->count:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :goto_1
    const-string v2, "android_hybrid_camera_default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    iget-object v2, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->holder:Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const-string v3, "plugin_camera_no_pictures"

    invoke-static {v3}, Lcom/lzx/iteam/selectimage/Res;->getDrawableID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    :goto_2
    iget-object v2, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->holder:Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/lzx/iteam/adapter/FolderAdapter$ImageViewClickListener;

    .line 149
    iget-object v4, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->holder:Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;

    iget-object v5, v5, Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;->choose_back:Landroid/widget/ImageView;

    invoke-direct {v3, p0, p1, v4, v5}, Lcom/lzx/iteam/adapter/FolderAdapter$ImageViewClickListener;-><init>(Lcom/lzx/iteam/adapter/FolderAdapter;ILandroid/content/Intent;Landroid/widget/ImageView;)V

    .line 148
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-object p2

    .line 119
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;

    iput-object v2, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->holder:Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;

    goto :goto_0

    .line 135
    :cond_1
    const-string v1, "android_hybrid_camera_default"

    .restart local v1    # "path":Ljava/lang/String;
    goto :goto_1

    .line 140
    :cond_2
    sget-object v2, Lcom/lzx/iteam/ImageFileActivity;->contentList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/selectimage/ImageBucket;

    iget-object v2, v2, Lcom/lzx/iteam/selectimage/ImageBucket;->imageList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    .local v0, "item":Ljava/lang/String;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->holder:Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 144
    sget-object v2, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->holder:Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;

    iget-object v4, v4, Lcom/lzx/iteam/adapter/FolderAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    sget-object v5, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionEventImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_2
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->mIntent:Landroid/content/Intent;

    .line 47
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->dm:Landroid/util/DisplayMetrics;

    .line 48
    iget-object v0, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/lzx/iteam/adapter/FolderAdapter;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 50
    return-void
.end method
