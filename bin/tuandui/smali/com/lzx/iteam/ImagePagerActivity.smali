.class public Lcom/lzx/iteam/ImagePagerActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ImagePagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/ImagePagerActivity$ImagePagerAdapter;,
        Lcom/lzx/iteam/ImagePagerActivity$SaveImageToLoacalTask;
    }
.end annotation


# static fields
.field public static final EXTRA_IMAGE_INDEX:Ljava/lang/String; = "image_index"

.field public static final EXTRA_IMAGE_URLS:Ljava/lang/String; = "image_urls"

.field public static final EXTRA_THUME_IMAGES:Ljava/lang/String; = "thume_images"

.field private static final STATE_POSITION:Ljava/lang/String; = "STATE_POSITION"


# instance fields
.field private indicator:Landroid/widget/TextView;

.field private mBtnChooseConfirm:Landroid/widget/Button;

.field private mBtnDeleteChoosedImage:Landroid/widget/Button;

.field private mBtnSaveToGallery:Landroid/widget/Button;

.field private mImageBitmap:Landroid/graphics/Bitmap;

.field private mImageOrigin:I

.field private mImagePath:Ljava/lang/String;

.field private mIndex:I

.field private mPager:Lcom/lzx/iteam/widget/HackyViewPager;

.field private mThumeImages:Ljava/lang/String;

.field private pagerPosition:I

.field private urls:Ljava/util/ArrayList;
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ImagePagerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity;->mThumeImages:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/ImagePagerActivity;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/lzx/iteam/ImagePagerActivity;->mImageOrigin:I

    return v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/ImagePagerActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ImagePagerActivity;->loadImageFromNetwork(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/ImagePagerActivity;)Lcom/lzx/iteam/widget/HackyViewPager;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity;->mPager:Lcom/lzx/iteam/widget/HackyViewPager;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/ImagePagerActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity;->indicator:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/ImagePagerActivity;I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/lzx/iteam/ImagePagerActivity;->mIndex:I

    return-void
.end method

