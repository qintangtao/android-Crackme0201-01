.class public Lcom/lzx/iteam/selectimage/BitmapCache;
.super Landroid/app/Activity;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/selectimage/BitmapCache$ImageCallback;
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field public h:Landroid/os/Handler;

.field private imageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/selectimage/BitmapCache;->h:Landroid/os/Handler;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/selectimage/BitmapCache;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/selectimage/BitmapCache;->imageCache:Ljava/util/HashMap;

    .line 18
    return-void
.end method


# virtual methods
.method public displayBmp(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/selectimage/BitmapCache$ImageCallback;)V
    .locals 10
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "thumbPath"    # Ljava/lang/String;
    .param p3, "sourcePath"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/lzx/iteam/selectimage/BitmapCache$ImageCallback;

    .prologue
    .line 33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/selectimage/BitmapCache;->TAG:Ljava/lang/String;

    const-string v1, "no paths pass in"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 41
    move-object v5, p2

    .line 42
    .local v5, "path":Ljava/lang/String;
    const/4 v2, 0x1

    .line 51
    .local v2, "isThumbPath":Z
    :goto_1
    iget-object v0, p0, Lcom/lzx/iteam/selectimage/BitmapCache;->imageCache:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 52
    iget-object v0, p0, Lcom/lzx/iteam/selectimage/BitmapCache;->imageCache:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/SoftReference;

    .line 53
    .local v9, "reference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 54
    .local v8, "bmp":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_4

    .line 55
    if-eqz p4, :cond_2

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-interface {p4, p1, v8, v0}, Lcom/lzx/iteam/selectimage/BitmapCache$ImageCallback;->imageLoad(Landroid/widget/ImageView;Landroid/graphics/Bitmap;[Ljava/lang/Object;)V

    .line 58
    :cond_2
    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/selectimage/BitmapCache;->TAG:Ljava/lang/String;

    const-string v1, "hit cache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 43
    .end local v2    # "isThumbPath":Z
    .end local v5    # "path":Ljava/lang/String;
    .end local v8    # "bmp":Landroid/graphics/Bitmap;
    .end local v9    # "reference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    move-object v5, p3

    .line 45
    .restart local v5    # "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 46
    .restart local v2    # "isThumbPath":Z
    goto :goto_1

    .line 63
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    new-instance v0, Lcom/lzx/iteam/selectimage/BitmapCache$1;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/lzx/iteam/selectimage/BitmapCache$1;-><init>(Lcom/lzx/iteam/selectimage/BitmapCache;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/selectimage/BitmapCache$ImageCallback;Landroid/widget/ImageView;)V

    .line 103
    invoke-virtual {v0}, Lcom/lzx/iteam/selectimage/BitmapCache$1;->start()V

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 27
    iget-object v0, p0, Lcom/lzx/iteam/selectimage/BitmapCache;->imageCache:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    return-void
.end method

.method public revitionImageSize(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/16 v6, 0x100

    .line 108
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    .line 109
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 108
    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 110
    .local v2, "in":Ljava/io/BufferedInputStream;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 111
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 112
    invoke-static {v2, v8, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 113
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, "i":I
    const/4 v0, 0x0

    .line 117
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/2addr v4, v1

    if-gt v4, v6, :cond_0

    .line 118
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/2addr v4, v1

    if-gt v4, v6, :cond_0

    .line 119
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 120
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 119
    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 121
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    int-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 122
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 123
    invoke-static {v2, v8, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    return-object v0

    .line 126
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 116
    goto :goto_0
.end method
