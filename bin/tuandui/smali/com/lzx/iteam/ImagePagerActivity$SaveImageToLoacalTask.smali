.class Lcom/lzx/iteam/ImagePagerActivity$SaveImageToLoacalTask;
.super Landroid/os/AsyncTask;
.source "ImagePagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ImagePagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveImageToLoacalTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ImagePagerActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ImagePagerActivity;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/lzx/iteam/ImagePagerActivity$SaveImageToLoacalTask;->this$0:Lcom/lzx/iteam/ImagePagerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 263
    iget-object v3, p0, Lcom/lzx/iteam/ImagePagerActivity$SaveImageToLoacalTask;->this$0:Lcom/lzx/iteam/ImagePagerActivity;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    # invokes: Lcom/lzx/iteam/ImagePagerActivity;->loadImageFromNetwork(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v4}, Lcom/lzx/iteam/ImagePagerActivity;->access$2(Lcom/lzx/iteam/ImagePagerActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v0, v2

    .line 264
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 265
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 266
    .local v1, "bm":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/ImagePagerActivity$SaveImageToLoacalTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity$SaveImageToLoacalTask;->this$0:Lcom/lzx/iteam/ImagePagerActivity;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/ImagePagerActivity;->savaImageToLocal(Landroid/graphics/Bitmap;)V

    .line 273
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/ImagePagerActivity$SaveImageToLoacalTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
