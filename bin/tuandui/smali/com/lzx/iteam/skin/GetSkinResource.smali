.class public Lcom/lzx/iteam/skin/GetSkinResource;
.super Ljava/lang/Object;
.source "GetSkinResource.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public mDirDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/SkinDirData;",
            ">;"
        }
    .end annotation
.end field

.field public mFileUtil:Ljava/io/File;

.field private mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

.field public mZip:Lcom/lzx/iteam/skin/UnZip;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "GetSkinResource"

    sput-object v0, Lcom/lzx/iteam/skin/GetSkinResource;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/lzx/iteam/skin/UnZip;

    invoke-direct {v0, p1}, Lcom/lzx/iteam/skin/UnZip;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mZip:Lcom/lzx/iteam/skin/UnZip;

    .line 40
    return-void
.end method

.method private addLocalSkin(Landroid/content/Context;)Lcom/lzx/iteam/bean/SkinDirData;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    new-instance v0, Lcom/lzx/iteam/bean/SkinDirData;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/SkinDirData;-><init>()V

    .line 83
    .local v0, "data":Lcom/lzx/iteam/bean/SkinDirData;
    const-string v1, "local"

    iput-object v1, v0, Lcom/lzx/iteam/bean/SkinDirData;->dirName:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201e0

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/lzx/iteam/bean/SkinDirData;->skinIcon:Landroid/graphics/Bitmap;

    .line 85
    const-string v1, "IOS7\u6241\u5e73\u98ce\u683c"

    iput-object v1, v0, Lcom/lzx/iteam/bean/SkinDirData;->skinName:Ljava/lang/String;

    .line 86
    return-object v0
.end method

