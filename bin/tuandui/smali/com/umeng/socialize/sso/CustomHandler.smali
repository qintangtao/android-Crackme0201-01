.class public abstract Lcom/umeng/socialize/sso/CustomHandler;
.super Lcom/umeng/socialize/sso/UMSsoHandler;
.source "CustomHandler.java"


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected isToCircle:Z

.field protected mAppId:Ljava/lang/String;

.field protected mDescriptionLimit:I

.field protected mGrayIcon:I

.field protected mIcon:I

.field protected mKeyWord:Ljava/lang/String;

.field protected mMediaType:Lcom/umeng/socialize/media/UMediaObject$MediaType;

.field protected mPlatformOpId:I

.field protected mShareContent:Ljava/lang/String;

.field protected mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

.field protected mShowWord:Ljava/lang/String;

.field protected mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

.field protected mThumbLimit:I

.field protected mThumbSize:I

.field protected mTitle:Ljava/lang/String;

.field protected mTitleLimit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 103
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/sso/CustomHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1}, Lcom/umeng/socialize/sso/UMSsoHandler;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object v2, p0, Lcom/umeng/socialize/sso/CustomHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareContent:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mAppId:Ljava/lang/String;

    .line 58
    iput v1, p0, Lcom/umeng/socialize/sso/CustomHandler;->mIcon:I

    .line 60
    iput v1, p0, Lcom/umeng/socialize/sso/CustomHandler;->mGrayIcon:I

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mKeyWord:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShowWord:Ljava/lang/String;

    .line 72
    iput-boolean v1, p0, Lcom/umeng/socialize/sso/CustomHandler;->isToCircle:Z

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mTitle:Ljava/lang/String;

    .line 76
    const/16 v0, 0x200

    iput v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mTitleLimit:I

    .line 81
    const/16 v0, 0x96

    iput v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mThumbSize:I

    .line 83
    const v0, 0x8000

    iput v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mThumbLimit:I

    .line 87
    const/16 v0, 0x400

    iput v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mDescriptionLimit:I

    .line 89
    iput-object v2, p0, Lcom/umeng/socialize/sso/CustomHandler;->mMediaType:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->TAG:Ljava/lang/String;

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mPlatformOpId:I

    .line 112
    iput-object p2, p0, Lcom/umeng/socialize/sso/CustomHandler;->mAppId:Ljava/lang/String;

    .line 113
    return-void
.end method


