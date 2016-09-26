.class public Lcom/lzx/iteam/ImageDetailFragment;
.super Landroid/support/v4/app/Fragment;
.source "ImageDetailFragment.java"


# static fields
.field public static mImageThume:Ljava/lang/String;

.field public static mImageUrl:Ljava/lang/String;


# instance fields
.field private mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

.field private mImageBitmap:Landroid/graphics/Bitmap;

.field private mImageDefault:Landroid/widget/ImageView;

.field private mImageView:Landroid/widget/ImageView;

.field private mOrigin:I

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ImageDetailFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lzx/iteam/ImageDetailFragment;->mImageDefault:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/ImageDetailFragment;)Luk/co/senab/photoview/PhotoViewAttacher;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lzx/iteam/ImageDetailFragment;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;I)Lcom/lzx/iteam/ImageDetailFragment;
    .locals 3
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "thume"    # Ljava/lang/String;
    .param p2, "mOrigin"    # I

    .prologue
    .line 40
    new-instance v1, Lcom/lzx/iteam/ImageDetailFragment;

    invoke-direct {v1}, Lcom/lzx/iteam/ImageDetailFragment;-><init>()V

    .line 42
    .local v1, "f":Lcom/lzx/iteam/ImageDetailFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "url"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v2, "thume"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v2, "origin"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    invoke-virtual {v1, v0}, Lcom/lzx/iteam/ImageDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 115
    iget v1, p0, Lcom/lzx/iteam/ImageDetailFragment;->mOrigin:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 116
    const-string v1, "\u56fe\u7247\u4e0b\u8f7d"

    sget-object v2, Lcom/lzx/iteam/ImageDetailFragment;->mImageUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    sget-object v2, Lcom/lzx/iteam/ImageDetailFragment;->mImageUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/lzx/iteam/ImageDetailFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lzx/iteam/ImageDetailFragment;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    new-instance v5, Lcom/lzx/iteam/ImageDetailFragment$3;

    invoke-direct {v5, p0}, Lcom/lzx/iteam/ImageDetailFragment$3;-><init>(Lcom/lzx/iteam/ImageDetailFragment;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget v1, p0, Lcom/lzx/iteam/ImageDetailFragment;->mOrigin:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 164
    sget-object v1, Lcom/lzx/iteam/ImageDetailFragment;->mImageUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->decompressToByteArrayByGzip(Ljava/lang/String;)[B

    move-result-object v0

    .line 165
    .local v0, "image":[B
    if-eqz v0, :cond_2

    .line 166
    array-length v1, v0

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ImageDetailFragment;->mImageBitmap:Landroid/graphics/Bitmap;

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/lzx/iteam/ImageDetailFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lzx/iteam/ImageDetailFragment;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 168
    .end local v0    # "image":[B
    :cond_3
    iget v1, p0, Lcom/lzx/iteam/ImageDetailFragment;->mOrigin:I

    if-eq v1, v4, :cond_4

    iget v1, p0, Lcom/lzx/iteam/ImageDetailFragment;->mOrigin:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 169
    :cond_4
    const-string v1, ""

    sget-object v2, Lcom/lzx/iteam/ImageDetailFragment;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/lzx/iteam/ImageDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/lzx/iteam/ImageDetailFragment;->mImageUrl:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/lzx/iteam/util/PhotoUtil;->readBitmapFromPath(Landroid/app/Activity;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ImageDetailFragment;->mImageBitmap:Landroid/graphics/Bitmap;

    .line 171
    iget-object v1, p0, Lcom/lzx/iteam/ImageDetailFragment;->mImageBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    .line 172
    invoke-virtual {p0}, Lcom/lzx/iteam/ImageDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "\u83b7\u53d6\u56fe\u7247\u5931\u8d25"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 173
    invoke-virtual {p0}, Lcom/lzx/iteam/ImageDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 180
    :cond_5
    iget-object v1, p0, Lcom/lzx/iteam/ImageDetailFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lzx/iteam/ImageDetailFragment;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/lzx/iteam/ImageDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lzx/iteam/ImageDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/lzx/iteam/ImageDetailFragment;->mImageUrl:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/lzx/iteam/ImageDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "thume"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/ImageDetailFragment;->mImageThume:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/lzx/iteam/ImageDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lzx/iteam/ImageDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "origin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/ImageDetailFragment;->mOrigin:I

    .line 63
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 64
    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 65
    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 68
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/lzx/iteam/ImageDetailFragment;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 70
    return-void

    :cond_1
    move-object v0, v1

    .line 60
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/lzx/iteam/ImageDetailFragment;->rootView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 77
    const v1, 0x7f03009d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ImageDetailFragment;->rootView:Landroid/view/View;

    .line 78
    iget-object v1, p0, Lcom/lzx/iteam/ImageDetailFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0e0456

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/ImageDetailFragment;->mImageView:Landroid/widget/ImageView;

    .line 79
    iget-object v1, p0, Lcom/lzx/iteam/ImageDetailFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0e0457

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/ImageDetailFragment;->mImageDefault:Landroid/widget/ImageView;

    .line 80
    new-instance v1, Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v2, p0, Lcom/lzx/iteam/ImageDetailFragment;->mImageView:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Luk/co/senab/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/lzx/iteam/ImageDetailFragment;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    .line 82
    iget-object v1, p0, Lcom/lzx/iteam/ImageDetailFragment;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    new-instance v2, Lcom/lzx/iteam/ImageDetailFragment$1;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/ImageDetailFragment$1;-><init>(Lcom/lzx/iteam/ImageDetailFragment;)V

    invoke-virtual {v1, v2}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    .line 91
    iget-object v1, p0, Lcom/lzx/iteam/ImageDetailFragment;->mImageDefault:Landroid/widget/ImageView;

    new-instance v2, Lcom/lzx/iteam/ImageDetailFragment$2;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/ImageDetailFragment$2;-><init>(Lcom/lzx/iteam/ImageDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const-string v1, "info"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/ImageDetailFragment;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 106
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/lzx/iteam/ImageDetailFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/ImageDetailFragment;->rootView:Landroid/view/View;

    return-object v1

    .line 101
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    const-string v1, "info"

    const-string v2, "rootView != null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
