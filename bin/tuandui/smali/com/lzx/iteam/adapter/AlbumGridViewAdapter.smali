.class public Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlbumGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$OnItemClickListener;,
        Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ToggleClickListener;,
        Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field cache:Lcom/lzx/iteam/selectimage/BitmapCache;

.field private dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dm:Landroid/util/DisplayMetrics;

.field private mContext:Landroid/content/Context;

.field private mOnItemClickListener:Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$OnItemClickListener;

.field private selectedDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "selectedDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->TAG:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/lzx/iteam/selectimage/BitmapCache;

    invoke-direct {v0}, Lcom/lzx/iteam/selectimage/BitmapCache;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->cache:Lcom/lzx/iteam/selectimage/BitmapCache;

    .line 38
    iput-object p2, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->dataList:Ljava/util/ArrayList;

    .line 39
    iput-object p3, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->selectedDataList:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->dm:Landroid/util/DisplayMetrics;

    .line 41
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->dataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;)Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$OnItemClickListener;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->mOnItemClickListener:Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public dipToPx(I)I
    .locals 2
    .param p1, "dip"    # I

    .prologue
    .line 133
    int-to-float v0, p1

    iget-object v1, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->dm:Landroid/util/DisplayMetrics;

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
    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 86
    if-nez p2, :cond_0

    .line 87
    new-instance v2, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;)V

    .line 88
    .local v2, "viewHolder":Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;
    iget-object v3, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 89
    const-string v4, "plugin_camera_select_imageview"

    invoke-static {v4}, Lcom/lzx/iteam/selectimage/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v4

    .line 88
    invoke-virtual {v3, v4, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 91
    const-string v3, "image_view"

    invoke-static {v3}, Lcom/lzx/iteam/selectimage/Res;->getWidgetID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 90
    iput-object v3, v2, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 93
    const-string v3, "toggle_button"

    invoke-static {v3}, Lcom/lzx/iteam/selectimage/Res;->getWidgetID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    .line 92
    iput-object v3, v2, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;->toggleButton:Landroid/widget/ToggleButton;

    .line 95
    const-string v3, "choosedbt"

    invoke-static {v3}, Lcom/lzx/iteam/selectimage/Res;->getWidgetID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 94
    iput-object v3, v2, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;->choosetoggle:Landroid/widget/ImageView;

    .line 99
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    :goto_0
    iget-object v3, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->dataList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p1, :cond_1

    .line 105
    iget-object v3, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    .local v1, "path":Ljava/lang/String;
    :goto_1
    const-string v3, "camera_default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    iget-object v3, v2, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const-string v4, "plugin_camera_no_pictures"

    invoke-static {v4}, Lcom/lzx/iteam/selectimage/Res;->getDrawableID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    :goto_2
    iget-object v3, v2, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;->toggleButton:Landroid/widget/ToggleButton;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setTag(Ljava/lang/Object;)V

    .line 120
    iget-object v3, v2, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;->choosetoggle:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 121
    iget-object v3, v2, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;->toggleButton:Landroid/widget/ToggleButton;

    new-instance v4, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ToggleClickListener;

    iget-object v5, v2, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;->choosetoggle:Landroid/widget/ImageView;

    invoke-direct {v4, p0, v5}, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ToggleClickListener;-><init>(Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v3, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->selectedDataList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    iget-object v3, v2, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;->toggleButton:Landroid/widget/ToggleButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 124
    iget-object v3, v2, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;->choosetoggle:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    :goto_3
    return-object p2

    .line 101
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "viewHolder":Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;
    goto :goto_0

    .line 107
    :cond_1
    const-string v1, "camera_default"

    .restart local v1    # "path":Ljava/lang/String;
    goto :goto_1

    .line 113
    :cond_2
    iget-object v3, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    .local v0, "item":Ljava/lang/String;
    iget-object v3, v2, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 117
    sget-object v3, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    sget-object v6, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionGalleryImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_2

    .line 126
    .end local v0    # "item":Ljava/lang/String;
    :cond_3
    iget-object v3, v2, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;->toggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 127
    iget-object v3, v2, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$ViewHolder;->choosetoggle:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public setOnItemClickListener(Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$OnItemClickListener;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AlbumGridViewAdapter;->mOnItemClickListener:Lcom/lzx/iteam/adapter/AlbumGridViewAdapter$OnItemClickListener;

    .line 159
    return-void
.end method