.method private loadImageFromNetwork(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 282
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "image.jpg"

    .line 281
    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 289
    :goto_0
    if-nez v0, :cond_0

    .line 290
    const-string v2, "test"

    const-string v3, "null drawable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_1
    return-object v0

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "test"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    const-string v2, "test"

    const-string v3, "not null drawable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public initView()V
    .locals 1

    .prologue
    .line 120
    const v0, 0x7f0e045a

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ImagePagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity;->mBtnChooseConfirm:Landroid/widget/Button;

    .line 121
    iget-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity;->mBtnChooseConfirm:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v0, 0x7f0e045b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ImagePagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity;->mBtnDeleteChoosedImage:Landroid/widget/Button;

    .line 123
    iget-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity;->mBtnDeleteChoosedImage:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v0, 0x7f0e045c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ImagePagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity;->mBtnSaveToGallery:Landroid/widget/Button;

    .line 125
    iget-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity;->mBtnSaveToGallery:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/lzx/iteam/ImagePagerActivity;->finish()V

    .line 300
    const/4 v0, 0x0

    const v1, 0x7f040013

    invoke-virtual {p0, v0, v1}, Lcom/lzx/iteam/ImagePagerActivity;->overridePendingTransition(II)V

    .line 301
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 302
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 174
    :pswitch_0
    iget-object v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->mImagePath:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, ""

    iget-object v3, p0, Lcom/lzx/iteam/ImagePagerActivity;->mImagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 177
    .local v0, "confirmIntent":Landroid/content/Intent;
    const-string v2, "imagePath"

    iget-object v3, p0, Lcom/lzx/iteam/ImagePagerActivity;->mImagePath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/lzx/iteam/ImagePagerActivity;->setResult(ILandroid/content/Intent;)V

    .line 180
    invoke-virtual {p0}, Lcom/lzx/iteam/ImagePagerActivity;->finish()V

    .line 181
    const v2, 0x7f040013

    invoke-virtual {p0, v5, v2}, Lcom/lzx/iteam/ImagePagerActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 186
    .end local v0    # "confirmIntent":Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p0}, Lcom/lzx/iteam/ImagePagerActivity;->finish()V

    goto :goto_0

    .line 190
    :pswitch_2
    iget v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->mImageOrigin:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 191
    new-instance v1, Lcom/lzx/iteam/ImagePagerActivity$SaveImageToLoacalTask;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/ImagePagerActivity$SaveImageToLoacalTask;-><init>(Lcom/lzx/iteam/ImagePagerActivity;)V

    .line 192
    .local v1, "task":Lcom/lzx/iteam/ImagePagerActivity$SaveImageToLoacalTask;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->urls:Ljava/util/ArrayList;

    iget v4, p0, Lcom/lzx/iteam/ImagePagerActivity;->mIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v3, v5

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/ImagePagerActivity$SaveImageToLoacalTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x7f0e045a
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v2, 0x7f03009e

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ImagePagerActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/lzx/iteam/ImagePagerActivity;->initView()V

    .line 63
    invoke-virtual {p0}, Lcom/lzx/iteam/ImagePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "image_index"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->pagerPosition:I

    .line 64
    invoke-virtual {p0}, Lcom/lzx/iteam/ImagePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "image_origin"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->mImageOrigin:I

    .line 65
    iget v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->mImageOrigin:I

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ImagePagerActivity;->setView(I)V

    .line 69
    iget v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->mImageOrigin:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/lzx/iteam/ImagePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "image_urls"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->urls:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {p0}, Lcom/lzx/iteam/ImagePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "thume_images"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->mThumeImages:Ljava/lang/String;

    .line 81
    :cond_0
    :goto_0
    const v2, 0x7f0e0458

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ImagePagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/widget/HackyViewPager;

    iput-object v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->mPager:Lcom/lzx/iteam/widget/HackyViewPager;

    .line 82
    new-instance v0, Lcom/lzx/iteam/ImagePagerActivity$ImagePagerAdapter;

    invoke-virtual {p0}, Lcom/lzx/iteam/ImagePagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/ImagePagerActivity;->urls:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2, v3}, Lcom/lzx/iteam/ImagePagerActivity$ImagePagerAdapter;-><init>(Lcom/lzx/iteam/ImagePagerActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    .line 83
    .local v0, "mAdapter":Lcom/lzx/iteam/ImagePagerActivity$ImagePagerAdapter;
    iget-object v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->mPager:Lcom/lzx/iteam/widget/HackyViewPager;

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/widget/HackyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 84
    const v2, 0x7f0e0459

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ImagePagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->indicator:Landroid/widget/TextView;

    .line 86
    const v2, 0x7f080168

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/lzx/iteam/ImagePagerActivity;->mPager:Lcom/lzx/iteam/widget/HackyViewPager;

    invoke-virtual {v4}, Lcom/lzx/iteam/widget/HackyViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/lzx/iteam/ImagePagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "text":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->indicator:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->mPager:Lcom/lzx/iteam/widget/HackyViewPager;

    new-instance v3, Lcom/lzx/iteam/ImagePagerActivity$1;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/ImagePagerActivity$1;-><init>(Lcom/lzx/iteam/ImagePagerActivity;)V

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/HackyViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 107
    if-eqz p1, :cond_1

    .line 108
    const-string v2, "STATE_POSITION"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->pagerPosition:I

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->mPager:Lcom/lzx/iteam/widget/HackyViewPager;

    iget v3, p0, Lcom/lzx/iteam/ImagePagerActivity;->pagerPosition:I

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/HackyViewPager;->setCurrentItem(I)V

    .line 112
    return-void

    .line 72
    .end local v0    # "mAdapter":Lcom/lzx/iteam/ImagePagerActivity$ImagePagerAdapter;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_2
    iget v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->mImageOrigin:I

    if-ne v2, v4, :cond_3

    .line 73
    invoke-virtual {p0}, Lcom/lzx/iteam/ImagePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "image_urls"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->urls:Ljava/util/ArrayList;

    goto :goto_0

    .line 74
    :cond_3
    iget v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->mImageOrigin:I

    if-eq v2, v6, :cond_4

    iget v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->mImageOrigin:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 75
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->urls:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {p0}, Lcom/lzx/iteam/ImagePagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "imagePath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->mImagePath:Ljava/lang/String;

    .line 77
    iget-object v2, p0, Lcom/lzx/iteam/ImagePagerActivity;->urls:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lzx/iteam/ImagePagerActivity;->mImagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 162
    const-string v0, "STATE_POSITION"

    iget-object v1, p0, Lcom/lzx/iteam/ImagePagerActivity;->mPager:Lcom/lzx/iteam/widget/HackyViewPager;

    invoke-virtual {v1}, Lcom/lzx/iteam/widget/HackyViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 163
    return-void
.end method

.method public savaImageToLocal(Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "bimap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 208
    const/4 v1, 0x0

    .line 211
    .local v1, "fileUri":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/lzx/iteam/ImagePagerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-static {v6, p1, v7, v8}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 216
    :goto_0
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 218
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 219
    .local v3, "geturi":Landroid/net/Uri;
    invoke-static {p0, v3}, Lcom/lzx/iteam/util/PhotoUtil;->getFilePathByContentResolver(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "filepath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 221
    .local v5, "sendnuri":Landroid/net/Uri;
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0, v4}, Lcom/lzx/iteam/ImagePagerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    const-string v6, "\u4fdd\u5b58\u6210\u529f"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 225
    .end local v2    # "filepath":Ljava/lang/String;
    .end local v3    # "geturi":Landroid/net/Uri;
    .end local v5    # "sendnuri":Landroid/net/Uri;
    :cond_0
    return-void

    .line 213
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setView(I)V
    .locals 3
    .param p1, "origin"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 133
    packed-switch p1, :pswitch_data_0

    .line 155
    invoke-virtual {p0}, Lcom/lzx/iteam/ImagePagerActivity;->finish()V

    .line 158
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity;->mBtnChooseConfirm:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity;->mBtnDeleteChoosedImage:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity;->mBtnSaveToGallery:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity;->mBtnSaveToGallery:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity;->mBtnDeleteChoosedImage:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity;->mBtnChooseConfirm:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity;->mBtnSaveToGallery:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity;->mBtnDeleteChoosedImage:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity;->mBtnChooseConfirm:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 150
    :pswitch_3
    iget-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity;->mBtnSaveToGallery:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity;->mBtnDeleteChoosedImage:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity;->mBtnChooseConfirm:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
