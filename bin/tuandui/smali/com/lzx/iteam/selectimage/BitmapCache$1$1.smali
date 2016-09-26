.class Lcom/lzx/iteam/selectimage/BitmapCache$1$1;
.super Ljava/lang/Object;
.source "BitmapCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/selectimage/BitmapCache$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/selectimage/BitmapCache$1;

.field private final synthetic val$callback:Lcom/lzx/iteam/selectimage/BitmapCache$ImageCallback;

.field private final synthetic val$iv:Landroid/widget/ImageView;

.field private final synthetic val$sourcePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/selectimage/BitmapCache$1;Lcom/lzx/iteam/selectimage/BitmapCache$ImageCallback;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1$1;->this$1:Lcom/lzx/iteam/selectimage/BitmapCache$1;

    iput-object p2, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1$1;->val$callback:Lcom/lzx/iteam/selectimage/BitmapCache$ImageCallback;

    iput-object p3, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1$1;->val$iv:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1$1;->val$sourcePath:Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1$1;->val$callback:Lcom/lzx/iteam/selectimage/BitmapCache$ImageCallback;

    iget-object v1, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1$1;->val$iv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1$1;->this$1:Lcom/lzx/iteam/selectimage/BitmapCache$1;

    iget-object v2, v2, Lcom/lzx/iteam/selectimage/BitmapCache$1;->thumb:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lzx/iteam/selectimage/BitmapCache$1$1;->val$sourcePath:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/lzx/iteam/selectimage/BitmapCache$ImageCallback;->imageLoad(Landroid/widget/ImageView;Landroid/graphics/Bitmap;[Ljava/lang/Object;)V

    .line 99
    return-void
.end method
