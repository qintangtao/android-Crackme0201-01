.class final Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;
.super Ljava/lang/Object;
.source "DisplayBitmapTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_DISPLAY_IMAGE_IN_IMAGEVIEW:Ljava/lang/String; = "Display image in ImageView (loaded from %1$s) [%2$s]"

.field private static final LOG_TASK_CANCELLED_IMAGEVIEW_LOST:Ljava/lang/String; = "ImageView was collected by GC. Task is cancelled. [%s]"

.field private static final LOG_TASK_CANCELLED_IMAGEVIEW_REUSED:Ljava/lang/String; = "ImageView is reused for another image. Task is cancelled. [%s]"


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

.field private final engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

.field private final imageUri:Ljava/lang/String;

.field private final imageViewRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

.field private final loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

.field private loggingEnabled:Z

.field private final memoryCacheKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageLoadingInfo"    # Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    .param p3, "engine"    # Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
    .param p4, "loadedFrom"    # Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->bitmap:Landroid/graphics/Bitmap;

    .line 54
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;

    .line 55
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->imageViewRef:Ljava/lang/ref/Reference;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageViewRef:Ljava/lang/ref/Reference;

    .line 56
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->memoryCacheKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    .line 57
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 58
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .line 59
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 60
    iput-object p4, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .line 61
    return-void
.end method

.method private isViewWasReused(Landroid/widget/ImageView;)Z
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v1, p1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->getLoadingUriForView(Landroid/widget/ImageView;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "currentCacheKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageViewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 65
    .local v1, "imageView":Landroid/widget/ImageView;
    if-nez v1, :cond_1

    .line 66
    iget-boolean v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->loggingEnabled:Z

    if-eqz v2, :cond_0

    const-string v2, "ImageView was collected by GC. Task is cancelled. [%s]"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    .line 77
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->isViewWasReused(Landroid/widget/ImageView;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    iget-boolean v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->loggingEnabled:Z

    if-eqz v2, :cond_2

    const-string v2, "ImageView is reused for another image. Task is cancelled. [%s]"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :cond_2
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 72
    :cond_3
    iget-boolean v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->loggingEnabled:Z

    if-eqz v2, :cond_4

    const-string v2, "Display image in ImageView (loaded from %1$s) [%2$s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :cond_4
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->displayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->loadedFrom:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-interface {v2, v3, v1, v4}, Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;->display(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    .local v0, "displayedBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->imageUri:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v0}, Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 75
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->engine:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v2, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->cancelDisplayTaskFor(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method setLoggingEnabled(Z)V
    .locals 0
    .param p1, "loggingEnabled"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->loggingEnabled:Z

    .line 87
    return-void
.end method