# virtual methods
.method public authorize(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public authorizeCallBack(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method protected abstract buildMediaObject(Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMediaObject;
.end method

.method protected buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 639
    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 640
    :goto_0
    return-object v0

    .line 639
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected compressBitmap([B)[B
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 524
    .line 525
    if-eqz p1, :cond_3

    array-length v0, p1

    iget v3, p0, Lcom/umeng/socialize/sso/CustomHandler;->mThumbLimit:I

    if-lt v0, v3, :cond_3

    .line 526
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 528
    array-length v0, p1

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    move v0, v2

    .line 534
    :goto_0
    if-nez v1, :cond_1

    const/16 v5, 0xa

    if-gt v0, v5, :cond_1

    .line 535
    const-wide v6, 0x3fe999999999999aL    # 0.8

    int-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 536
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 537
    iget-object v6, p0, Lcom/umeng/socialize/sso/CustomHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "quality = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4, v6, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 539
    iget-object v5, p0, Lcom/umeng/socialize/sso/CustomHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Thumb Size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    array-length v7, v7

    div-int/lit16 v7, v7, 0x400

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    iget v6, p0, Lcom/umeng/socialize/sso/CustomHandler;->mThumbLimit:I

    if-ge v5, v6, :cond_0

    move v1, v2

    .line 542
    goto :goto_0

    .line 544
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    :cond_1
    if-eqz v3, :cond_3

    .line 550
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 551
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 552
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 555
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### \u5206\u4eab"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShowWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7684\u7f29\u7565\u56fe\u5927\u5c0f : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    array-length v0, p1

    if-nez v0, :cond_3

    .line 558
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->TAG:Ljava/lang/String;

    const-string v1, "### \u7f29\u7565\u56fe\u7684\u539f\u56fe\u592a\u5927,\u8bf7\u8bbe\u7f6e\u5c0f\u4e8e64KB\u7684\u7f29\u7565\u56fe"

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_3
    return-object p1
.end method

.method protected createMessage(Lcom/umeng/socialize/media/UMediaObject$MediaType;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne p1, v1, :cond_1

    .line 321
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/sso/CustomHandler;->getShareImage(Lcom/umeng/socialize/media/UMediaObject;)Ljava/lang/Object;

    move-result-object v0

    .line 335
    :cond_0
    :goto_0
    return-object v0

    .line 322
    :cond_1
    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->MUSIC:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne p1, v1, :cond_2

    .line 324
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    iget-object v1, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareContent:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/sso/CustomHandler;->getShareMusic(Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 325
    :cond_2
    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->TEXT:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne p1, v1, :cond_3

    .line 327
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareContent:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/sso/CustomHandler;->getShareText(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_3
    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->TEXT_IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne p1, v1, :cond_4

    .line 330
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareContent:Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/sso/CustomHandler;->getShareTextAndImage(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 331
    :cond_4
    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->VEDIO:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne p1, v1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    iget-object v1, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareContent:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/sso/CustomHandler;->getShareVideo(Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected createNewPlatform()Lcom/umeng/socialize/bean/CustomPlatform;
    .locals 4

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/umeng/socialize/sso/CustomHandler;->initPlatformConfig()V

    .line 168
    new-instance v0, Lcom/umeng/socialize/bean/CustomPlatform;

    iget-object v1, p0, Lcom/umeng/socialize/sso/CustomHandler;->mKeyWord:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShowWord:Ljava/lang/String;

    iget v3, p0, Lcom/umeng/socialize/sso/CustomHandler;->mIcon:I

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/socialize/bean/CustomPlatform;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mCustomPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    .line 169
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mCustomPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    iget v1, p0, Lcom/umeng/socialize/sso/CustomHandler;->mGrayIcon:I

    iput v1, v0, Lcom/umeng/socialize/bean/CustomPlatform;->mGrayIcon:I

    .line 170
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mCustomPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    new-instance v1, Lcom/umeng/socialize/sso/CustomHandler$1;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/sso/CustomHandler$1;-><init>(Lcom/umeng/socialize/sso/CustomHandler;)V

    iput-object v1, v0, Lcom/umeng/socialize/bean/CustomPlatform;->mClickListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnSnsPlatformClickListener;

    .line 188
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mCustomPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    return-object v0
.end method

.method protected createThumb(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/16 v3, 0xc8

    .line 369
    const/4 v0, 0x0

    .line 370
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 372
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 373
    const/high16 v0, 0x3f800000    # 1.0f

    .line 374
    if-lt v1, v3, :cond_0

    if-ge v2, v3, :cond_1

    .line 375
    :cond_0
    if-ge v1, v2, :cond_2

    .line 377
    int-to-float v0, v1

    div-float v0, p2, v0

    .line 384
    :cond_1
    :goto_0
    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 391
    if-nez v0, :cond_3

    .line 396
    :goto_1
    return-object p1

    .line 380
    :cond_2
    int-to-float v0, v2

    div-float v0, p2, v0

    goto :goto_0

    :cond_3
    move-object p1, v0

    goto :goto_1

    :cond_4
    move-object p1, v0

    goto :goto_1
.end method

.method protected abstract doShare(Ljava/lang/Object;Lcom/umeng/socialize/media/UMediaObject$MediaType;)Z
.end method

.method protected fireAllListenersOnComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 3

    .prologue
    .line 665
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    sget-object v1, Lcom/umeng/socialize/sso/CustomHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-interface {v0, p1, p2, v1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    sget-object v2, Lcom/umeng/socialize/sso/CustomHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 670
    return-void
.end method

.method protected fireAllListenersOnStart()V
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnStart(Ljava/lang/Class;)V

    .line 656
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method protected getMediaType(Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMediaObject$MediaType;
    .locals 2

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 262
    if-eqz p1, :cond_1

    .line 263
    invoke-interface {p1}, Lcom/umeng/socialize/media/UMediaObject;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v0

    .line 264
    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareContent:Ljava/lang/String;

    .line 265
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    sget-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->TEXT_IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .line 273
    :cond_0
    :goto_0
    return-object v0

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    sget-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->TEXT:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    goto :goto_0
.end method

.method protected abstract getShareImage(Lcom/umeng/socialize/media/UMediaObject;)Ljava/lang/Object;
.end method

.method protected getShareMsg(Lcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 2

    .prologue
    .line 283
    if-eqz p1, :cond_0

    .line 284
    sput-object p1, Lcom/umeng/socialize/sso/CustomHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 286
    sget-object v0, Lcom/umeng/socialize/sso/CustomHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareType()Lcom/umeng/socialize/bean/ShareType;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/ShareType;->SHAKE:Lcom/umeng/socialize/bean/ShareType;

    if-ne v0, v1, :cond_1

    .line 287
    sget-object v0, Lcom/umeng/socialize/sso/CustomHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareContent:Ljava/lang/String;

    .line 288
    sget-object v0, Lcom/umeng/socialize/sso/CustomHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 294
    :goto_0
    sget-object v0, Lcom/umeng/socialize/sso/CustomHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    sget-object v1, Lcom/umeng/socialize/bean/ShareType;->NORMAL:Lcom/umeng/socialize/bean/ShareType;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->setShareType(Lcom/umeng/socialize/bean/ShareType;)V

    .line 296
    :cond_0
    return-void

    .line 290
    :cond_1
    sget-object v0, Lcom/umeng/socialize/sso/CustomHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareContent:Ljava/lang/String;

    .line 291
    sget-object v0, Lcom/umeng/socialize/sso/CustomHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    goto :goto_0
.end method

.method protected abstract getShareMusic(Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected abstract getShareText(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected abstract getShareTextAndImage(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)Ljava/lang/Object;
.end method

.method protected abstract getShareVideo(Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected getThumbByteArray(Lcom/umeng/socialize/media/UMediaObject;)[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 575
    if-nez p1, :cond_1

    move-object v0, v1

    .line 623
    :cond_0
    :goto_0
    return-object v0

    .line 580
    :cond_1
    const-string v0, ""

    .line 581
    instance-of v2, p1, Lcom/umeng/socialize/media/UMusic;

    if-eqz v2, :cond_5

    .line 582
    check-cast p1, Lcom/umeng/socialize/media/UMusic;

    .line 583
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMusic;->getThumb()Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMusic;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object p1

    .line 604
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->isUrlMedia()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 605
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v0

    .line 608
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 609
    iget v2, p0, Lcom/umeng/socialize/sso/CustomHandler;->mThumbSize:I

    iget v3, p0, Lcom/umeng/socialize/sso/CustomHandler;->mThumbSize:I

    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/utils/BitmapUtils;->getBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 611
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_9

    .line 612
    invoke-static {v0}, Lcom/umeng/socialize/utils/BitmapUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 613
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    .line 618
    :goto_2
    if-eqz v0, :cond_4

    array-length v1, v0

    if-nez v1, :cond_0

    :cond_4
    if-eqz p1, :cond_0

    .line 619
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->isUrlMedia()Z

    move-result v1

    if-nez v1, :cond_0

    .line 620
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->toByte()[B

    move-result-object v0

    goto :goto_0

    .line 585
    :cond_5
    instance-of v2, p1, Lcom/umeng/socialize/media/UMVideo;

    if-eqz v2, :cond_6

    .line 586
    check-cast p1, Lcom/umeng/socialize/media/UMVideo;

    .line 587
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMVideo;->getThumb()Ljava/lang/String;

    move-result-object v0

    .line 588
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMVideo;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object p1

    goto :goto_1

    .line 589
    :cond_6
    instance-of v2, p1, Lcom/umeng/socialize/media/UMWebPage;

    if-eqz v2, :cond_7

    .line 590
    check-cast p1, Lcom/umeng/socialize/media/UMWebPage;

    .line 591
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMWebPage;->getThumb()Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMWebPage;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object p1

    goto :goto_1

    .line 593
    :cond_7
    instance-of v2, p1, Lcom/umeng/socialize/media/UMImage;

    if-eqz v2, :cond_a

    .line 594
    check-cast p1, Lcom/umeng/socialize/media/UMImage;

    .line 595
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->getThumb()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 596
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->getThumb()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 597
    :cond_8
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->isUrlMedia()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 598
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_9
    move-object v0, v1

    goto :goto_2

    :cond_a
    move-object p1, v1

    goto :goto_1
.end method

.method protected handleOnClick(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 3

    .prologue
    .line 202
    iput-object p3, p0, Lcom/umeng/socialize/sso/CustomHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 204
    invoke-virtual {p0}, Lcom/umeng/socialize/sso/CustomHandler;->setSelectedPlatform()V

    .line 206
    invoke-virtual {p0, p2}, Lcom/umeng/socialize/sso/CustomHandler;->getShareMsg(Lcom/umeng/socialize/bean/SocializeEntity;)V

    .line 208
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/umeng/socialize/sso/CustomHandler;->listenerCallback(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 214
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/sso/CustomHandler;->buildMediaObject(Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 216
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareContent:Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/sso/CustomHandler;->prepare(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V

    .line 222
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u8bbe\u7f6e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/sso/CustomHandler;->mCustomPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    iget-object v2, v2, Lcom/umeng/socialize/bean/CustomPlatform;->mShowWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7684\u5206\u4eab\u5185\u5bb9..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected haveCallback(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract initPlatformConfig()V
.end method

.method public abstract isClientInstalled()Z
.end method

.method public isToCircle()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->isToCircle:Z

    return v0
.end method

.method protected listenerCallback(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 0

    .prologue
    .line 305
    if-eqz p3, :cond_0

    .line 306
    invoke-interface {p3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onStart()V

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/socialize/sso/CustomHandler;->fireAllListenersOnStart()V

    .line 309
    return-void
.end method

.method protected prepare(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 3

    .prologue
    .line 233
    invoke-virtual {p0, p2}, Lcom/umeng/socialize/sso/CustomHandler;->getMediaType(Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mMediaType:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .line 234
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mMediaType:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/umeng/socialize/sso/CustomHandler;->shareTo()Z

    .line 240
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8bbe\u7f6e\u5206\u4eab\u5185\u5bb9..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 238
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->TAG:Ljava/lang/String;

    const-string v1, "\u60a8\u8bbe\u7f6e\u7684\u5206\u4eab\u5185\u5bb9\u4e3a\u7a7a,\u5206\u4eab\u5185\u5bb9\u53ea\u652f\u6301\u6587\u5b57\u3001\u56fe\u7247\uff0c\u56fe\u6587\u3001\u97f3\u4e50\u3001\u89c6\u9891\u3001\u7f51\u9875\u7c7b\u578b..."

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendReport(Z)V
    .locals 6

    .prologue
    .line 488
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSelectedPlatfrom()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v1

    .line 489
    const/4 v0, -0x1

    .line 490
    if-eqz p1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/sso/CustomHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, v2, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareContent:Ljava/lang/String;

    iget-object v4, p0, Lcom/umeng/socialize/sso/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 493
    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v5

    .line 492
    invoke-static {v0, v2, v3, v4, v5}, Lcom/umeng/socialize/utils/SocializeUtils;->sendAnalytic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/umeng/socialize/sso/CustomHandler;->mPlatformOpId:I

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/utils/StatisticsDataUtils;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 497
    const/16 v0, 0xc8

    .line 500
    :cond_0
    iget-object v2, p0, Lcom/umeng/socialize/sso/CustomHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/umeng/socialize/sso/CustomHandler;->haveCallback(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 502
    sget-object v2, Lcom/umeng/socialize/sso/CustomHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {p0, v1, v0, v2}, Lcom/umeng/socialize/sso/CustomHandler;->fireAllListenersOnComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 505
    :cond_1
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/umeng/socialize/sso/CustomHandler;->mAppId:Ljava/lang/String;

    .line 127
    return-void
.end method

.method protected setPlatformOpId(I)V
    .locals 0

    .prologue
    .line 153
    iput p1, p0, Lcom/umeng/socialize/sso/CustomHandler;->mPlatformOpId:I

    .line 154
    return-void
.end method

.method protected abstract setSelectedPlatform()V
.end method

.method public setToCircle(Z)V
    .locals 0

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/umeng/socialize/sso/CustomHandler;->isToCircle:Z

    .line 145
    return-void
.end method
