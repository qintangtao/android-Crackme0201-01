.class Lcom/lzx/iteam/adapter/GroupGridAdapter$DownloadImageTask;
.super Landroid/os/AsyncTask;
.source "GroupGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/GroupGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field mImageView:Landroid/widget/ImageView;

.field mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/GroupGridAdapter;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/adapter/GroupGridAdapter;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/lzx/iteam/adapter/GroupGridAdapter$DownloadImageTask;->this$0:Lcom/lzx/iteam/adapter/GroupGridAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/lzx/iteam/adapter/GroupGridAdapter$DownloadImageTask;->mImageView:Landroid/widget/ImageView;

    .line 151
    iput-object p3, p0, Lcom/lzx/iteam/adapter/GroupGridAdapter$DownloadImageTask;->mUrl:Ljava/lang/String;

    .line 152
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lzx/iteam/adapter/GroupGridAdapter$DownloadImageTask;->this$0:Lcom/lzx/iteam/adapter/GroupGridAdapter;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    # invokes: Lcom/lzx/iteam/adapter/GroupGridAdapter;->loadImageFromNetwork(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/lzx/iteam/adapter/GroupGridAdapter;->access$0(Lcom/lzx/iteam/adapter/GroupGridAdapter;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/GroupGridAdapter$DownloadImageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "result"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 159
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 160
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 161
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 163
    .local v1, "bm":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/GroupGridAdapter$DownloadImageTask;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/adapter/GroupGridAdapter$DownloadImageTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/lzx/iteam/adapter/GroupGridAdapter$DownloadImageTask;->mImageView:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/lzx/iteam/util/ImageUtil;->createRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 171
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/GroupGridAdapter$DownloadImageTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