.method private bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 873
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 877
    :goto_0
    return-object v0

    .line 874
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 875
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    sget-object v1, Lcom/lzx/iteam/skin/GetSkinResource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bitmap is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 864
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mFileUtil:Ljava/io/File;

    .line 865
    iget-object v0, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mFileUtil:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mFileUtil:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 868
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPathNormalDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "skinPath"    # Ljava/lang/String;
    .param p3, "defaultName"    # Ljava/lang/String;
    .param p4, "color"    # I

    .prologue
    const/4 v3, -0x1

    .line 653
    const/4 v0, 0x0

    .line 654
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->getSkinIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 655
    if-nez v0, :cond_0

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_i5.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->getSkinIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 657
    if-nez v0, :cond_0

    .line 658
    invoke-static {p3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->getSkinIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 660
    if-nez v0, :cond_0

    .line 661
    if-eq p4, v3, :cond_0

    .line 662
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0    # "result":Landroid/graphics/drawable/Drawable;
    invoke-direct {v0, p4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 670
    .restart local v0    # "result":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 665
    :cond_1
    if-eq p4, v3, :cond_0

    .line 666
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0    # "result":Landroid/graphics/drawable/Drawable;
    invoke-direct {v0, p4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v0    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private loadDefaultHorizCommonPic(Landroid/content/Context;Lcom/lzx/iteam/bean/SkinHorizData;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/lzx/iteam/bean/SkinHorizData;

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 210
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f0201c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p2, Lcom/lzx/iteam/bean/SkinHorizData;->hInputResId:Landroid/graphics/drawable/Drawable;

    .line 212
    const v0, 0x7f020190

    .line 213
    .local v0, "id":I
    const v1, 0x7f02005f

    .line 214
    .local v1, "pressid":I
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    iput-object v3, p2, Lcom/lzx/iteam/bean/SkinHorizData;->hAndAbcResId:Landroid/graphics/drawable/StateListDrawable;

    .line 216
    const v0, 0x7f0201c0

    .line 217
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    iput-object v3, p2, Lcom/lzx/iteam/bean/SkinHorizData;->hidet9:Landroid/graphics/drawable/StateListDrawable;

    .line 218
    return-void
.end method

.method private loadDefaultHorizT9Pic(Landroid/content/Context;Lcom/lzx/iteam/bean/SkinHorizData;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/lzx/iteam/bean/SkinHorizData;

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 259
    .local v3, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p2, Lcom/lzx/iteam/bean/SkinHorizData;->ht9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 264
    const v1, 0x7f0201e0

    .line 265
    .local v1, "id":I
    const v2, 0x7f020366

    .line 266
    .local v2, "pressid":I
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    iput-object v4, p2, Lcom/lzx/iteam/bean/SkinHorizData;->hstarResId:Landroid/graphics/drawable/StateListDrawable;

    .line 268
    const v1, 0x7f02019f

    .line 269
    const v2, 0x7f02034e

    .line 270
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    iput-object v4, p2, Lcom/lzx/iteam/bean/SkinHorizData;->hdelResId:Landroid/graphics/drawable/StateListDrawable;

    .line 272
    const v1, 0x7f02019a

    .line 273
    const v2, 0x7f02034c

    .line 274
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    iput-object v4, p2, Lcom/lzx/iteam/bean/SkinHorizData;->hcallResId:Landroid/graphics/drawable/StateListDrawable;

    .line 276
    const v1, 0x7f0201dd

    .line 277
    const v2, 0x7f020365

    .line 278
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    iput-object v4, p2, Lcom/lzx/iteam/bean/SkinHorizData;->hsmsResId:Landroid/graphics/drawable/StateListDrawable;

    .line 279
    return-void

    .line 260
    .end local v1    # "id":I
    .end local v2    # "pressid":I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ios_a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    const-string v6, "com.lzx.iteam"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 261
    .restart local v1    # "id":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "v"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_pressed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    const-string v6, "com.lzx.iteam"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 262
    .restart local v2    # "pressid":I
    iget-object v4, p2, Lcom/lzx/iteam/bean/SkinHorizData;->ht9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    aput-object v5, v4, v0

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private loadDefaultSkinGloble(Landroid/content/Context;)Lcom/lzx/iteam/bean/SkinCommonData;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x8

    .line 335
    const v1, 0x7f060004

    .line 336
    .local v1, "propertyId":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 337
    .local v2, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/lzx/iteam/bean/SkinCommonData;->getInstance()Lcom/lzx/iteam/bean/SkinCommonData;

    move-result-object v3

    .line 338
    .local v3, "result":Lcom/lzx/iteam/bean/SkinCommonData;
    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {p0, p1, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->getDefaultPropertys(Landroid/content/Context;I)Lcom/lzx/iteam/bean/SkinPropertys;

    move-result-object v6

    iput-object v6, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    .line 342
    :cond_0
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iput-object v6, v3, Lcom/lzx/iteam/bean/SkinCommonData;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 343
    const v0, 0x7f0201c6

    .line 344
    .local v0, "id":I
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v3, Lcom/lzx/iteam/bean/SkinCommonData;->mainTitleBgResid:Landroid/graphics/drawable/Drawable;

    .line 346
    const/4 v6, 0x0

    iput-object v6, v3, Lcom/lzx/iteam/bean/SkinCommonData;->listBgBitmap:Landroid/graphics/drawable/Drawable;

    .line 347
    const v0, 0x7f0201d2

    .line 348
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v3, Lcom/lzx/iteam/bean/SkinCommonData;->noNameBitmap:Landroid/graphics/drawable/Drawable;

    .line 349
    iget-object v6, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v6, v6, Lcom/lzx/iteam/bean/SkinPropertys;->tintColor:I

    iput v6, v3, Lcom/lzx/iteam/bean/SkinCommonData;->tintColor:I

    .line 350
    iget-object v6, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v6, v6, Lcom/lzx/iteam/bean/SkinPropertys;->barTitleColor:I

    iput v6, v3, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    .line 351
    iget-object v6, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v6, v6, Lcom/lzx/iteam/bean/SkinPropertys;->nameColor:I

    iput v6, v3, Lcom/lzx/iteam/bean/SkinCommonData;->nameColor:I

    .line 352
    iget-object v6, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v6, v6, Lcom/lzx/iteam/bean/SkinPropertys;->jobTitleColor:I

    iput v6, v3, Lcom/lzx/iteam/bean/SkinCommonData;->jobTitleColor:I

    .line 353
    iget-object v6, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v6, v6, Lcom/lzx/iteam/bean/SkinPropertys;->phoneColor:I

    iput v6, v3, Lcom/lzx/iteam/bean/SkinCommonData;->phoneColor:I

    .line 354
    iget-object v6, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v6, v6, Lcom/lzx/iteam/bean/SkinPropertys;->backgroundColor:I

    iput v6, v3, Lcom/lzx/iteam/bean/SkinCommonData;->backgroundColor:I

    .line 355
    iget-object v6, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v6, v6, Lcom/lzx/iteam/bean/SkinPropertys;->listBgColor:I

    iput v6, v3, Lcom/lzx/iteam/bean/SkinCommonData;->listBgColor:I

    .line 356
    iget-object v6, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v6, v6, Lcom/lzx/iteam/bean/SkinPropertys;->listDividerColor:I

    iput v6, v3, Lcom/lzx/iteam/bean/SkinCommonData;->listDividerColor:I

    .line 357
    iget-object v6, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v6, v6, Lcom/lzx/iteam/bean/SkinPropertys;->listSectionColor:I

    iput v6, v3, Lcom/lzx/iteam/bean/SkinCommonData;->listSectionColor:I

    .line 358
    iget-object v6, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v6, v6, Lcom/lzx/iteam/bean/SkinPropertys;->listSectionColor:I

    iput v6, v3, Lcom/lzx/iteam/bean/SkinCommonData;->listSectionColor:I

    .line 359
    iget-object v6, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v6, v6, Lcom/lzx/iteam/bean/SkinPropertys;->listTextHightLightColor:I

    iput v6, v3, Lcom/lzx/iteam/bean/SkinCommonData;->listTextHightLightColor:I

    .line 360
    new-array v4, v7, [F

    fill-array-data v4, :array_0

    .line 361
    .local v4, "tabLef":[F
    new-array v5, v7, [F

    fill-array-data v5, :array_1

    .line 362
    .local v5, "tabRight":[F
    invoke-direct {p0, v4}, Lcom/lzx/iteam/skin/GetSkinResource;->tabButtonBg([F)[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v3, Lcom/lzx/iteam/bean/SkinCommonData;->left:[Landroid/graphics/drawable/Drawable;

    .line 363
    invoke-direct {p0, v5}, Lcom/lzx/iteam/skin/GetSkinResource;->tabButtonBg([F)[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v3, Lcom/lzx/iteam/bean/SkinCommonData;->right:[Landroid/graphics/drawable/Drawable;

    .line 364
    invoke-direct {p0, v4}, Lcom/lzx/iteam/skin/GetSkinResource;->tabButtonBg([F)[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v3, Lcom/lzx/iteam/bean/SkinCommonData;->center:[Landroid/graphics/drawable/Drawable;

    .line 365
    return-object v3

    .line 360
    nop

    :array_0
    .array-data 4
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x0
        0x0
        0x0
        0x0
        0x41400000    # 12.0f
        0x41400000    # 12.0f
    .end array-data

    .line 361
    :array_1
    .array-data 4
        0x0
        0x0
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x0
        0x0
    .end array-data
.end method

.method private loadDefaultVertQwePic(Landroid/content/Context;Lcom/lzx/iteam/bean/SkinVertyData;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/lzx/iteam/bean/SkinVertyData;

    .prologue
    .line 414
    const-string v0, "abcdefghijklmnopqrstuvwxyz"

    .line 415
    .local v0, "abc":Ljava/lang/String;
    iget-object v5, p2, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 416
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 417
    .local v4, "res":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p2, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    array-length v5, v5

    if-lt v1, v5, :cond_0

    .line 423
    const v2, 0x7f0201a0

    .line 424
    .local v2, "id":I
    const v3, 0x7f02034e

    .line 425
    .local v3, "pressid":I
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    iput-object v5, p2, Lcom/lzx/iteam/bean/SkinVertyData;->vabcdelResId:Landroid/graphics/drawable/StateListDrawable;

    .line 426
    return-void

    .line 418
    .end local v2    # "id":I
    .end local v3    # "pressid":I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ios_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    const-string v7, "com.lzx.iteam"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 419
    .restart local v2    # "id":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "v"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_pressed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    const-string v7, "com.lzx.iteam"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 420
    .restart local v3    # "pressid":I
    iget-object v5, p2, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    aput-object v6, v5, v1

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private loadDefaultVertT9Pic(Landroid/content/Context;Lcom/lzx/iteam/bean/SkinVertyData;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/lzx/iteam/bean/SkinVertyData;

    .prologue
    .line 376
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 378
    .local v3, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p2, Lcom/lzx/iteam/bean/SkinVertyData;->vt9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 384
    const v1, 0x7f0201e1

    .line 385
    .local v1, "id":I
    const v2, 0x7f020366

    .line 386
    .local v2, "pressid":I
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    iput-object v4, p2, Lcom/lzx/iteam/bean/SkinVertyData;->vstarResId:Landroid/graphics/drawable/StateListDrawable;

    .line 388
    const v1, 0x7f0201a2

    .line 389
    const v2, 0x7f02034e

    .line 390
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    iput-object v4, p2, Lcom/lzx/iteam/bean/SkinVertyData;->vt9delResId:Landroid/graphics/drawable/StateListDrawable;

    .line 392
    const v1, 0x7f02019b

    .line 393
    const v2, 0x7f02034c

    .line 394
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    iput-object v4, p2, Lcom/lzx/iteam/bean/SkinVertyData;->vcallResId:Landroid/graphics/drawable/StateListDrawable;

    .line 396
    const v1, 0x7f0201de

    .line 397
    const v2, 0x7f020365

    .line 398
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    iput-object v4, p2, Lcom/lzx/iteam/bean/SkinVertyData;->vsmsResId:Landroid/graphics/drawable/StateListDrawable;

    .line 400
    const v1, 0x7f0201c4

    .line 401
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p2, Lcom/lzx/iteam/bean/SkinVertyData;->vInputResId:Landroid/graphics/drawable/Drawable;

    .line 404
    sget-boolean v4, Lcom/lzx/iteam/CloudDialerActivity;->isShowChange:Z

    if-eqz v4, :cond_1

    .line 405
    const v1, 0x7f020193

    .line 410
    :goto_1
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p2, Lcom/lzx/iteam/bean/SkinVertyData;->vAndAbcResId_normal:Landroid/graphics/drawable/Drawable;

    .line 411
    return-void

    .line 379
    .end local v1    # "id":I
    .end local v2    # "pressid":I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ios_f"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    const-string v6, "com.lzx.iteam"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 380
    .restart local v1    # "id":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "v"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_pressed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    const-string v6, "com.lzx.iteam"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 381
    .restart local v2    # "pressid":I
    iget-object v4, p2, Lcom/lzx/iteam/bean/SkinVertyData;->vt9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    aput-object v5, v4, v0

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 407
    :cond_1
    const v1, 0x7f020192

    goto :goto_1
.end method

.method private loadSkinGloble(Landroid/content/Context;Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinCommonData;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "skinPath"    # Ljava/lang/String;

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 283
    invoke-static {}, Lcom/lzx/iteam/bean/SkinCommonData;->getInstance()Lcom/lzx/iteam/bean/SkinCommonData;

    move-result-object v6

    .line 284
    .local v6, "result":Lcom/lzx/iteam/bean/SkinCommonData;
    invoke-virtual {p0, p2}, Lcom/lzx/iteam/skin/GetSkinResource;->getSkinProperties(Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinPropertys;

    move-result-object v10

    iput-object v10, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    .line 285
    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iput-object v10, v6, Lcom/lzx/iteam/bean/SkinCommonData;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 286
    const/4 v9, 0x0

    .line 289
    .local v9, "tempDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "imgtint"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/lzx/iteam/skin/GetSkinResource;->getSkinIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/lzx/iteam/skin/GetSkinResource;->bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 290
    if-nez v9, :cond_0

    .line 291
    iget-object v10, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v10, v10, Lcom/lzx/iteam/bean/SkinPropertys;->tintColor:I

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 292
    .local v5, "r":I
    iget-object v10, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v10, v10, Lcom/lzx/iteam/bean/SkinPropertys;->tintColor:I

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 293
    .local v3, "g":I
    iget-object v10, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v10, v10, Lcom/lzx/iteam/bean/SkinPropertys;->tintColor:I

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 294
    .local v0, "b":I
    add-int/lit8 v10, v5, 0x23

    add-int/lit8 v11, v3, 0x23

    add-int/lit8 v12, v0, 0x23

    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    .line 295
    .local v2, "end":I
    add-int/lit8 v10, v5, -0xa

    add-int/lit8 v11, v3, -0xa

    add-int/lit8 v12, v0, -0xa

    invoke-static {v10, v11, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 296
    .local v1, "begin":I
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 297
    const/4 v11, 0x2

    new-array v11, v11, [I

    const/4 v12, 0x0

    .line 298
    aput v1, v11, v12

    const/4 v12, 0x1

    aput v2, v11, v12

    .line 296
    invoke-direct {v4, v10, v11}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 300
    .local v4, "gd":Landroid/graphics/drawable/GradientDrawable;
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 301
    move-object v9, v4

    .line 303
    .end local v0    # "b":I
    .end local v1    # "begin":I
    .end local v2    # "end":I
    .end local v3    # "g":I
    .end local v4    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v5    # "r":I
    :cond_0
    iput-object v9, v6, Lcom/lzx/iteam/bean/SkinCommonData;->mainTitleBgResid:Landroid/graphics/drawable/Drawable;

    .line 306
    iget-object v10, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v10, v10, Lcom/lzx/iteam/bean/SkinPropertys;->tintColor:I

    iput v10, v6, Lcom/lzx/iteam/bean/SkinCommonData;->tintColor:I

    .line 307
    iget-object v10, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v10, v10, Lcom/lzx/iteam/bean/SkinPropertys;->barTitleColor:I

    iput v10, v6, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    .line 308
    iget-object v10, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v10, v10, Lcom/lzx/iteam/bean/SkinPropertys;->nameColor:I

    iput v10, v6, Lcom/lzx/iteam/bean/SkinCommonData;->nameColor:I

    .line 309
    iget-object v10, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v10, v10, Lcom/lzx/iteam/bean/SkinPropertys;->jobTitleColor:I

    iput v10, v6, Lcom/lzx/iteam/bean/SkinCommonData;->jobTitleColor:I

    .line 310
    iget-object v10, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v10, v10, Lcom/lzx/iteam/bean/SkinPropertys;->phoneColor:I

    iput v10, v6, Lcom/lzx/iteam/bean/SkinCommonData;->phoneColor:I

    .line 311
    iget-object v10, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v10, v10, Lcom/lzx/iteam/bean/SkinPropertys;->backgroundColor:I

    iput v10, v6, Lcom/lzx/iteam/bean/SkinCommonData;->backgroundColor:I

    .line 312
    iget-object v10, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v10, v10, Lcom/lzx/iteam/bean/SkinPropertys;->listBgColor:I

    iput v10, v6, Lcom/lzx/iteam/bean/SkinCommonData;->listBgColor:I

    .line 313
    iget-object v10, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v10, v10, Lcom/lzx/iteam/bean/SkinPropertys;->listDividerColor:I

    iput v10, v6, Lcom/lzx/iteam/bean/SkinCommonData;->listDividerColor:I

    .line 314
    iget-object v10, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v10, v10, Lcom/lzx/iteam/bean/SkinPropertys;->listSectionColor:I

    iput v10, v6, Lcom/lzx/iteam/bean/SkinCommonData;->listSectionColor:I

    .line 315
    iget-object v10, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v10, v10, Lcom/lzx/iteam/bean/SkinPropertys;->listSectionColor:I

    iput v10, v6, Lcom/lzx/iteam/bean/SkinCommonData;->listSectionColor:I

    .line 316
    iget-object v10, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    iget v10, v10, Lcom/lzx/iteam/bean/SkinPropertys;->listTextHightLightColor:I

    iput v10, v6, Lcom/lzx/iteam/bean/SkinCommonData;->listTextHightLightColor:I

    .line 319
    const-string v10, "listbackground"

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-direct {p0, v10, p2, v11, v12}, Lcom/lzx/iteam/skin/GetSkinResource;->getPathNormalDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v6, Lcom/lzx/iteam/bean/SkinCommonData;->listBgBitmap:Landroid/graphics/drawable/Drawable;

    .line 322
    const-string v10, "noname"

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-direct {p0, v10, p2, v11, v12}, Lcom/lzx/iteam/skin/GetSkinResource;->getPathNormalDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v6, Lcom/lzx/iteam/bean/SkinCommonData;->noNameBitmap:Landroid/graphics/drawable/Drawable;

    .line 325
    const/16 v10, 0x8

    new-array v7, v10, [F

    fill-array-data v7, :array_0

    .line 326
    .local v7, "tabLef":[F
    const/16 v10, 0x8

    new-array v8, v10, [F

    fill-array-data v8, :array_1

    .line 327
    .local v8, "tabRight":[F
    invoke-direct {p0, v7}, Lcom/lzx/iteam/skin/GetSkinResource;->tabButtonBg([F)[Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v6, Lcom/lzx/iteam/bean/SkinCommonData;->left:[Landroid/graphics/drawable/Drawable;

    .line 328
    invoke-direct {p0, v8}, Lcom/lzx/iteam/skin/GetSkinResource;->tabButtonBg([F)[Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v6, Lcom/lzx/iteam/bean/SkinCommonData;->right:[Landroid/graphics/drawable/Drawable;

    .line 329
    invoke-direct {p0, v7}, Lcom/lzx/iteam/skin/GetSkinResource;->tabButtonBg([F)[Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v6, Lcom/lzx/iteam/bean/SkinCommonData;->center:[Landroid/graphics/drawable/Drawable;

    .line 330
    return-object v6

    .line 325
    nop

    :array_0
    .array-data 4
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x0
        0x0
        0x0
        0x0
        0x41400000    # 12.0f
        0x41400000    # 12.0f
    .end array-data

    .line 326
    :array_1
    .array-data 4
        0x0
        0x0
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x0
        0x0
    .end array-data
.end method

.method private loadSkinHoriCommonPic(Landroid/content/Context;Ljava/lang/String;Lcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinPropertys;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "skinPath"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/lzx/iteam/bean/SkinHorizData;
    .param p4, "propertys"    # Lcom/lzx/iteam/bean/SkinPropertys;

    .prologue
    const/4 v6, -0x1

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 190
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 192
    .local v2, "tempDrawable":Landroid/graphics/drawable/Drawable;
    const-string v3, "imginput_l"

    const/4 v4, 0x0

    iget v5, p4, Lcom/lzx/iteam/bean/SkinPropertys;->tintColor:I

    invoke-direct {p0, v3, p2, v4, v5}, Lcom/lzx/iteam/skin/GetSkinResource;->getPathNormalDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p3, Lcom/lzx/iteam/bean/SkinHorizData;->hInputResId:Landroid/graphics/drawable/Drawable;

    .line 194
    const-string v3, "abc_t9"

    const-string v4, "button_bak"

    invoke-direct {p0, v3, p2, v4, v6}, Lcom/lzx/iteam/skin/GetSkinResource;->getPathNormalDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 195
    if-eqz v2, :cond_0

    .line 196
    const-string v3, "button_pressed"

    const-string v4, "drawable"

    const-string v5, "com.lzx.iteam"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 197
    .local v0, "pressid":I
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    iput-object v3, p3, Lcom/lzx/iteam/bean/SkinHorizData;->hAndAbcResId:Landroid/graphics/drawable/StateListDrawable;

    .line 200
    .end local v0    # "pressid":I
    :cond_0
    const-string v3, "hide_t9"

    const-string v4, "button_bak"

    invoke-direct {p0, v3, p2, v4, v6}, Lcom/lzx/iteam/skin/GetSkinResource;->getPathNormalDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 201
    if-eqz v2, :cond_1

    .line 202
    const-string v3, "button_pressed"

    const-string v4, "drawable"

    const-string v5, "com.lzx.iteam"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 203
    .restart local v0    # "pressid":I
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    iput-object v3, p3, Lcom/lzx/iteam/bean/SkinHorizData;->hidet9:Landroid/graphics/drawable/StateListDrawable;

    .line 205
    .end local v0    # "pressid":I
    :cond_1
    return-void
.end method

.method public static setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "pressed"    # Landroid/graphics/drawable/Drawable;
    .param p2, "normal"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 674
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 675
    .local v0, "bg":Landroid/graphics/drawable/StateListDrawable;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 676
    new-array v1, v3, [I

    invoke-virtual {v0, v1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 677
    return-object v0
.end method

.method private tabButtonBg([F)[Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1, "radii"    # [F

    .prologue
    const/16 v10, 0x50

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 934
    const/16 v5, 0xf9

    invoke-static {v5, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 935
    .local v0, "begin":I
    const/16 v5, 0xc1

    invoke-static {v5, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 937
    .local v2, "end":I
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 938
    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 939
    new-array v6, v9, [I

    aput v0, v6, v7

    aput v2, v6, v8

    .line 937
    invoke-direct {v3, v5, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 940
    .local v3, "gdNormal":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 941
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 943
    const/16 v5, 0xb3

    invoke-static {v5, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 944
    const/16 v5, 0x7b

    invoke-static {v5, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 946
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    .line 947
    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 948
    new-array v6, v9, [I

    aput v0, v6, v7

    aput v2, v6, v8

    .line 946
    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 949
    .local v4, "gdPressed":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 950
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 952
    new-array v1, v9, [Landroid/graphics/drawable/Drawable;

    .line 953
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    aput-object v3, v1, v7

    .line 954
    aput-object v4, v1, v8

    .line 956
    return-object v1
.end method


# virtual methods
.method public destoryMusic(Lcom/lzx/iteam/bean/SkinCommonData;)V
    .locals 4
    .param p1, "data"    # Lcom/lzx/iteam/bean/SkinCommonData;

    .prologue
    .line 978
    const/4 v2, 0x0

    iput v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->hasmusic:I

    .line 984
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_t9mp3:[Landroid/content/res/AssetFileDescriptor;

    array-length v2, v2

    if-lt v1, v2, :cond_6

    .line 992
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_abcmp3:[Landroid/content/res/AssetFileDescriptor;

    array-length v2, v2

    if-lt v1, v2, :cond_8

    .line 999
    iget-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_lock:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_0

    .line 1000
    iget-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_lock:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1001
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_lock:Landroid/content/res/AssetFileDescriptor;

    .line 1003
    :cond_0
    iget-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_tink:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_1

    .line 1004
    iget-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_tink:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1005
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_tink:Landroid/content/res/AssetFileDescriptor;

    .line 1007
    :cond_1
    iget-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_tock:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_2

    .line 1008
    iget-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_tock:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1009
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_tock:Landroid/content/res/AssetFileDescriptor;

    .line 1011
    :cond_2
    iget-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_ussd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_3

    .line 1012
    iget-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_ussd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1013
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_ussd:Landroid/content/res/AssetFileDescriptor;

    .line 1015
    :cond_3
    iget-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_pound:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_4

    .line 1016
    iget-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_pound:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1017
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_pound:Landroid/content/res/AssetFileDescriptor;

    .line 1019
    :cond_4
    iget-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_star:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_5

    .line 1020
    iget-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_star:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1021
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_star:Landroid/content/res/AssetFileDescriptor;

    .line 1026
    :cond_5
    :goto_2
    return-void

    .line 985
    :cond_6
    iget-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_t9mp3:[Landroid/content/res/AssetFileDescriptor;

    aget-object v2, v2, v1

    if-eqz v2, :cond_7

    .line 986
    iget-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_t9mp3:[Landroid/content/res/AssetFileDescriptor;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 987
    iget-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_t9mp3:[Landroid/content/res/AssetFileDescriptor;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 984
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 993
    :cond_8
    iget-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_abcmp3:[Landroid/content/res/AssetFileDescriptor;

    aget-object v2, v2, v1

    if-eqz v2, :cond_9

    .line 994
    iget-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_abcmp3:[Landroid/content/res/AssetFileDescriptor;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 995
    iget-object v2, p1, Lcom/lzx/iteam/bean/SkinCommonData;->def_abcmp3:[Landroid/content/res/AssetFileDescriptor;

    const/4 v3, 0x0

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1023
    :catch_0
    move-exception v0

    .line 1024
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public destroyAllSkin()V
    .locals 0

    .prologue
    .line 972
    invoke-virtual {p0}, Lcom/lzx/iteam/skin/GetSkinResource;->destroyHoriz()V

    .line 973
    invoke-virtual {p0}, Lcom/lzx/iteam/skin/GetSkinResource;->destroyVerty()V

    .line 974
    invoke-virtual {p0}, Lcom/lzx/iteam/skin/GetSkinResource;->destroyGloble()V

    .line 975
    return-void
.end method

.method public destroyGloble()V
    .locals 0

    .prologue
    .line 969
    return-void
.end method

.method public destroyHoriz()V
    .locals 0

    .prologue
    .line 965
    return-void
.end method

.method public destroyVerty()V
    .locals 0

    .prologue
    .line 961
    return-void
.end method

.method public getAllHorizSkinData(Landroid/content/Context;Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinHorizData;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "skinPath"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v1, Lcom/lzx/iteam/bean/SkinHorizData;

    invoke-direct {v1}, Lcom/lzx/iteam/bean/SkinHorizData;-><init>()V

    .line 173
    .local v1, "result":Lcom/lzx/iteam/bean/SkinHorizData;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {p0, p2}, Lcom/lzx/iteam/skin/GetSkinResource;->getSkinProperties(Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinPropertys;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    .line 177
    iget-object v2, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->loadSkinHoriCommonPic(Landroid/content/Context;Ljava/lang/String;Lcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinPropertys;)V

    .line 179
    invoke-virtual {p0, p1, p2, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->loadSkinHoriT9Pic(Landroid/content/Context;Ljava/lang/String;Lcom/lzx/iteam/bean/SkinHorizData;)V

    .line 185
    :goto_0
    return-object v1

    .line 181
    :cond_0
    const v2, 0x7f060004

    invoke-virtual {p0, p1, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->getDefaultPropertys(Landroid/content/Context;I)Lcom/lzx/iteam/bean/SkinPropertys;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    .line 182
    invoke-direct {p0, p1, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->loadDefaultHorizCommonPic(Landroid/content/Context;Lcom/lzx/iteam/bean/SkinHorizData;)V

    .line 183
    invoke-direct {p0, p1, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->loadDefaultHorizT9Pic(Landroid/content/Context;Lcom/lzx/iteam/bean/SkinHorizData;)V

    goto :goto_0
.end method

.method public getAllVertSkinData(Landroid/content/Context;Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinVertyData;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "skinPath"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v1, Lcom/lzx/iteam/bean/SkinVertyData;

    invoke-direct {v1}, Lcom/lzx/iteam/bean/SkinVertyData;-><init>()V

    .line 113
    .local v1, "result":Lcom/lzx/iteam/bean/SkinVertyData;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {p0, p2}, Lcom/lzx/iteam/skin/GetSkinResource;->getSkinProperties(Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinPropertys;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    .line 117
    iget-object v2, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->loadVertCommonPic(Landroid/content/Context;Ljava/lang/String;Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinPropertys;)V

    .line 119
    invoke-virtual {p0, p1, p2, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->loadVertT9Pic(Landroid/content/Context;Ljava/lang/String;Lcom/lzx/iteam/bean/SkinVertyData;)V

    .line 121
    invoke-virtual {p0, p1, p2, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->loadSkinVertQwertyPic(Landroid/content/Context;Ljava/lang/String;Lcom/lzx/iteam/bean/SkinVertyData;)V

    .line 131
    :goto_0
    return-object v1

    .line 123
    :cond_0
    const v2, 0x7f060004

    invoke-virtual {p0, p1, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->getDefaultPropertys(Landroid/content/Context;I)Lcom/lzx/iteam/bean/SkinPropertys;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    .line 125
    invoke-virtual {p0, p1, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->loadDefaultVertCommonPic(Landroid/content/Context;Lcom/lzx/iteam/bean/SkinVertyData;)V

    .line 127
    invoke-direct {p0, p1, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->loadDefaultVertT9Pic(Landroid/content/Context;Lcom/lzx/iteam/bean/SkinVertyData;)V

    .line 129
    invoke-direct {p0, p1, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->loadDefaultVertQwePic(Landroid/content/Context;Lcom/lzx/iteam/bean/SkinVertyData;)V

    goto :goto_0
.end method

.method public getDefaultMusic(Landroid/content/Context;Lcom/lzx/iteam/bean/SkinCommonData;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/lzx/iteam/bean/SkinCommonData;

    .prologue
    .line 542
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 544
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p2, Lcom/lzx/iteam/bean/SkinCommonData;->def_t9mp3:[Landroid/content/res/AssetFileDescriptor;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 548
    const v3, 0x7f060005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    iput-object v3, p2, Lcom/lzx/iteam/bean/SkinCommonData;->def_lock:Landroid/content/res/AssetFileDescriptor;

    .line 549
    const v3, 0x7f060006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    iput-object v3, p2, Lcom/lzx/iteam/bean/SkinCommonData;->def_tink:Landroid/content/res/AssetFileDescriptor;

    .line 550
    const v3, 0x7f060007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    iput-object v3, p2, Lcom/lzx/iteam/bean/SkinCommonData;->def_tock:Landroid/content/res/AssetFileDescriptor;

    .line 551
    const v3, 0x7f060008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    iput-object v3, p2, Lcom/lzx/iteam/bean/SkinCommonData;->def_ussd:Landroid/content/res/AssetFileDescriptor;

    .line 552
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p2, Lcom/lzx/iteam/bean/SkinCommonData;->def_abcmp3:[Landroid/content/res/AssetFileDescriptor;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 555
    const v3, 0x7f060001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    iput-object v3, p2, Lcom/lzx/iteam/bean/SkinCommonData;->def_pound:Landroid/content/res/AssetFileDescriptor;

    .line 556
    const v3, 0x7f060002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    iput-object v3, p2, Lcom/lzx/iteam/bean/SkinCommonData;->def_star:Landroid/content/res/AssetFileDescriptor;

    .line 557
    return-void

    .line 545
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dtmf_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "raw"

    const-string v5, "com.lzx.iteam"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 546
    .local v1, "id":I
    iget-object v3, p2, Lcom/lzx/iteam/bean/SkinCommonData;->def_t9mp3:[Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    aput-object v4, v3, v0

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    .end local v1    # "id":I
    :cond_1
    iget-object v3, p2, Lcom/lzx/iteam/bean/SkinCommonData;->def_abcmp3:[Landroid/content/res/AssetFileDescriptor;

    iget-object v4, p2, Lcom/lzx/iteam/bean/SkinCommonData;->def_tock:Landroid/content/res/AssetFileDescriptor;

    aput-object v4, v3, v0

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getDefaultPropertys(Landroid/content/Context;I)Lcom/lzx/iteam/bean/SkinPropertys;
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 777
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 778
    .local v19, "res":Landroid/content/res/Resources;
    new-instance v20, Lcom/lzx/iteam/bean/SkinPropertys;

    invoke-direct/range {v20 .. v20}, Lcom/lzx/iteam/bean/SkinPropertys;-><init>()V

    .line 779
    .local v20, "result":Lcom/lzx/iteam/bean/SkinPropertys;
    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v14

    .line 780
    .local v14, "is":Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v12

    .line 781
    .local v12, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v6, 0x0

    .line 783
    .local v6, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :try_start_0
    invoke-virtual {v12}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 784
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 785
    .local v5, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v22, 0x400

    move/from16 v0, v22

    new-array v7, v0, [B

    .line 786
    .local v7, "bytes":[B
    const/16 v17, 0x0

    .line 787
    .local v17, "len":I
    :goto_0
    invoke-virtual {v14, v7}, Ljava/io/InputStream;->read([B)I

    move-result v17

    if-gtz v17, :cond_0

    .line 791
    const-string v22, "utf-8"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 792
    .local v8, "content":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 793
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 794
    invoke-static {v8}, Lcom/lzx/iteam/util/SkinUtil;->filter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 795
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v22, "utf-8"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 796
    .local v4, "bis":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v6, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v9

    .line 797
    .local v9, "doc":Lorg/w3c/dom/Document;
    const-string v22, "key"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 798
    .local v18, "list":Lorg/w3c/dom/NodeList;
    const-string v22, "array"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 799
    .local v3, "arrs":Lorg/w3c/dom/NodeList;
    const/4 v15, 0x0

    .line 800
    .local v15, "j":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-lt v13, v0, :cond_1

    .line 848
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    .line 859
    .end local v3    # "arrs":Lorg/w3c/dom/NodeList;
    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "bytes":[B
    .end local v8    # "content":Ljava/lang/String;
    .end local v9    # "doc":Lorg/w3c/dom/Document;
    .end local v13    # "i":I
    .end local v15    # "j":I
    .end local v17    # "len":I
    .end local v18    # "list":Lorg/w3c/dom/NodeList;
    :goto_2
    return-object v20

    .line 788
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "bytes":[B
    .restart local v17    # "len":I
    :cond_0
    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v5, v7, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 789
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 850
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "bytes":[B
    .end local v17    # "len":I
    :catch_0
    move-exception v10

    .line 851
    .local v10, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v10}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_2

    .line 801
    .end local v10    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v3    # "arrs":Lorg/w3c/dom/NodeList;
    .restart local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "bytes":[B
    .restart local v8    # "content":Ljava/lang/String;
    .restart local v9    # "doc":Lorg/w3c/dom/Document;
    .restart local v13    # "i":I
    .restart local v15    # "j":I
    .restart local v17    # "len":I
    .restart local v18    # "list":Lorg/w3c/dom/NodeList;
    :cond_1
    :try_start_1
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 802
    .local v11, "element":Lorg/w3c/dom/Element;
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 803
    .local v16, "key":Ljava/lang/String;
    const-string v22, "NameColor"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 804
    invoke-interface {v3, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 805
    .local v2, "arrElement":Lorg/w3c/dom/Element;
    add-int/lit8 v15, v15, 0x1

    .line 806
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->parseColorProperty(Lorg/w3c/dom/Element;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/lzx/iteam/bean/SkinPropertys;->nameColor:I

    .line 800
    .end local v2    # "arrElement":Lorg/w3c/dom/Element;
    :cond_2
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 807
    :cond_3
    const-string v22, "JobTitleColor"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 808
    invoke-interface {v3, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 809
    .restart local v2    # "arrElement":Lorg/w3c/dom/Element;
    add-int/lit8 v15, v15, 0x1

    .line 810
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->parseColorProperty(Lorg/w3c/dom/Element;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/lzx/iteam/bean/SkinPropertys;->jobTitleColor:I
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_3

    .line 852
    .end local v2    # "arrElement":Lorg/w3c/dom/Element;
    .end local v3    # "arrs":Lorg/w3c/dom/NodeList;
    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "bytes":[B
    .end local v8    # "content":Ljava/lang/String;
    .end local v9    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "element":Lorg/w3c/dom/Element;
    .end local v13    # "i":I
    .end local v15    # "j":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v17    # "len":I
    .end local v18    # "list":Lorg/w3c/dom/NodeList;
    :catch_1
    move-exception v10

    .line 853
    .local v10, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v10}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_2

    .line 811
    .end local v10    # "e":Lorg/xml/sax/SAXException;
    .restart local v3    # "arrs":Lorg/w3c/dom/NodeList;
    .restart local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "bytes":[B
    .restart local v8    # "content":Ljava/lang/String;
    .restart local v9    # "doc":Lorg/w3c/dom/Document;
    .restart local v11    # "element":Lorg/w3c/dom/Element;
    .restart local v13    # "i":I
    .restart local v15    # "j":I
    .restart local v16    # "key":Ljava/lang/String;
    .restart local v17    # "len":I
    .restart local v18    # "list":Lorg/w3c/dom/NodeList;
    :cond_4
    :try_start_2
    const-string v22, "PhoneColor"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 812
    invoke-interface {v3, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 813
    .restart local v2    # "arrElement":Lorg/w3c/dom/Element;
    add-int/lit8 v15, v15, 0x1

    .line 814
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->parseColorProperty(Lorg/w3c/dom/Element;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/lzx/iteam/bean/SkinPropertys;->phoneColor:I
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    .line 854
    .end local v2    # "arrElement":Lorg/w3c/dom/Element;
    .end local v3    # "arrs":Lorg/w3c/dom/NodeList;
    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "bytes":[B
    .end local v8    # "content":Ljava/lang/String;
    .end local v9    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "element":Lorg/w3c/dom/Element;
    .end local v13    # "i":I
    .end local v15    # "j":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v17    # "len":I
    .end local v18    # "list":Lorg/w3c/dom/NodeList;
    :catch_2
    move-exception v10

    .line 855
    .local v10, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v10}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_2

    .line 815
    .end local v10    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "arrs":Lorg/w3c/dom/NodeList;
    .restart local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "bytes":[B
    .restart local v8    # "content":Ljava/lang/String;
    .restart local v9    # "doc":Lorg/w3c/dom/Document;
    .restart local v11    # "element":Lorg/w3c/dom/Element;
    .restart local v13    # "i":I
    .restart local v15    # "j":I
    .restart local v16    # "key":Ljava/lang/String;
    .restart local v17    # "len":I
    .restart local v18    # "list":Lorg/w3c/dom/NodeList;
    :cond_5
    :try_start_3
    const-string v22, "BackgroundColor"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 816
    invoke-interface {v3, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 817
    .restart local v2    # "arrElement":Lorg/w3c/dom/Element;
    add-int/lit8 v15, v15, 0x1

    .line 818
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->parseColorProperty(Lorg/w3c/dom/Element;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/lzx/iteam/bean/SkinPropertys;->backgroundColor:I
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 856
    .end local v2    # "arrElement":Lorg/w3c/dom/Element;
    .end local v3    # "arrs":Lorg/w3c/dom/NodeList;
    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "bytes":[B
    .end local v8    # "content":Ljava/lang/String;
    .end local v9    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "element":Lorg/w3c/dom/Element;
    .end local v13    # "i":I
    .end local v15    # "j":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v17    # "len":I
    .end local v18    # "list":Lorg/w3c/dom/NodeList;
    :catch_3
    move-exception v10

    .line 857
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 819
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v3    # "arrs":Lorg/w3c/dom/NodeList;
    .restart local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "bytes":[B
    .restart local v8    # "content":Ljava/lang/String;
    .restart local v9    # "doc":Lorg/w3c/dom/Document;
    .restart local v11    # "element":Lorg/w3c/dom/Element;
    .restart local v13    # "i":I
    .restart local v15    # "j":I
    .restart local v16    # "key":Ljava/lang/String;
    .restart local v17    # "len":I
    .restart local v18    # "list":Lorg/w3c/dom/NodeList;
    :cond_6
    :try_start_4
    const-string v22, "TintColor"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 820
    invoke-interface {v3, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 821
    .restart local v2    # "arrElement":Lorg/w3c/dom/Element;
    add-int/lit8 v15, v15, 0x1

    .line 822
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->parseColorProperty(Lorg/w3c/dom/Element;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/lzx/iteam/bean/SkinPropertys;->tintColor:I

    goto/16 :goto_3

    .line 823
    .end local v2    # "arrElement":Lorg/w3c/dom/Element;
    :cond_7
    const-string v22, "BarTitleColor"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 824
    invoke-interface {v3, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 825
    .restart local v2    # "arrElement":Lorg/w3c/dom/Element;
    add-int/lit8 v15, v15, 0x1

    .line 826
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->parseColorProperty(Lorg/w3c/dom/Element;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/lzx/iteam/bean/SkinPropertys;->barTitleColor:I

    goto/16 :goto_3

    .line 827
    .end local v2    # "arrElement":Lorg/w3c/dom/Element;
    :cond_8
    const-string v22, "ThemeName"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 828
    const-string v22, "string"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    .line 829
    .local v21, "theme":Lorg/w3c/dom/Element;
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/lzx/iteam/bean/SkinPropertys;->themeName:Ljava/lang/String;

    goto/16 :goto_3

    .line 830
    .end local v21    # "theme":Lorg/w3c/dom/Element;
    :cond_9
    const-string v22, "SeparatorColor"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 831
    invoke-interface {v3, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 832
    .restart local v2    # "arrElement":Lorg/w3c/dom/Element;
    add-int/lit8 v15, v15, 0x1

    .line 833
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->parseColorProperty(Lorg/w3c/dom/Element;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/lzx/iteam/bean/SkinPropertys;->listDividerColor:I

    goto/16 :goto_3

    .line 834
    .end local v2    # "arrElement":Lorg/w3c/dom/Element;
    :cond_a
    const-string v22, "ContrastColor"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 835
    invoke-interface {v3, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 836
    .restart local v2    # "arrElement":Lorg/w3c/dom/Element;
    add-int/lit8 v15, v15, 0x1

    .line 837
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->parseColorProperty(Lorg/w3c/dom/Element;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/lzx/iteam/bean/SkinPropertys;->listTextHightLightColor:I

    goto/16 :goto_3

    .line 838
    .end local v2    # "arrElement":Lorg/w3c/dom/Element;
    :cond_b
    const-string v22, "ListBackgroundColor"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 839
    invoke-interface {v3, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 840
    .restart local v2    # "arrElement":Lorg/w3c/dom/Element;
    add-int/lit8 v15, v15, 0x1

    .line 841
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->parseColorProperty(Lorg/w3c/dom/Element;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/lzx/iteam/bean/SkinPropertys;->listBgColor:I

    goto/16 :goto_3

    .line 842
    .end local v2    # "arrElement":Lorg/w3c/dom/Element;
    :cond_c
    const-string v22, "SectionHeaderBackgroundColor"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 843
    invoke-interface {v3, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 844
    .restart local v2    # "arrElement":Lorg/w3c/dom/Element;
    add-int/lit8 v15, v15, 0x1

    .line 845
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->parseColorProperty(Lorg/w3c/dom/Element;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/lzx/iteam/bean/SkinPropertys;->listSectionColor:I
    :try_end_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_3
.end method

.method public getMusic(Landroid/content/Context;Ljava/lang/String;Lcom/lzx/iteam/bean/SkinCommonData;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "skinPath"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/lzx/iteam/bean/SkinCommonData;

    .prologue
    .line 448
    const/4 v5, 0x0

    .line 449
    .local v5, "tempFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 450
    .local v6, "tempPath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 452
    .local v4, "res":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p3, Lcom/lzx/iteam/bean/SkinCommonData;->t9mp3:[Ljava/lang/String;

    array-length v7, v7

    if-lt v1, v7, :cond_0

    .line 463
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "lock.mp3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 464
    new-instance v5, Ljava/io/File;

    .end local v5    # "tempFile":Ljava/io/File;
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 465
    .restart local v5    # "tempFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 466
    const-string v7, "lock"

    const-string v8, "raw"

    const-string v9, "com.lzx.iteam"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 467
    .local v2, "id":I
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    iput-object v7, p3, Lcom/lzx/iteam/bean/SkinCommonData;->def_lock:Landroid/content/res/AssetFileDescriptor;

    .line 472
    .end local v2    # "id":I
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "tink.mp3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 473
    new-instance v5, Ljava/io/File;

    .end local v5    # "tempFile":Ljava/io/File;
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 474
    .restart local v5    # "tempFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 475
    const-string v7, "tink"

    const-string v8, "raw"

    const-string v9, "com.lzx.iteam"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 476
    .restart local v2    # "id":I
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    iput-object v7, p3, Lcom/lzx/iteam/bean/SkinCommonData;->def_tink:Landroid/content/res/AssetFileDescriptor;

    .line 481
    .end local v2    # "id":I
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "tock.mp3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 482
    new-instance v5, Ljava/io/File;

    .end local v5    # "tempFile":Ljava/io/File;
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    .restart local v5    # "tempFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 484
    const-string v7, "tock"

    const-string v8, "raw"

    const-string v9, "com.lzx.iteam"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 485
    .restart local v2    # "id":I
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    iput-object v7, p3, Lcom/lzx/iteam/bean/SkinCommonData;->def_tock:Landroid/content/res/AssetFileDescriptor;

    .line 490
    .end local v2    # "id":I
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ussd.mp3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 491
    new-instance v5, Ljava/io/File;

    .end local v5    # "tempFile":Ljava/io/File;
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    .restart local v5    # "tempFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    .line 493
    const-string v7, "ussd"

    const-string v8, "raw"

    const-string v9, "com.lzx.iteam"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 494
    .restart local v2    # "id":I
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    iput-object v7, p3, Lcom/lzx/iteam/bean/SkinCommonData;->def_ussd:Landroid/content/res/AssetFileDescriptor;

    .line 499
    .end local v2    # "id":I
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dtmf_pound.mp3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 500
    new-instance v5, Ljava/io/File;

    .end local v5    # "tempFile":Ljava/io/File;
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    .restart local v5    # "tempFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6

    .line 502
    const-string v7, "dtmf_pound"

    const-string v8, "raw"

    const-string v9, "com.lzx.iteam"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 503
    .restart local v2    # "id":I
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    iput-object v7, p3, Lcom/lzx/iteam/bean/SkinCommonData;->def_pound:Landroid/content/res/AssetFileDescriptor;

    .line 508
    .end local v2    # "id":I
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dtmf_star.mp3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 509
    new-instance v5, Ljava/io/File;

    .end local v5    # "tempFile":Ljava/io/File;
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 510
    .restart local v5    # "tempFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_7

    .line 511
    const-string v7, "dtmf_star"

    const-string v8, "raw"

    const-string v9, "com.lzx.iteam"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 512
    .restart local v2    # "id":I
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    iput-object v7, p3, Lcom/lzx/iteam/bean/SkinCommonData;->def_star:Landroid/content/res/AssetFileDescriptor;

    .line 518
    .end local v2    # "id":I
    :goto_6
    const-string v0, "abcdefghijklmnopqrstuvwxyz"

    .line 519
    .local v0, "abc":Ljava/lang/String;
    const/4 v1, 0x0

    :goto_7
    iget-object v7, p3, Lcom/lzx/iteam/bean/SkinCommonData;->abcmp3:[Ljava/lang/String;

    array-length v7, v7

    if-lt v1, v7, :cond_8

    .line 539
    return-void

    .line 453
    .end local v0    # "abc":Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dtmf_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".mp3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 454
    new-instance v5, Ljava/io/File;

    .end local v5    # "tempFile":Ljava/io/File;
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .restart local v5    # "tempFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 456
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "dtmf_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "raw"

    const-string v9, "com.lzx.iteam"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 457
    .restart local v2    # "id":I
    iget-object v7, p3, Lcom/lzx/iteam/bean/SkinCommonData;->def_t9mp3:[Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    aput-object v8, v7, v1

    .line 452
    .end local v2    # "id":I
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 459
    :cond_1
    iget-object v7, p3, Lcom/lzx/iteam/bean/SkinCommonData;->t9mp3:[Ljava/lang/String;

    aput-object v6, v7, v1

    goto :goto_8

    .line 469
    :cond_2
    iput-object v6, p3, Lcom/lzx/iteam/bean/SkinCommonData;->lock:Ljava/lang/String;

    goto/16 :goto_1

    .line 478
    :cond_3
    iput-object v6, p3, Lcom/lzx/iteam/bean/SkinCommonData;->tink:Ljava/lang/String;

    goto/16 :goto_2

    .line 487
    :cond_4
    iput-object v6, p3, Lcom/lzx/iteam/bean/SkinCommonData;->tock:Ljava/lang/String;

    goto/16 :goto_3

    .line 496
    :cond_5
    iput-object v6, p3, Lcom/lzx/iteam/bean/SkinCommonData;->ussd:Ljava/lang/String;

    goto/16 :goto_4

    .line 505
    :cond_6
    iput-object v6, p3, Lcom/lzx/iteam/bean/SkinCommonData;->pound:Ljava/lang/String;

    goto/16 :goto_5

    .line 514
    :cond_7
    iput-object v6, p3, Lcom/lzx/iteam/bean/SkinCommonData;->star:Ljava/lang/String;

    goto :goto_6

    .line 520
    .restart local v0    # "abc":Ljava/lang/String;
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "dtmf_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".mp3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 521
    .local v3, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    .end local v5    # "tempFile":Ljava/io/File;
    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    .restart local v5    # "tempFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_b

    .line 523
    iget-object v3, p3, Lcom/lzx/iteam/bean/SkinCommonData;->tock:Ljava/lang/String;

    .line 524
    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 525
    new-instance v5, Ljava/io/File;

    .end local v5    # "tempFile":Ljava/io/File;
    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 530
    .restart local v5    # "tempFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_a

    .line 531
    iget-object v7, p3, Lcom/lzx/iteam/bean/SkinCommonData;->def_abcmp3:[Landroid/content/res/AssetFileDescriptor;

    iget-object v8, p3, Lcom/lzx/iteam/bean/SkinCommonData;->def_tock:Landroid/content/res/AssetFileDescriptor;

    aput-object v8, v7, v1

    .line 519
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    .line 527
    :cond_9
    iget-object v7, p3, Lcom/lzx/iteam/bean/SkinCommonData;->def_abcmp3:[Landroid/content/res/AssetFileDescriptor;

    iget-object v8, p3, Lcom/lzx/iteam/bean/SkinCommonData;->def_tock:Landroid/content/res/AssetFileDescriptor;

    aput-object v8, v7, v1

    goto :goto_9

    .line 533
    :cond_a
    iget-object v7, p3, Lcom/lzx/iteam/bean/SkinCommonData;->abcmp3:[Ljava/lang/String;

    iget-object v8, p3, Lcom/lzx/iteam/bean/SkinCommonData;->tock:Ljava/lang/String;

    aput-object v8, v7, v1

    goto :goto_9

    .line 536
    :cond_b
    iget-object v7, p3, Lcom/lzx/iteam/bean/SkinCommonData;->abcmp3:[Ljava/lang/String;

    aput-object v3, v7, v1

    goto :goto_9
.end method

.method public getSkinDir(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/SkinDirData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/SkinDirData;>;"
    invoke-direct {p0, p1}, Lcom/lzx/iteam/skin/GetSkinResource;->addLocalSkin(Landroid/content/Context;)Lcom/lzx/iteam/bean/SkinDirData;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 48
    .local v1, "dir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "skin"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v5, "key":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 50
    iget-object v10, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mZip:Lcom/lzx/iteam/skin/UnZip;

    invoke-virtual {v10, v5}, Lcom/lzx/iteam/skin/UnZip;->readFile(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v7

    .line 51
    .local v7, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 78
    .end local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    return-object v9

    .line 51
    .restart local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 52
    .local v6, "name":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v4, "indir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 54
    new-instance v0, Lcom/lzx/iteam/bean/SkinDirData;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/SkinDirData;-><init>()V

    .line 55
    .local v0, "data":Lcom/lzx/iteam/bean/SkinDirData;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 56
    iput-object v6, v0, Lcom/lzx/iteam/bean/SkinDirData;->dirName:Ljava/lang/String;

    .line 57
    new-instance v8, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "colors.plist"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v8, "plist":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 60
    :try_start_0
    invoke-virtual {p0, v8}, Lcom/lzx/iteam/skin/GetSkinResource;->getSkinName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/lzx/iteam/bean/SkinDirData;->skinName:Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 69
    :cond_3
    :goto_1
    new-instance v3, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "star_h.png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v3, "iconFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 71
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "star_h.png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/lzx/iteam/skin/GetSkinResource;->getSkinIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    iput-object v11, v0, Lcom/lzx/iteam/bean/SkinDirData;->skinIcon:Landroid/graphics/Bitmap;

    .line 74
    .end local v3    # "iconFile":Ljava/io/File;
    .end local v8    # "plist":Ljava/io/File;
    :cond_4
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 61
    .restart local v8    # "plist":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    .line 63
    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v2

    .line 64
    .local v2, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 65
    .end local v2    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v2

    .line 66
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public getSkinIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 927
    invoke-static {p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 930
    :goto_0
    return-object v1

    .line 928
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 929
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 930
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public getSkinName(Ljava/io/File;)Ljava/lang/String;
    .locals 18
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 894
    const/4 v14, 0x0

    .line 895
    .local v14, "result":Ljava/lang/String;
    if-nez p1, :cond_0

    const/16 v16, 0x0

    .line 923
    :goto_0
    return-object v16

    .line 896
    :cond_0
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 897
    .local v10, "is":Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 898
    .local v8, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 899
    .local v3, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 900
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v16, 0x400

    move/from16 v0, v16

    new-array v4, v0, [B

    .line 901
    .local v4, "bytes":[B
    const/4 v12, 0x0

    .line 902
    .local v12, "len":I
    :goto_1
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-gtz v12, :cond_1

    .line 906
    const-string v16, "utf-8"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 907
    .local v5, "content":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 908
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 909
    invoke-static {v5}, Lcom/lzx/iteam/util/SkinUtil;->filter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 910
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v16, "utf-8"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 911
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v3, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 912
    .local v6, "doc":Lorg/w3c/dom/Document;
    const-string v16, "key"

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 913
    .local v13, "list":Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    move/from16 v0, v16

    if-lt v9, v0, :cond_2

    .line 922
    :goto_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    move-object/from16 v16, v14

    .line 923
    goto :goto_0

    .line 903
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v5    # "content":Ljava/lang/String;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "i":I
    .end local v13    # "list":Lorg/w3c/dom/NodeList;
    :cond_1
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v4, v0, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 904
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_1

    .line 914
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "content":Ljava/lang/String;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "i":I
    .restart local v13    # "list":Lorg/w3c/dom/NodeList;
    :cond_2
    invoke-interface {v13, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 915
    .local v7, "element":Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 916
    .local v11, "key":Ljava/lang/String;
    const-string v16, "ThemeName"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 917
    const-string v16, "string"

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    .line 918
    .local v15, "theme":Lorg/w3c/dom/Element;
    invoke-interface {v15}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 919
    goto :goto_3

    .line 913
    .end local v15    # "theme":Lorg/w3c/dom/Element;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method

.method public getSkinProperties(Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinPropertys;
    .locals 25
    .param p1, "skinPath"    # Ljava/lang/String;

    .prologue
    .line 682
    const/16 v21, 0x0

    .line 683
    .local v21, "result":Lcom/lzx/iteam/bean/SkinPropertys;
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 684
    .local v13, "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 685
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 686
    new-instance v20, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v24, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "colors.plist"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 687
    .local v20, "propertyFile":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 688
    new-instance v21, Lcom/lzx/iteam/bean/SkinPropertys;

    .end local v21    # "result":Lcom/lzx/iteam/bean/SkinPropertys;
    invoke-direct/range {v21 .. v21}, Lcom/lzx/iteam/bean/SkinPropertys;-><init>()V

    .line 690
    .restart local v21    # "result":Lcom/lzx/iteam/bean/SkinPropertys;
    :try_start_0
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 691
    .local v15, "is":Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v12

    .line 692
    .local v12, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v12}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 693
    .local v6, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 694
    .local v5, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v23, 0x400

    move/from16 v0, v23

    new-array v7, v0, [B

    .line 695
    .local v7, "bytes":[B
    const/16 v18, 0x0

    .line 696
    .local v18, "len":I
    :goto_0
    invoke-virtual {v15, v7}, Ljava/io/InputStream;->read([B)I

    move-result v18

    if-gtz v18, :cond_1

    .line 700
    const-string v23, "utf-8"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 701
    .local v8, "content":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 702
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 703
    invoke-static {v8}, Lcom/lzx/iteam/util/SkinUtil;->filter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 704
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v23, "utf-8"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 705
    .local v4, "bis":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v6, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v9

    .line 706
    .local v9, "doc":Lorg/w3c/dom/Document;
    const-string v23, "key"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 707
    .local v19, "list":Lorg/w3c/dom/NodeList;
    const-string v23, "array"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 708
    .local v3, "arrs":Lorg/w3c/dom/NodeList;
    const/16 v16, 0x0

    .line 709
    .local v16, "j":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    move/from16 v0, v23

    if-lt v14, v0, :cond_2

    .line 757
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    .line 773
    .end local v3    # "arrs":Lorg/w3c/dom/NodeList;
    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "bytes":[B
    .end local v8    # "content":Ljava/lang/String;
    .end local v9    # "doc":Lorg/w3c/dom/Document;
    .end local v12    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v14    # "i":I
    .end local v15    # "is":Ljava/io/InputStream;
    .end local v16    # "j":I
    .end local v18    # "len":I
    .end local v19    # "list":Lorg/w3c/dom/NodeList;
    .end local v20    # "propertyFile":Ljava/io/File;
    :cond_0
    :goto_2
    return-object v21

    .line 697
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "bytes":[B
    .restart local v12    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v15    # "is":Ljava/io/InputStream;
    .restart local v18    # "len":I
    .restart local v20    # "propertyFile":Ljava/io/File;
    :cond_1
    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v5, v7, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 698
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 759
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "bytes":[B
    .end local v12    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v15    # "is":Ljava/io/InputStream;
    .end local v18    # "len":I
    :catch_0
    move-exception v10

    .line 760
    .local v10, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 710
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "arrs":Lorg/w3c/dom/NodeList;
    .restart local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "bytes":[B
    .restart local v8    # "content":Ljava/lang/String;
    .restart local v9    # "doc":Lorg/w3c/dom/Document;
    .restart local v12    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "i":I
    .restart local v15    # "is":Ljava/io/InputStream;
    .restart local v16    # "j":I
    .restart local v18    # "len":I
    .restart local v19    # "list":Lorg/w3c/dom/NodeList;
    :cond_2
    :try_start_1
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 711
    .local v11, "element":Lorg/w3c/dom/Element;
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    .line 712
    .local v17, "key":Ljava/lang/String;
    const-string v23, "NameColor"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 713
    move/from16 v0, v16

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 714
    .local v2, "arrElement":Lorg/w3c/dom/Element;
    add-int/lit8 v16, v16, 0x1

    .line 715
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->parseColorProperty(Lorg/w3c/dom/Element;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lcom/lzx/iteam/bean/SkinPropertys;->nameColor:I

    .line 709
    .end local v2    # "arrElement":Lorg/w3c/dom/Element;
    :cond_3
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 716
    :cond_4
    const-string v23, "JobTitleColor"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 717
    move/from16 v0, v16

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 718
    .restart local v2    # "arrElement":Lorg/w3c/dom/Element;
    add-int/lit8 v16, v16, 0x1

    .line 719
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->parseColorProperty(Lorg/w3c/dom/Element;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lcom/lzx/iteam/bean/SkinPropertys;->jobTitleColor:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_3

    .line 761
    .end local v2    # "arrElement":Lorg/w3c/dom/Element;
    .end local v3    # "arrs":Lorg/w3c/dom/NodeList;
    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "bytes":[B
    .end local v8    # "content":Ljava/lang/String;
    .end local v9    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "element":Lorg/w3c/dom/Element;
    .end local v12    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v14    # "i":I
    .end local v15    # "is":Ljava/io/InputStream;
    .end local v16    # "j":I
    .end local v17    # "key":Ljava/lang/String;
    .end local v18    # "len":I
    .end local v19    # "list":Lorg/w3c/dom/NodeList;
    :catch_1
    move-exception v10

    .line 762
    .local v10, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v10}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_2

    .line 720
    .end local v10    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v3    # "arrs":Lorg/w3c/dom/NodeList;
    .restart local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "bytes":[B
    .restart local v8    # "content":Ljava/lang/String;
    .restart local v9    # "doc":Lorg/w3c/dom/Document;
    .restart local v11    # "element":Lorg/w3c/dom/Element;
    .restart local v12    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "i":I
    .restart local v15    # "is":Ljava/io/InputStream;
    .restart local v16    # "j":I
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v18    # "len":I
    .restart local v19    # "list":Lorg/w3c/dom/NodeList;
    :cond_5
    :try_start_2
    const-string v23, "PhoneColor"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 721
    move/from16 v0, v16

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 722
    .restart local v2    # "arrElement":Lorg/w3c/dom/Element;
    add-int/lit8 v16, v16, 0x1

    .line 723
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->parseColorProperty(Lorg/w3c/dom/Element;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lcom/lzx/iteam/bean/SkinPropertys;->phoneColor:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    .line 763
    .end local v2    # "arrElement":Lorg/w3c/dom/Element;
    .end local v3    # "arrs":Lorg/w3c/dom/NodeList;
    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "bytes":[B
    .end local v8    # "content":Ljava/lang/String;
    .end local v9    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "element":Lorg/w3c/dom/Element;
    .end local v12    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v14    # "i":I
    .end local v15    # "is":Ljava/io/InputStream;
    .end local v16    # "j":I
    .end local v17    # "key":Ljava/lang/String;
    .end local v18    # "len":I
    .end local v19    # "list":Lorg/w3c/dom/NodeList;
    :catch_2
    move-exception v10

    .line 764
    .local v10, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v10}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_2

    .line 724
    .end local v10    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "arrs":Lorg/w3c/dom/NodeList;
    .restart local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "bytes":[B
    .restart local v8    # "content":Ljava/lang/String;
    .restart local v9    # "doc":Lorg/w3c/dom/Document;
    .restart local v11    # "element":Lorg/w3c/dom/Element;
    .restart local v12    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "i":I
    .restart local v15    # "is":Ljava/io/InputStream;
    .restart local v16    # "j":I
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v18    # "len":I
    .restart local v19    # "list":Lorg/w3c/dom/NodeList;
    :cond_6
    :try_start_3
    const-string v23, "BackgroundColor"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 725
    move/from16 v0, v16

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 726
    .restart local v2    # "arrElement":Lorg/w3c/dom/Element;
    add-int/lit8 v16, v16, 0x1

    .line 727
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->parseColorProperty(Lorg/w3c/dom/Element;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lcom/lzx/iteam/bean/SkinPropertys;->backgroundColor:I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    .line 765
    .end local v2    # "arrElement":Lorg/w3c/dom/Element;
    .end local v3    # "arrs":Lorg/w3c/dom/NodeList;
    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "bytes":[B
    .end local v8    # "content":Ljava/lang/String;
    .end local v9    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "element":Lorg/w3c/dom/Element;
    .end local v12    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v14    # "i":I
    .end local v15    # "is":Ljava/io/InputStream;
    .end local v16    # "j":I
    .end local v17    # "key":Ljava/lang/String;
    .end local v18    # "len":I
    .end local v19    # "list":Lorg/w3c/dom/NodeList;
    :catch_3
    move-exception v10

    .line 766
    .local v10, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v10}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_2

    .line 728
    .end local v10    # "e":Lorg/xml/sax/SAXException;
    .restart local v3    # "arrs":Lorg/w3c/dom/NodeList;
    .restart local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "bytes":[B
    .restart local v8    # "content":Ljava/lang/String;
    .restart local v9    # "doc":Lorg/w3c/dom/Document;
    .restart local v11    # "element":Lorg/w3c/dom/Element;
    .restart local v12    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "i":I
    .restart local v15    # "is":Ljava/io/InputStream;
    .restart local v16    # "j":I
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v18    # "len":I
    .restart local v19    # "list":Lorg/w3c/dom/NodeList;
    :cond_7
    :try_start_4
    const-string v23, "TintColor"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 729
    move/from16 v0, v16

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 730
    .restart local v2    # "arrElement":Lorg/w3c/dom/Element;
    add-int/lit8 v16, v16, 0x1

    .line 731
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->parseColorProperty(Lorg/w3c/dom/Element;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lcom/lzx/iteam/bean/SkinPropertys;->tintColor:I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_3

    .line 767
    .end local v2    # "arrElement":Lorg/w3c/dom/Element;
    .end local v3    # "arrs":Lorg/w3c/dom/NodeList;
    .end local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "bytes":[B
    .end local v8    # "content":Ljava/lang/String;
    .end local v9    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "element":Lorg/w3c/dom/Element;
    .end local v12    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v14    # "i":I
    .end local v15    # "is":Ljava/io/InputStream;
    .end local v16    # "j":I
    .end local v17    # "key":Ljava/lang/String;
    .end local v18    # "len":I
    .end local v19    # "list":Lorg/w3c/dom/NodeList;
    :catch_4
    move-exception v10

    .line 768
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 732
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v3    # "arrs":Lorg/w3c/dom/NodeList;
    .restart local v4    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "bytes":[B
    .restart local v8    # "content":Ljava/lang/String;
    .restart local v9    # "doc":Lorg/w3c/dom/Document;
    .restart local v11    # "element":Lorg/w3c/dom/Element;
    .restart local v12    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "i":I
    .restart local v15    # "is":Ljava/io/InputStream;
    .restart local v16    # "j":I
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v18    # "len":I
    .restart local v19    # "list":Lorg/w3c/dom/NodeList;
    :cond_8
    :try_start_5
    const-string v23, "BarTitleColor"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 733
    move/from16 v0, v16

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 734
    .restart local v2    # "arrElement":Lorg/w3c/dom/Element;
    add-int/lit8 v16, v16, 0x1

    .line 735
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->parseColorProperty(Lorg/w3c/dom/Element;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lcom/lzx/iteam/bean/SkinPropertys;->barTitleColor:I

    goto/16 :goto_3

    .line 736
    .end local v2    # "arrElement":Lorg/w3c/dom/Element;
    :cond_9
    const-string v23, "ThemeName"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 737
    const-string v23, "string"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    check-cast v22, Lorg/w3c/dom/Element;

    .line 738
    .local v22, "theme":Lorg/w3c/dom/Element;
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/lzx/iteam/bean/SkinPropertys;->themeName:Ljava/lang/String;

    goto/16 :goto_3

    .line 739
    .end local v22    # "theme":Lorg/w3c/dom/Element;
    :cond_a
    const-string v23, "SeparatorColor"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 740
    move/from16 v0, v16

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 741
    .restart local v2    # "arrElement":Lorg/w3c/dom/Element;
    add-int/lit8 v16, v16, 0x1

    .line 742
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->parseColorProperty(Lorg/w3c/dom/Element;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lcom/lzx/iteam/bean/SkinPropertys;->listDividerColor:I

    goto/16 :goto_3

    .line 743
    .end local v2    # "arrElement":Lorg/w3c/dom/Element;
    :cond_b
    const-string v23, "ContrastColor"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 744
    move/from16 v0, v16

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 745
    .restart local v2    # "arrElement":Lorg/w3c/dom/Element;
    add-int/lit8 v16, v16, 0x1

    .line 746
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->parseColorProperty(Lorg/w3c/dom/Element;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lcom/lzx/iteam/bean/SkinPropertys;->listTextHightLightColor:I

    goto/16 :goto_3

    .line 747
    .end local v2    # "arrElement":Lorg/w3c/dom/Element;
    :cond_c
    const-string v23, "ListBackgroundColor"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 748
    move/from16 v0, v16

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 749
    .restart local v2    # "arrElement":Lorg/w3c/dom/Element;
    add-int/lit8 v16, v16, 0x1

    .line 750
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->parseColorProperty(Lorg/w3c/dom/Element;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lcom/lzx/iteam/bean/SkinPropertys;->listBgColor:I

    goto/16 :goto_3

    .line 751
    .end local v2    # "arrElement":Lorg/w3c/dom/Element;
    :cond_d
    const-string v23, "SectionHeaderBackgroundColor"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 752
    move/from16 v0, v16

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 753
    .restart local v2    # "arrElement":Lorg/w3c/dom/Element;
    add-int/lit8 v16, v16, 0x1

    .line 754
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->parseColorProperty(Lorg/w3c/dom/Element;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lcom/lzx/iteam/bean/SkinPropertys;->listSectionColor:I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_3
.end method

.method public getVertABCSkinData(Lcom/lzx/iteam/bean/SkinVertyData;Landroid/content/Context;Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinVertyData;
    .locals 2
    .param p1, "data"    # Lcom/lzx/iteam/bean/SkinVertyData;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "skinPath"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {p0, p3}, Lcom/lzx/iteam/skin/GetSkinResource;->getSkinProperties(Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinPropertys;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    .line 158
    iget-object v1, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    invoke-virtual {p0, p2, p3, p1, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->loadVertCommonPic(Landroid/content/Context;Ljava/lang/String;Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinPropertys;)V

    .line 160
    invoke-virtual {p0, p2, p3, p1}, Lcom/lzx/iteam/skin/GetSkinResource;->loadSkinVertQwertyPic(Landroid/content/Context;Ljava/lang/String;Lcom/lzx/iteam/bean/SkinVertyData;)V

    .line 168
    :goto_0
    return-object p1

    .line 162
    :cond_0
    const v1, 0x7f060004

    invoke-virtual {p0, p2, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->getDefaultPropertys(Landroid/content/Context;I)Lcom/lzx/iteam/bean/SkinPropertys;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    .line 164
    invoke-virtual {p0, p2, p1}, Lcom/lzx/iteam/skin/GetSkinResource;->loadDefaultVertCommonPic(Landroid/content/Context;Lcom/lzx/iteam/bean/SkinVertyData;)V

    .line 166
    invoke-direct {p0, p2, p1}, Lcom/lzx/iteam/skin/GetSkinResource;->loadDefaultVertQwePic(Landroid/content/Context;Lcom/lzx/iteam/bean/SkinVertyData;)V

    goto :goto_0
.end method

.method public getVertT9SkinData(Lcom/lzx/iteam/bean/SkinVertyData;Landroid/content/Context;Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinVertyData;
    .locals 2
    .param p1, "data"    # Lcom/lzx/iteam/bean/SkinVertyData;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "skinPath"    # Ljava/lang/String;

    .prologue
    .line 135
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p0, p3}, Lcom/lzx/iteam/skin/GetSkinResource;->getSkinProperties(Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinPropertys;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    .line 139
    iget-object v1, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    invoke-virtual {p0, p2, p3, p1, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->loadVertCommonPic(Landroid/content/Context;Ljava/lang/String;Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinPropertys;)V

    .line 141
    invoke-virtual {p0, p2, p3, p1}, Lcom/lzx/iteam/skin/GetSkinResource;->loadVertT9Pic(Landroid/content/Context;Ljava/lang/String;Lcom/lzx/iteam/bean/SkinVertyData;)V

    .line 150
    :goto_0
    return-object p1

    .line 144
    :cond_0
    const v1, 0x7f060004

    invoke-virtual {p0, p2, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->getDefaultPropertys(Landroid/content/Context;I)Lcom/lzx/iteam/bean/SkinPropertys;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/skin/GetSkinResource;->mProperty:Lcom/lzx/iteam/bean/SkinPropertys;

    .line 146
    invoke-virtual {p0, p2, p1}, Lcom/lzx/iteam/skin/GetSkinResource;->loadDefaultVertCommonPic(Landroid/content/Context;Lcom/lzx/iteam/bean/SkinVertyData;)V

    .line 148
    invoke-direct {p0, p2, p1}, Lcom/lzx/iteam/skin/GetSkinResource;->loadDefaultVertT9Pic(Landroid/content/Context;Lcom/lzx/iteam/bean/SkinVertyData;)V

    goto :goto_0
.end method

.method public loadCommon(Landroid/content/Context;Ljava/lang/String;I)Lcom/lzx/iteam/bean/SkinCommonData;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "skinPath"    # Ljava/lang/String;
    .param p3, "sound"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 90
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    invoke-direct {p0, p1}, Lcom/lzx/iteam/skin/GetSkinResource;->loadDefaultSkinGloble(Landroid/content/Context;)Lcom/lzx/iteam/bean/SkinCommonData;

    move-result-object v1

    .line 98
    .local v1, "skin":Lcom/lzx/iteam/bean/SkinCommonData;
    :goto_0
    if-ne p3, v4, :cond_2

    .line 99
    invoke-virtual {p0, p1, p2, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->getMusic(Landroid/content/Context;Ljava/lang/String;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 100
    iput v4, v1, Lcom/lzx/iteam/bean/SkinCommonData;->hasmusic:I

    .line 108
    :cond_0
    :goto_1
    return-object v1

    .line 95
    .end local v1    # "skin":Lcom/lzx/iteam/bean/SkinCommonData;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/skin/GetSkinResource;->loadSkinGloble(Landroid/content/Context;Ljava/lang/String;)Lcom/lzx/iteam/bean/SkinCommonData;

    move-result-object v1

    .restart local v1    # "skin":Lcom/lzx/iteam/bean/SkinCommonData;
    goto :goto_0

    .line 101
    :cond_2
    if-ne p3, v3, :cond_3

    .line 102
    invoke-virtual {p0, p1, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->getDefaultMusic(Landroid/content/Context;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 103
    iput v3, v1, Lcom/lzx/iteam/bean/SkinCommonData;->hasmusic:I

    goto :goto_1

    .line 104
    :cond_3
    if-nez p3, :cond_0

    .line 105
    const/4 v2, 0x0

    iput v2, v1, Lcom/lzx/iteam/bean/SkinCommonData;->hasmusic:I

    .line 106
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/skin/GetSkinResource;->destoryMusic(Lcom/lzx/iteam/bean/SkinCommonData;)V

    goto :goto_1
.end method

.method public loadDefaultVertCommonPic(Landroid/content/Context;Lcom/lzx/iteam/bean/SkinVertyData;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/lzx/iteam/bean/SkinVertyData;

    .prologue
    .line 429
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 430
    .local v1, "res":Landroid/content/res/Resources;
    const v0, 0x7f0201c4

    .line 431
    .local v0, "id":I
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p2, Lcom/lzx/iteam/bean/SkinVertyData;->vInputResId:Landroid/graphics/drawable/Drawable;

    .line 433
    sget-boolean v2, Lcom/lzx/iteam/CloudDialerActivity;->isShowChange:Z

    if-eqz v2, :cond_0

    .line 434
    const v0, 0x7f020193

    .line 439
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p2, Lcom/lzx/iteam/bean/SkinVertyData;->vAndAbcResId_normal:Landroid/graphics/drawable/Drawable;

    .line 440
    return-void

    .line 436
    :cond_0
    const v0, 0x7f020192

    goto :goto_0
.end method

.method public loadSkinHoriT9Pic(Landroid/content/Context;Ljava/lang/String;Lcom/lzx/iteam/bean/SkinHorizData;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "skinPath"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/lzx/iteam/bean/SkinHorizData;

    .prologue
    const/4 v7, -0x1

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 222
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 224
    .local v3, "tempDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p3, Lcom/lzx/iteam/bean/SkinHorizData;->ht9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    array-length v4, v4

    if-lt v0, v4, :cond_4

    .line 232
    const-string v4, "star_h"

    const-string v5, "star_v"

    invoke-direct {p0, v4, p2, v5, v7}, Lcom/lzx/iteam/skin/GetSkinResource;->getPathNormalDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 233
    if-eqz v3, :cond_0

    .line 234
    const-string v4, "vstar_pressed"

    const-string v5, "drawable"

    const-string v6, "com.lzx.iteam"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 235
    .local v1, "pressid":I
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    iput-object v4, p3, Lcom/lzx/iteam/bean/SkinHorizData;->hstarResId:Landroid/graphics/drawable/StateListDrawable;

    .line 238
    .end local v1    # "pressid":I
    :cond_0
    const-string v4, "del_h"

    const-string v5, "del_v"

    invoke-direct {p0, v4, p2, v5, v7}, Lcom/lzx/iteam/skin/GetSkinResource;->getPathNormalDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 239
    if-eqz v3, :cond_1

    .line 240
    const-string v4, "vdel_pressed"

    const-string v5, "drawable"

    const-string v6, "com.lzx.iteam"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 241
    .restart local v1    # "pressid":I
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    iput-object v4, p3, Lcom/lzx/iteam/bean/SkinHorizData;->hdelResId:Landroid/graphics/drawable/StateListDrawable;

    .line 244
    .end local v1    # "pressid":I
    :cond_1
    const-string v4, "call_h"

    const-string v5, "call_v"

    invoke-direct {p0, v4, p2, v5, v7}, Lcom/lzx/iteam/skin/GetSkinResource;->getPathNormalDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 245
    if-eqz v3, :cond_2

    .line 246
    const-string v4, "vcall_pressed"

    const-string v5, "drawable"

    const-string v6, "com.lzx.iteam"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 247
    .restart local v1    # "pressid":I
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    iput-object v4, p3, Lcom/lzx/iteam/bean/SkinHorizData;->hcallResId:Landroid/graphics/drawable/StateListDrawable;

    .line 250
    .end local v1    # "pressid":I
    :cond_2
    const-string v4, "sms_h"

    const-string v5, "sms_v"

    invoke-direct {p0, v4, p2, v5, v7}, Lcom/lzx/iteam/skin/GetSkinResource;->getPathNormalDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 251
    if-eqz v3, :cond_3

    .line 252
    const-string v4, "vsms_pressed"

    const-string v5, "drawable"

    const-string v6, "com.lzx.iteam"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 253
    .restart local v1    # "pressid":I
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    iput-object v4, p3, Lcom/lzx/iteam/bean/SkinHorizData;->hsmsResId:Landroid/graphics/drawable/StateListDrawable;

    .line 255
    .end local v1    # "pressid":I
    :cond_3
    return-void

    .line 225
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "v"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_pressed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    const-string v6, "com.lzx.iteam"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 226
    .restart local v1    # "pressid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/skin/GetSkinResource;->getSkinIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lzx/iteam/skin/GetSkinResource;->bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 227
    if-eqz v3, :cond_5

    .line 228
    iget-object v4, p3, Lcom/lzx/iteam/bean/SkinHorizData;->ht9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v2, v5, v3}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    aput-object v5, v4, v0

    .line 224
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public loadSkinVertQwertyPic(Landroid/content/Context;Ljava/lang/String;Lcom/lzx/iteam/bean/SkinVertyData;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "skinPath"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/lzx/iteam/bean/SkinVertyData;

    .prologue
    .line 618
    const-string v0, "abcdefghijklmnopqrstuvwxyz"

    .line 619
    .local v0, "abc":Ljava/lang/String;
    iget-object v6, p3, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 620
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 622
    .local v4, "res":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p3, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    array-length v6, v6

    if-lt v2, v6, :cond_1

    .line 643
    const/4 v5, 0x0

    .line 644
    .local v5, "tempDrawable":Landroid/graphics/drawable/Drawable;
    const-string v6, "del_h_zm"

    const-string v7, "del_h"

    const/4 v8, -0x1

    invoke-direct {p0, v6, p2, v7, v8}, Lcom/lzx/iteam/skin/GetSkinResource;->getPathNormalDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 645
    if-eqz v5, :cond_0

    .line 646
    const-string v6, "vdel_pressed"

    const-string v7, "drawable"

    const-string v8, "com.lzx.iteam"

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 647
    .local v3, "pressid":I
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v4, v6, v5}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    iput-object v6, p3, Lcom/lzx/iteam/bean/SkinVertyData;->vabcdelResId:Landroid/graphics/drawable/StateListDrawable;

    .line 650
    .end local v3    # "pressid":I
    :cond_0
    return-void

    .line 623
    .end local v5    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 624
    .local v1, "c":C
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lzx/iteam/skin/GetSkinResource;->getSkinIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/lzx/iteam/skin/GetSkinResource;->bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 625
    .restart local v5    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_2

    .line 626
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_i5"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lzx/iteam/skin/GetSkinResource;->getSkinIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/lzx/iteam/skin/GetSkinResource;->bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 628
    :cond_2
    if-nez v5, :cond_4

    .line 629
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "button_bak.png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lzx/iteam/skin/GetSkinResource;->getSkinIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/lzx/iteam/skin/GetSkinResource;->bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 630
    if-nez v5, :cond_3

    .line 631
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "button_bak_i5.png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lzx/iteam/skin/GetSkinResource;->getSkinIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/lzx/iteam/skin/GetSkinResource;->bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 633
    :cond_3
    const-string v6, "button_pressed"

    const-string v7, "drawable"

    const-string v8, "com.lzx.iteam"

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 634
    .restart local v3    # "pressid":I
    iget-object v6, p3, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v4, v7, v5}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v7

    aput-object v7, v6, v2

    .line 635
    iget-object v6, p3, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 637
    .end local v3    # "pressid":I
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "v"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_pressed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "drawable"

    const-string v8, "com.lzx.iteam"

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 638
    .restart local v3    # "pressid":I
    iget-object v6, p3, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v4, v7, v5}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v7

    aput-object v7, v6, v2

    goto :goto_1
.end method

.method public loadVertCommonPic(Landroid/content/Context;Ljava/lang/String;Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinPropertys;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "skinPath"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/lzx/iteam/bean/SkinVertyData;
    .param p4, "property"    # Lcom/lzx/iteam/bean/SkinPropertys;

    .prologue
    .line 561
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 562
    .local v1, "res":Landroid/content/res/Resources;
    const-string v3, "imginput_s"

    const-string v4, "imginput_s_i5"

    iget v5, p4, Lcom/lzx/iteam/bean/SkinPropertys;->tintColor:I

    invoke-direct {p0, v3, p2, v4, v5}, Lcom/lzx/iteam/skin/GetSkinResource;->getPathNormalDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p3, Lcom/lzx/iteam/bean/SkinVertyData;->vInputResId:Landroid/graphics/drawable/Drawable;

    .line 564
    const-string v3, "abc_zm"

    const-string v4, "button_bak"

    const/4 v5, -0x1

    invoke-direct {p0, v3, p2, v4, v5}, Lcom/lzx/iteam/skin/GetSkinResource;->getPathNormalDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 565
    .local v2, "tempDrawable":Landroid/graphics/drawable/Drawable;
    const-string v3, "button_pressed"

    const-string v4, "drawable"

    const-string v5, "com.lzx.iteam"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 566
    .local v0, "pressid":I
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    iput-object v3, p3, Lcom/lzx/iteam/bean/SkinVertyData;->vAndAbcResId_normal:Landroid/graphics/drawable/Drawable;

    .line 567
    return-void
.end method

.method public loadVertT9Pic(Landroid/content/Context;Ljava/lang/String;Lcom/lzx/iteam/bean/SkinVertyData;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "skinPath"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/lzx/iteam/bean/SkinVertyData;

    .prologue
    const/4 v7, -0x1

    .line 570
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 572
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p3, Lcom/lzx/iteam/bean/SkinVertyData;->vt9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    array-length v4, v4

    if-lt v0, v4, :cond_4

    .line 584
    const/4 v3, 0x0

    .line 585
    .local v3, "tempDrawable":Landroid/graphics/drawable/Drawable;
    const-string v4, "star_v"

    const-string v5, "star_h"

    invoke-direct {p0, v4, p2, v5, v7}, Lcom/lzx/iteam/skin/GetSkinResource;->getPathNormalDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 586
    if-eqz v3, :cond_0

    .line 587
    const-string v4, "vstar_pressed"

    const-string v5, "drawable"

    const-string v6, "com.lzx.iteam"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 588
    .local v1, "pressid":I
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    iput-object v4, p3, Lcom/lzx/iteam/bean/SkinVertyData;->vstarResId:Landroid/graphics/drawable/StateListDrawable;

    .line 593
    .end local v1    # "pressid":I
    :cond_0
    const/4 v3, 0x0

    .line 594
    const-string v4, "del_v"

    const-string v5, "del_h"

    invoke-direct {p0, v4, p2, v5, v7}, Lcom/lzx/iteam/skin/GetSkinResource;->getPathNormalDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 595
    if-eqz v3, :cond_1

    .line 596
    const-string v4, "vdel_pressed"

    const-string v5, "drawable"

    const-string v6, "com.lzx.iteam"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 597
    .restart local v1    # "pressid":I
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    iput-object v4, p3, Lcom/lzx/iteam/bean/SkinVertyData;->vt9delResId:Landroid/graphics/drawable/StateListDrawable;

    .line 601
    .end local v1    # "pressid":I
    :cond_1
    const/4 v3, 0x0

    .line 602
    const-string v4, "call_v"

    const-string v5, "call_h"

    invoke-direct {p0, v4, p2, v5, v7}, Lcom/lzx/iteam/skin/GetSkinResource;->getPathNormalDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 603
    if-eqz v3, :cond_2

    .line 604
    const-string v4, "vcall_pressed"

    const-string v5, "drawable"

    const-string v6, "com.lzx.iteam"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 605
    .restart local v1    # "pressid":I
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    iput-object v4, p3, Lcom/lzx/iteam/bean/SkinVertyData;->vcallResId:Landroid/graphics/drawable/StateListDrawable;

    .line 609
    .end local v1    # "pressid":I
    :cond_2
    const/4 v3, 0x0

    .line 610
    const-string v4, "sms_v"

    const-string v5, "sms_h"

    invoke-direct {p0, v4, p2, v5, v7}, Lcom/lzx/iteam/skin/GetSkinResource;->getPathNormalDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 611
    if-eqz v3, :cond_3

    .line 612
    const-string v4, "vsms_pressed"

    const-string v5, "drawable"

    const-string v6, "com.lzx.iteam"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 613
    .restart local v1    # "pressid":I
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    iput-object v4, p3, Lcom/lzx/iteam/bean/SkinVertyData;->vsmsResId:Landroid/graphics/drawable/StateListDrawable;

    .line 615
    .end local v1    # "pressid":I
    :cond_3
    return-void

    .line 573
    .end local v3    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "v"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_pressed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    const-string v6, "com.lzx.iteam"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 574
    .restart local v1    # "pressid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/skin/GetSkinResource;->getSkinIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lzx/iteam/skin/GetSkinResource;->bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 575
    .restart local v3    # "tempDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_5

    .line 576
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_i5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/skin/GetSkinResource;->getSkinIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lzx/iteam/skin/GetSkinResource;->bitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 578
    :cond_5
    if-eqz v3, :cond_6

    .line 579
    iget-object v4, p3, Lcom/lzx/iteam/bean/SkinVertyData;->vt9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v2, v5, v3}, Lcom/lzx/iteam/skin/GetSkinResource;->setBackground(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    aput-object v5, v4, v0

    .line 572
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public parseColorProperty(Lorg/w3c/dom/Element;)I
    .locals 8
    .param p1, "arrElement"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v1, 0x0

    .line 881
    if-nez p1, :cond_0

    .line 889
    :goto_0
    return v1

    .line 884
    :cond_0
    const-string v5, "integer"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 885
    .local v4, "rgb":Lorg/w3c/dom/NodeList;
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 886
    .local v3, "r":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 887
    .local v2, "g":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, "b":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 889
    .local v1, "color":I
    goto :goto_0
.end method
