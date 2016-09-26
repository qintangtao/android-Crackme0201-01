.class Lcom/lzx/iteam/selectimage/BitmapCache$1;
.super Ljava/lang/Thread;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/selectimage/BitmapCache;->displayBmp(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/selectimage/BitmapCache$ImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/selectimage/BitmapCache;

.field thumb:Landroid/graphics/Bitmap;

.field private final synthetic val$callback:Lcom/lzx/iteam/selectimage/BitmapCache$ImageCallback;

.field private final synthetic val$isThumbPath:Z

.field private final synthetic val$iv:Landroid/widget/ImageView;

.field private final synthetic val$path:Ljava/lang/String;

.field private final synthetic val$sourcePath:Ljava/lang/String;

.field private final synthetic val$thumbPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/selectimage/BitmapCache;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/selectimage/BitmapCache$ImageCallback;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->this$0:Lcom/lzx/iteam/selectimage/BitmapCache;

    iput-boolean p2, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->val$isThumbPath:Z

    iput-object p3, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->val$thumbPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->val$sourcePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->val$path:Ljava/lang/String;

    iput-object p6, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->val$callback:Lcom/lzx/iteam/selectimage/BitmapCache$ImageCallback;

    iput-object p7, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->val$iv:Landroid/widget/ImageView;

    .line 65
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 71
    :try_start_0
    iget-boolean v0, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->val$isThumbPath:Z

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->val$thumbPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->thumb:Landroid/graphics/Bitmap;

    .line 73
    iget-object v0, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->thumb:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->this$0:Lcom/lzx/iteam/selectimage/BitmapCache;

    iget-object v1, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->val$sourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/selectimage/BitmapCache;->revitionImageSize(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->thumb:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->this$0:Lcom/lzx/iteam/selectimage/BitmapCache;

    iget-object v0, v0, Lcom/lzx/iteam/selectimage/BitmapCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-------thumb------"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->this$0:Lcom/lzx/iteam/selectimage/BitmapCache;

    iget-object v1, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/selectimage/BitmapCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 94
    iget-object v0, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->val$callback:Lcom/lzx/iteam/selectimage/BitmapCache$ImageCallback;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->this$0:Lcom/lzx/iteam/selectimage/BitmapCache;

    iget-object v0, v0, Lcom/lzx/iteam/selectimage/BitmapCache;->h:Landroid/os/Handler;

    new-instance v1, Lcom/lzx/iteam/selectimage/BitmapCache$1$1;

    iget-object v2, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->val$callback:Lcom/lzx/iteam/selectimage/BitmapCache$ImageCallback;

    iget-object v3, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->val$iv:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->val$sourcePath:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/lzx/iteam/selectimage/BitmapCache$1$1;-><init>(Lcom/lzx/iteam/selectimage/BitmapCache$1;Lcom/lzx/iteam/selectimage/BitmapCache$ImageCallback;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    :cond_1
    return-void

    .line 77
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->this$0:Lcom/lzx/iteam/selectimage/BitmapCache;

    iget-object v1, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->val$sourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/selectimage/BitmapCache;->revitionImageSize(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1;->thumb:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
