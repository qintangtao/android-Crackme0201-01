.class Lcom/lzx/iteam/ImageDetailFragment$3;
.super Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;
.source "ImageDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ImageDetailFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ImageDetailFragment;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ImageDetailFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ImageDetailFragment$3;->this$0:Lcom/lzx/iteam/ImageDetailFragment;

    .line 117
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lzx/iteam/ImageDetailFragment$3;->this$0:Lcom/lzx/iteam/ImageDetailFragment;

    # getter for: Lcom/lzx/iteam/ImageDetailFragment;->mImageDefault:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lzx/iteam/ImageDetailFragment;->access$0(Lcom/lzx/iteam/ImageDetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/lzx/iteam/ImageDetailFragment$3;->this$0:Lcom/lzx/iteam/ImageDetailFragment;

    # getter for: Lcom/lzx/iteam/ImageDetailFragment;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;
    invoke-static {v0}, Lcom/lzx/iteam/ImageDetailFragment;->access$1(Lcom/lzx/iteam/ImageDetailFragment;)Luk/co/senab/photoview/PhotoViewAttacher;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->update()V

    .line 161
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 3
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 130
    const-string v0, "\u52a0\u8f7d\u51fa\u9519"

    .line 151
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/lzx/iteam/ImageDetailFragment$3;->this$0:Lcom/lzx/iteam/ImageDetailFragment;

    invoke-virtual {v1}, Lcom/lzx/iteam/ImageDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 154
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 121
    sget-object v0, Lcom/lzx/iteam/ImageDetailFragment;->mImageThume:Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/lzx/iteam/ImageDetailFragment$3;->this$0:Lcom/lzx/iteam/ImageDetailFragment;

    # getter for: Lcom/lzx/iteam/ImageDetailFragment;->mImageDefault:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lzx/iteam/ImageDetailFragment;->access$0(Lcom/lzx/iteam/ImageDetailFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    sget-object v1, Lcom/lzx/iteam/ImageDetailFragment;->mImageThume:Ljava/lang/String;

    iget-object v2, p0, Lcom/lzx/iteam/ImageDetailFragment$3;->this$0:Lcom/lzx/iteam/ImageDetailFragment;

    # getter for: Lcom/lzx/iteam/ImageDetailFragment;->mImageDefault:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lzx/iteam/ImageDetailFragment;->access$0(Lcom/lzx/iteam/ImageDetailFragment;)Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionEventImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 126
    :cond_0
    return-void
.end method
