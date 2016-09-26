.class public final Lcom/umeng/socialize/controller/impl/b;
.super Ljava/lang/Object;
.source "ShareServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/controller/ShareService;


# static fields
.field public static d:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;


# instance fields
.field a:Lcom/umeng/socialize/bean/SocializeEntity;

.field b:Lcom/umeng/socialize/controller/UMSocialService;

.field c:Lcom/umeng/socialize/bean/SocializeConfig;

.field private e:Z

.field private f:Lcom/umeng/socialize/view/b;

.field private g:Z

.field private final h:Ljava/lang/String;

.field private i:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/controller/impl/b;->d:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 89
    iput-boolean v1, p0, Lcom/umeng/socialize/controller/impl/b;->e:Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->f:Lcom/umeng/socialize/view/b;

    .line 97
    iput-boolean v1, p0, Lcom/umeng/socialize/controller/impl/b;->g:Z

    .line 99
    const-class v0, Lcom/umeng/socialize/controller/impl/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->h:Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 113
    return-void
.end method

.method private a(Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)Lcom/umeng/socialize/bean/MultiStatus;
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/16 v7, -0x67

    .line 710
    if-nez p3, :cond_0

    .line 711
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    const/16 v1, -0x66

    invoke-direct {v0, v1}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    .line 745
    :goto_0
    return-object v0

    .line 713
    :cond_0
    iget-object v0, p3, Lcom/umeng/socialize/bean/UMShareMsg;->mWeiBoId:Ljava/lang/String;

    .line 715
    if-eqz p2, :cond_1

    array-length v1, p2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 716
    :cond_1
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    const/16 v1, -0x69

    invoke-direct {v0, v1}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    goto :goto_0

    .line 719
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 720
    new-instance v6, Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-direct {v6}, Lcom/umeng/socialize/net/base/SocializeClient;-><init>()V

    new-instance v0, Lcom/umeng/socialize/net/q;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    aget-object v1, p2, v4

    iget-object v3, v1, Lcom/umeng/socialize/bean/SNSPair;->mPaltform:Ljava/lang/String;

    aget-object v1, p2, v4

    iget-object v4, v1, Lcom/umeng/socialize/bean/SNSPair;->mUsid:Ljava/lang/String;

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/net/q;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/UMShareMsg;)V

    .line 721
    invoke-virtual {v6, v0}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v1

    .line 723
    if-nez v1, :cond_3

    .line 724
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    invoke-direct {v0, v7}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    goto :goto_0

    .line 727
    :cond_3
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    iget v2, v1, Lcom/umeng/socialize/net/base/SocializeReseponse;->mStCode:I

    iget-object v1, v1, Lcom/umeng/socialize/net/base/SocializeReseponse;->mMsg:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 730
    :cond_4
    new-instance v0, Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-direct {v0}, Lcom/umeng/socialize/net/base/SocializeClient;-><init>()V

    new-instance v1, Lcom/umeng/socialize/net/o;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/umeng/socialize/net/o;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)V

    .line 731
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/p;

    .line 733
    if-nez v0, :cond_5

    .line 734
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    invoke-direct {v0, v7}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    goto :goto_0

    .line 736
    :cond_5
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#### ShareMultiResponse toString : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 737
    invoke-virtual {v0}, Lcom/umeng/socialize/net/p;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 736
    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v1, v0, Lcom/umeng/socialize/net/p;->c:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eqz v1, :cond_6

    .line 740
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, v0, Lcom/umeng/socialize/net/p;->c:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/umeng/socialize/net/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/umeng/socialize/bean/SocializeEntity;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :cond_6
    new-instance v1, Lcom/umeng/socialize/bean/MultiStatus;

    iget v2, v0, Lcom/umeng/socialize/net/p;->mStCode:I

    iget-object v3, v0, Lcom/umeng/socialize/net/p;->mMsg:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(ILjava/lang/String;)V

    .line 744
    iget-object v0, v0, Lcom/umeng/socialize/net/p;->a:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/bean/MultiStatus;->setPlatformCode(Ljava/util/Map;)V

    move-object v0, v1

    .line 745
    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)Lcom/umeng/socialize/bean/MultiStatus;
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/b;->a(Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)Lcom/umeng/socialize/bean/MultiStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/b;)Lcom/umeng/socialize/view/b;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->f:Lcom/umeng/socialize/view/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 363
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 364
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 365
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 379
    :goto_0
    return-object v0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 379
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 368
    :catch_1
    move-exception v0

    .line 369
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 370
    :catch_2
    move-exception v0

    .line 371
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 372
    :catch_3
    move-exception v0

    .line 373
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 374
    :catch_4
    move-exception v0

    .line 375
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 376
    :catch_5
    move-exception v0

    .line 377
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private final a()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->b:Lcom/umeng/socialize/controller/UMSocialService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v0, v0, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    .line 121
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->b:Lcom/umeng/socialize/controller/UMSocialService;

    .line 123
    :cond_0
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->b(Landroid/app/Activity;)V

    .line 248
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->c(Landroid/app/Activity;)V

    .line 249
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/4 v2, 0x0

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->DOUBAN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->removePlatform([Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 250
    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 167
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0, p2}, Lcom/umeng/socialize/controller/UMSocialService;->setShareContent(Ljava/lang/String;)V

    .line 170
    :cond_0
    if-eqz p3, :cond_1

    .line 171
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->b:Lcom/umeng/socialize/controller/UMSocialService;

    new-instance v1, Lcom/umeng/socialize/media/UMImage;

    invoke-direct {v1, p1, p3}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;[B)V

    invoke-interface {v0, v1}, Lcom/umeng/socialize/controller/UMSocialService;->setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->b:Lcom/umeng/socialize/controller/UMSocialService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/umeng/socialize/controller/UMSocialService;->setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 529
    new-instance v5, Landroid/content/Intent;

    const-class v0, Lcom/umeng/socialize/view/ShareActivity;

    invoke-direct {v5, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 530
    const-string v0, "dc"

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v1, v1, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const-string v0, "sns"

    .line 533
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    .line 532
    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    invoke-static {p1, p2}, Lcom/umeng/socialize/utils/OauthHelper;->isAuthenticatedAndTokenNotExpired(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/impl/b;->e:Z

    if-eqz v0, :cond_0

    .line 539
    invoke-static {p1, p2}, Lcom/umeng/socialize/utils/OauthHelper;->getUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v0

    .line 540
    iput-boolean v2, p0, Lcom/umeng/socialize/controller/impl/b;->e:Z

    .line 541
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/umeng/socialize/controller/impl/b;->postShare(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 593
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0, p3}, Lcom/umeng/socialize/bean/SocializeConfig;->contains(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0, p3}, Lcom/umeng/socialize/bean/SocializeConfig;->registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    .line 547
    :cond_1
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 551
    :cond_2
    const-string v0, ""

    invoke-static {p1, p2, v0, v2}, Lcom/umeng/socialize/utils/LoadingDialog;->createProgressDialog(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 553
    new-instance v0, Lcom/umeng/socialize/controller/impl/b$3;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/controller/impl/b$3;-><init>(Lcom/umeng/socialize/controller/impl/b;Landroid/app/ProgressDialog;Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;Landroid/content/Intent;)V

    .line 589
    invoke-static {v2}, Lcom/umeng/socialize/utils/SocializeUtils;->safeShowDialog(Landroid/app/Dialog;)V

    .line 591
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v1, p1, p2, v0}, Lcom/umeng/socialize/controller/UMSocialService;->doOauthVerify(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/umeng/socialize/controller/impl/InitializeController;)V
    .locals 1

    .prologue
    .line 758
    new-instance v0, Lcom/umeng/socialize/controller/impl/b$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/umeng/socialize/controller/impl/b$5;-><init>(Lcom/umeng/socialize/controller/impl/b;Lcom/umeng/socialize/controller/impl/InitializeController;Landroid/content/Context;)V

    .line 768
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/b$5;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    .line 769
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;Lcom/umeng/socialize/controller/impl/InitializeController;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/controller/impl/b;->a(Landroid/content/Context;Lcom/umeng/socialize/controller/impl/InitializeController;)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 340
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 341
    invoke-virtual {v0, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 351
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 344
    :catch_1
    move-exception v0

    .line 345
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 346
    :catch_2
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 348
    :catch_3
    move-exception v0

    .line 349
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 690
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->b:Lcom/umeng/socialize/controller/UMSocialService;

    instance-of v0, v0, Lcom/umeng/socialize/controller/impl/InitializeController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->b:Lcom/umeng/socialize/controller/UMSocialService;

    check-cast v0, Lcom/umeng/socialize/controller/impl/InitializeController;

    .line 691
    invoke-virtual {v0, p1}, Lcom/umeng/socialize/controller/impl/InitializeController;->a(Landroid/content/Context;)Z

    move-result v0

    .line 694
    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "-1"

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, v2, Lcom/umeng/socialize/bean/SocializeEntity;->mEntityKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/b;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v2}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/socialize/bean/SocializeEntity;->mEntityKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/umeng/socialize/bean/SocializeEntity;->mEntityKey:Ljava/lang/String;

    .line 697
    :cond_0
    return v0

    .line 691
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/b;Z)Z
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/umeng/socialize/controller/impl/b;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/umeng/socialize/controller/impl/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 777
    sget-object v0, Lcom/umeng/socialize/utils/SocializeUtils;->deleteUris:Ljava/util/Set;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/umeng/socialize/utils/SocializeUtils;->deleteUris:Ljava/util/Set;

    .line 778
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 779
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 780
    sget-object v0, Lcom/umeng/socialize/utils/SocializeUtils;->deleteUris:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 781
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 782
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 781
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 784
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/umeng/socialize/utils/BitmapUtils;->PATH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "image_uri_cache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 786
    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/SocializeUtils;->saveObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    :cond_1
    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 10

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 259
    const-string v0, "deault_id"

    .line 261
    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v5

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    .line 264
    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object v0, v2, v4

    aput-object v0, v2, v3

    .line 268
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v5

    .line 271
    new-array v3, v4, [Ljava/lang/Object;

    .line 272
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    .line 274
    const-string v4, "com.umeng.socialize.weixin.controller.UMWXHandler"

    .line 275
    const-string v5, "addToSocialSDK"

    .line 276
    const-string v6, "setToCircle"

    .line 279
    iget-object v7, p0, Lcom/umeng/socialize/controller/impl/b;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    sget-object v8, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v8}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getReqCode()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v7

    if-nez v7, :cond_0

    .line 280
    invoke-direct {p0, v4, v1, v2}, Lcom/umeng/socialize/controller/impl/b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 281
    if-eqz v7, :cond_0

    .line 282
    invoke-direct {p0, v7, v5, v9, v9}, Lcom/umeng/socialize/controller/impl/b;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 286
    :cond_0
    iget-object v7, p0, Lcom/umeng/socialize/controller/impl/b;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    sget-object v8, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v8}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getReqCode()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v7

    if-nez v7, :cond_1

    .line 287
    invoke-direct {p0, v4, v1, v2}, Lcom/umeng/socialize/controller/impl/b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 288
    if-eqz v1, :cond_1

    .line 289
    invoke-direct {p0, v1, v6, v0, v3}, Lcom/umeng/socialize/controller/impl/b;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 290
    invoke-direct {p0, v1, v5, v9, v9}, Lcom/umeng/socialize/controller/impl/b;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 293
    :cond_1
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1014
    sget-object v0, Lcom/umeng/socialize/controller/impl/b;->d:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-nez v0, :cond_0

    .line 1015
    new-instance v0, Lcom/umeng/socialize/controller/impl/b$8;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/controller/impl/b$8;-><init>(Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/socialize/controller/impl/b;->d:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 1044
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 2

    .prologue
    .line 847
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 848
    invoke-static {p1, v0}, Lcom/umeng/socialize/utils/OauthHelper;->getUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v1

    .line 849
    invoke-static {p1, v0}, Lcom/umeng/socialize/utils/OauthHelper;->isAuthenticatedAndTokenNotExpired(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/umeng/socialize/controller/impl/b;->postShare(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 855
    :goto_0
    return-void

    .line 852
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/controller/impl/b;->e:Z

    .line 853
    invoke-virtual {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/b;->postShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0
.end method

.method private c(Landroid/app/Activity;)V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 302
    const-string v0, "deault_id"

    .line 303
    const-string v1, "com.umeng.socialize.sso.QZoneSsoHandler"

    .line 304
    const-string v2, "com.umeng.socialize.sso.UMQQSsoHandler"

    .line 305
    const-string v3, "addToSocialSDK"

    .line 306
    new-array v4, v10, [Ljava/lang/Class;

    const-class v5, Landroid/app/Activity;

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v9

    .line 309
    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object v0, v5, v8

    aput-object v0, v5, v9

    .line 314
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    sget-object v6, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v6}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getReqCode()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 315
    invoke-direct {p0, v1, v4, v5}, Lcom/umeng/socialize/controller/impl/b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_0

    .line 317
    invoke-direct {p0, v0, v3, v7, v7}, Lcom/umeng/socialize/controller/impl/b;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getReqCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 322
    invoke-direct {p0, v2, v4, v5}, Lcom/umeng/socialize/controller/impl/b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_1

    .line 324
    invoke-direct {p0, v0, v3, v7, v7}, Lcom/umeng/socialize/controller/impl/b;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 327
    :cond_1
    return-void
.end method

.method private c(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getPlatformMap()Ljava/util/Map;

    move-result-object v0

    .line 867
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    .line 866
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 868
    if-eqz v0, :cond_0

    .line 869
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0, p1, v1, p3}, Lcom/umeng/socialize/bean/SnsPlatform;->performClick(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 872
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/umeng/socialize/controller/impl/b;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/impl/b;->e:Z

    return v0
.end method

.method private d(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 388
    new-instance v0, Lcom/umeng/socialize/controller/impl/b$2;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/controller/impl/b$2;-><init>(Lcom/umeng/socialize/controller/impl/b;Landroid/app/Activity;)V

    .line 411
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v1, p1, v0}, Lcom/umeng/socialize/controller/UMSocialService;->showLoginDialog(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;)V

    .line 412
    return-void
.end method

.method static synthetic d(Lcom/umeng/socialize/controller/impl/b;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/b;->b()V

    return-void
.end method

.method private e(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 422
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b;->h:Ljava/lang/String;

    const-string v2, "### activity == null"

    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :goto_0
    return v0

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b;->f:Lcom/umeng/socialize/view/b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b;->f:Lcom/umeng/socialize/view/b;

    invoke-virtual {v1}, Lcom/umeng/socialize/view/b;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 427
    const-string v1, "\u5206\u4eab\u9762\u677f\u5df2\u6253\u5f00"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 431
    :cond_2
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/b;->b:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-virtual {v1, p1, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->getAllPlatforms(Landroid/content/Context;Lcom/umeng/socialize/controller/UMSocialService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 432
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b;->h:Ljava/lang/String;

    const-string v2, "### \u5e73\u53f0\u6570\u91cf\u4e3a0"

    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v1, "\u5e73\u53f0\u6570\u91cf\u4e3a0"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 436
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public directShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 2

    .prologue
    .line 802
    invoke-static {p1, p2}, Lcom/umeng/socialize/utils/SocializeUtils;->platformCheck(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 834
    :goto_0
    return-void

    .line 806
    :cond_0
    if-nez p3, :cond_1

    .line 807
    invoke-static {}, Lcom/umeng/socialize/utils/ListenerUtils;->createSnsPostListener()Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    move-result-object p3

    .line 810
    :cond_1
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/b;->a()V

    .line 813
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, p2, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 815
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareType()Lcom/umeng/socialize/bean/ShareType;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/ShareType;->NORMAL:Lcom/umeng/socialize/bean/ShareType;

    if-ne v0, v1, :cond_2

    .line 817
    invoke-static {p2}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 824
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/umeng/socialize/controller/impl/b;->b(Landroid/content/Context;)V

    .line 826
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    sget-object v1, Lcom/umeng/socialize/controller/impl/b;->d:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    .line 828
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->isCustomPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 829
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/b;->c(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0

    .line 820
    :cond_2
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_1

    .line 831
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/b;->b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0
.end method

.method public dismissShareBoard()V
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->f:Lcom/umeng/socialize/view/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->f:Lcom/umeng/socialize/view/b;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->f:Lcom/umeng/socialize/view/b;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/b;->dismiss()V

    .line 1065
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->f:Lcom/umeng/socialize/view/b;

    .line 1067
    :cond_0
    return-void
.end method

.method public isOpenShareBoard()Z
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->f:Lcom/umeng/socialize/view/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->f:Lcom/umeng/socialize/view/b;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1072
    :goto_0
    return v0

    .line 1071
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openShare(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 203
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/b;->a()V

    .line 205
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->e(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->a(Landroid/app/Activity;)V

    .line 209
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0, p1, v1, v4}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->f:Lcom/umeng/socialize/view/b;

    .line 212
    new-instance v0, Lcom/umeng/socialize/view/abs/a;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/view/abs/a;-><init>(Landroid/content/Context;)V

    .line 213
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/abs/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    new-instance v1, Lcom/umeng/socialize/view/b;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, v2, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    .line 217
    invoke-static {v2}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/umeng/socialize/view/b;-><init>(Landroid/content/Context;Lcom/umeng/socialize/view/abs/a;Lcom/umeng/socialize/controller/UMSocialService;)V

    iput-object v1, p0, Lcom/umeng/socialize/controller/impl/b;->f:Lcom/umeng/socialize/view/b;

    .line 218
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b;->f:Lcom/umeng/socialize/view/b;

    invoke-virtual {v1, v4}, Lcom/umeng/socialize/view/b;->setFocusable(Z)V

    .line 219
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b;->f:Lcom/umeng/socialize/view/b;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/view/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b;->f:Lcom/umeng/socialize/view/b;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/b;->i:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/view/b;->a(Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;)V

    .line 221
    new-instance v1, Lcom/umeng/socialize/controller/impl/b$1;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/controller/impl/b$1;-><init>(Lcom/umeng/socialize/controller/impl/b;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/abs/a;->a(Landroid/view/View$OnClickListener;)V

    .line 229
    if-eqz p2, :cond_1

    .line 230
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0, p2}, Lcom/umeng/socialize/bean/SocializeConfig;->registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    .line 233
    :cond_1
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/impl/b;->g:Z

    if-eqz v0, :cond_2

    .line 234
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->d(Landroid/app/Activity;)V

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->f:Lcom/umeng/socialize/view/b;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/umeng/socialize/view/b;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public openShare(Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 186
    iput-boolean p2, p0, Lcom/umeng/socialize/controller/impl/b;->g:Z

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/b;->openShare(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 189
    return-void
.end method

.method public postShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 2

    .prologue
    .line 464
    invoke-static {p1, p2}, Lcom/umeng/socialize/utils/SocializeUtils;->platformCheck(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    :goto_0
    return-void

    .line 467
    :cond_0
    if-nez p3, :cond_1

    .line 468
    invoke-static {}, Lcom/umeng/socialize/utils/ListenerUtils;->createSnsPostListener()Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    move-result-object p3

    .line 471
    :cond_1
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/b;->a()V

    .line 472
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 475
    invoke-static {p2}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 478
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/umeng/socialize/controller/impl/b;->b(Landroid/content/Context;)V

    .line 479
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    sget-object v1, Lcom/umeng/socialize/controller/impl/b;->d:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    .line 482
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->isCustomPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 483
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/b;->c(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0

    .line 485
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/b;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0
.end method

.method public postShare(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 6

    .prologue
    .line 502
    invoke-static {p3}, Lcom/umeng/socialize/utils/SocializeUtils;->isValidPlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/b;->a()V

    .line 507
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v4

    .line 509
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->setShareMsg(Lcom/umeng/socialize/bean/UMShareMsg;)V

    .line 515
    :goto_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->setFireCallback(Z)V

    .line 516
    invoke-virtual {p3}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/socialize/controller/impl/b;->postShareByCustomPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/UMShareMsg;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0

    .line 511
    :cond_1
    new-instance v4, Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-direct {v4}, Lcom/umeng/socialize/bean/UMShareMsg;-><init>()V

    .line 512
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    .line 513
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/umeng/socialize/bean/UMShareMsg;->setMediaData(Lcom/umeng/socialize/media/UMediaObject;)V

    goto :goto_1
.end method

.method public postShareByCustomPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/UMShareMsg;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 8

    .prologue
    .line 609
    invoke-static {p3}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v7

    .line 610
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/b;->a()V

    .line 612
    new-instance v0, Lcom/umeng/socialize/controller/impl/b$4;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/umeng/socialize/controller/impl/b$4;-><init>(Lcom/umeng/socialize/controller/impl/b;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/umeng/socialize/bean/UMShareMsg;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 680
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/b$4;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    .line 681
    return-void
.end method

.method public postShareByID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 7

    .prologue
    .line 971
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/b;->a()V

    .line 972
    new-instance v0, Lcom/umeng/socialize/controller/impl/b$7;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/umeng/socialize/controller/impl/b$7;-><init>(Lcom/umeng/socialize/controller/impl/b;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1005
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/b$7;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    .line 1006
    return-void
.end method

.method public varargs postShareMulti(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 8

    .prologue
    .line 886
    if-nez p1, :cond_1

    .line 887
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->h:Ljava/lang/String;

    const-string v1, "\u8bf7\u4f20\u9012\u4e00\u4e2a\u6709\u6548\u7684Context\u5bf9\u8c61"

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    if-eqz p3, :cond_2

    array-length v0, p3

    if-nez v0, :cond_3

    .line 892
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->h:Ljava/lang/String;

    const-string v1, "\u5206\u4eab\u7684\u5e73\u53f0\u4e3a\u7a7a\uff0c\u8bf7\u4f20\u9012\u6709\u6548\u7684\u5206\u4eab\u5e73\u53f0"

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 896
    :cond_3
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/b;->a()V

    .line 898
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 899
    invoke-static {}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getShareMultiPlatforms()[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 900
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 901
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 902
    if-eqz p3, :cond_7

    .line 903
    array-length v3, p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_5

    aget-object v4, p3, v0

    .line 904
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 905
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 907
    :cond_4
    iget-object v5, p0, Lcom/umeng/socialize/controller/impl/b;->h:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\u4e0d\u652f\u6301\u4e00\u952e\u5206\u4eab\u5230\u591a\u4e2a\u5e73\u53f0"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/umeng/socialize/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 910
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 913
    :goto_3
    invoke-static {p1, v6, v0}, Lcom/umeng/socialize/utils/SocializeUtils;->getOauthedPlatforms(Landroid/content/Context;Ljava/util/Map;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)[Lcom/umeng/socialize/bean/SNSPair;

    move-result-object v4

    .line 915
    new-instance v5, Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-direct {v5}, Lcom/umeng/socialize/bean/UMShareMsg;-><init>()V

    .line 916
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    .line 917
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/umeng/socialize/bean/UMShareMsg;->setMediaData(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 918
    if-eqz v4, :cond_6

    array-length v0, v4

    if-lez v0, :cond_6

    .line 920
    new-instance v0, Lcom/umeng/socialize/controller/impl/b$6;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/umeng/socialize/controller/impl/b$6;-><init>(Lcom/umeng/socialize/controller/impl/b;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;Ljava/util/Map;)V

    .line 954
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/b$6;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    goto/16 :goto_0

    .line 957
    :cond_6
    if-eqz p2, :cond_0

    .line 958
    invoke-interface {p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;->onStart()V

    .line 959
    const/16 v0, -0x69

    .line 960
    new-instance v1, Lcom/umeng/socialize/bean/MultiStatus;

    invoke-direct {v1, v0}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    .line 961
    invoke-virtual {v1, v6}, Lcom/umeng/socialize/bean/MultiStatus;->setPlatformCode(Ljava/util/Map;)V

    .line 962
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-interface {p2, v1, v0, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;->onComplete(Lcom/umeng/socialize/bean/MultiStatus;ILcom/umeng/socialize/bean/SocializeEntity;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, p3

    goto :goto_3
.end method

.method public setShareBoardListener(Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;)V
    .locals 0

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/b;->i:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;

    .line 1055
    return-void
.end method

.method public shareEmail(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getPlatformMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 449
    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 450
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/umeng/socialize/bean/SnsPlatform;->performClick(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 451
    return-void
.end method

.method public shareSms(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getPlatformMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 442
    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 443
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/umeng/socialize/bean/SnsPlatform;->performClick(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 444
    return-void
.end method

.method public shareTo(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;[B)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/b;->a()V

    .line 140
    invoke-direct {p0, p1, p3, p4}, Lcom/umeng/socialize/controller/impl/b;->a(Landroid/app/Activity;Ljava/lang/String;[B)V

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/umeng/socialize/controller/impl/b;->postShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 142
    return-void
.end method

.method public shareTo(Landroid/app/Activity;Ljava/lang/String;[B)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/b;->a()V

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/b;->a(Landroid/app/Activity;Ljava/lang/String;[B)V

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/b;->openShare(Landroid/app/Activity;Z)V

    .line 158
    return-void
.end method
