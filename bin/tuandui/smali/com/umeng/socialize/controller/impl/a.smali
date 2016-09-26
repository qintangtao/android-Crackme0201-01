.class public final Lcom/umeng/socialize/controller/impl/a;
.super Ljava/lang/Object;
.source "AuthServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/controller/AuthService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/controller/impl/a$a;
    }
.end annotation


# instance fields
.field a:Lcom/umeng/socialize/bean/SocializeEntity;

.field b:Lcom/umeng/socialize/bean/SocializeConfig;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->b:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 60
    const-class v0, Lcom/umeng/socialize/controller/impl/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->e:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 67
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->b:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 286
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->getListener(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 288
    new-instance v1, Lcom/umeng/socialize/controller/impl/a$3;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/umeng/socialize/controller/impl/a$3;-><init>(Lcom/umeng/socialize/controller/impl/a;Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    .line 354
    return-object v1
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/a;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/a;->c:Ljava/util/Map;

    return-object p1
.end method

.method private a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v0, v1, p2, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 366
    new-instance v0, Lcom/umeng/socialize/controller/impl/a$4;

    invoke-direct {v0, p0, p1, p3}, Lcom/umeng/socialize/controller/impl/a$4;-><init>(Lcom/umeng/socialize/controller/impl/a;Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    .line 405
    new-instance v1, Lcom/umeng/socialize/view/a;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2, p2, v0}, Lcom/umeng/socialize/view/a;-><init>(Landroid/app/Activity;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    .line 408
    if-eqz v0, :cond_0

    .line 409
    invoke-interface {v0, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 412
    :cond_0
    invoke-static {v1}, Lcom/umeng/socialize/utils/SocializeUtils;->safeShowDialog(Landroid/app/Dialog;)V

    .line 413
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;Lcom/umeng/socialize/sso/UMSsoHandler;)V
    .locals 6

    .prologue
    .line 427
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const/16 v1, 0xc

    invoke-virtual {v0, p1, p2, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 429
    new-instance v4, Lcom/umeng/socialize/controller/impl/a$5;

    invoke-direct {v4, p0, p3, p1}, Lcom/umeng/socialize/controller/impl/a$5;-><init>(Lcom/umeng/socialize/controller/impl/a;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;Landroid/app/Activity;)V

    .line 471
    new-instance v0, Lcom/umeng/socialize/controller/impl/a$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/controller/impl/a$a;-><init>(Lcom/umeng/socialize/controller/impl/a;Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;Lcom/umeng/socialize/sso/UMSsoHandler;)V

    .line 474
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->c:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 475
    :cond_0
    invoke-static {p1}, Lcom/umeng/socialize/utils/SocializeUtils;->getPlatformSecret(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->c:Ljava/util/Map;

    .line 476
    invoke-static {p1}, Lcom/umeng/socialize/utils/SocializeUtils;->getPlatformKey(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    .line 479
    :cond_1
    invoke-direct {p0, p2}, Lcom/umeng/socialize/controller/impl/a;->a(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 480
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->b:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getReqCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v3

    .line 481
    const-string v1, ""

    .line 482
    const-string v2, ""

    .line 483
    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p2, v4, :cond_2

    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v4, :cond_5

    .line 484
    :cond_2
    iget-object v1, v3, Lcom/umeng/socialize/sso/UMSsoHandler;->mExtraData:Ljava/util/Map;

    const-string v2, "wx_appid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 485
    iget-object v2, v3, Lcom/umeng/socialize/sso/UMSsoHandler;->mExtraData:Ljava/util/Map;

    const-string v3, "wx_secret"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 486
    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const-string v4, "wx_appid"

    invoke-virtual {v3, v4, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const-string v4, "wx_secret"

    invoke-virtual {v3, v4, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_3
    :goto_0
    const/4 v3, 0x0

    .line 496
    iget-object v4, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 497
    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 499
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 500
    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/umeng/socialize/utils/SocializeUtils;->savePlatformKey(Landroid/content/Context;Ljava/util/Map;)V

    .line 503
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->c:Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/umeng/socialize/utils/SocializeUtils;->savePlatformSecret(Landroid/content/Context;Ljava/util/Map;)V

    .line 504
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    invoke-direct {p0, p1, v1, v0}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;Ljava/util/Map;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V

    .line 520
    :goto_1
    return-void

    .line 488
    :cond_5
    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p2, v4, :cond_6

    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v4, :cond_3

    .line 489
    :cond_6
    iget-object v1, v3, Lcom/umeng/socialize/sso/UMSsoHandler;->mExtraData:Ljava/util/Map;

    const-string v2, "qzone_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 490
    iget-object v2, v3, Lcom/umeng/socialize/sso/UMSsoHandler;->mExtraData:Ljava/util/Map;

    const-string v3, "qzone_secret"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 491
    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const-string v4, "qzone_id"

    invoke-virtual {v3, v4, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const-string v4, "qzone_secret"

    invoke-virtual {v3, v4, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 509
    :cond_7
    invoke-direct {p0, p2}, Lcom/umeng/socialize/controller/impl/a;->b(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 511
    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onStart()V

    .line 512
    const/16 v1, 0xc8

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onComplete(ILjava/util/Map;)V

    .line 514
    invoke-static {}, Lcom/umeng/socialize/utils/ListenerUtils;->createDataListener()Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    move-result-object v0

    .line 516
    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/a;->getPlatformKeys(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V

    goto :goto_1

    .line 518
    :cond_8
    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/a;->getPlatformKeys(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 886
    const-string v0, "usid"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 887
    const-string v0, "access_key"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 888
    const-string v0, "access_secret"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 889
    const-string v0, "access_token"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 890
    const-string v0, "uid"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 893
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v2, :cond_0

    .line 894
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const-string v2, "user_id"

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 895
    const-string v2, "uid"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 900
    const-string v1, "openid"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 902
    :cond_1
    const-string v2, "expires_in"

    .line 903
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 905
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 906
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const-string v5, "expires_in"

    .line 907
    invoke-virtual {v2, v5}, Lcom/umeng/socialize/bean/SocializeEntity;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 909
    :cond_2
    invoke-static {p1, p2, v2}, Lcom/umeng/socialize/utils/OauthHelper;->saveTokenExpiresIn(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 911
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 912
    invoke-static {p1, p2, v3, v1}, Lcom/umeng/socialize/utils/OauthHelper;->saveAccessToken(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 916
    invoke-static {p1, p2, v0}, Lcom/umeng/socialize/utils/OauthHelper;->setUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 919
    :cond_4
    if-eqz p2, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 920
    const-string v0, "null"

    invoke-static {p1, p2, v4, v0}, Lcom/umeng/socialize/utils/OauthHelper;->saveAccessToken(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :cond_5
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p2, v0, :cond_6

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v0, :cond_7

    .line 925
    :cond_6
    const-string v0, "refresh_token"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 926
    invoke-static {p1, p2, v0}, Lcom/umeng/socialize/utils/OauthHelper;->saveRefreshToken(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 928
    const-string v0, "refresh_token_expires"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 929
    invoke-static {p1, p2, v0, v1}, Lcom/umeng/socialize/utils/OauthHelper;->saveRefreshTokenExpires(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;J)V

    .line 931
    :cond_7
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 548
    new-instance v0, Lcom/umeng/socialize/controller/impl/a$6;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/umeng/socialize/controller/impl/a$6;-><init>(Lcom/umeng/socialize/controller/impl/a;Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;Ljava/util/Map;)V

    .line 569
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/a$6;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    .line 570
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/a;Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/a;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->b:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getPlatformMap()Ljava/util/Map;

    move-result-object v0

    .line 128
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 129
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->isSupportAuthorization()Z

    move-result v2

    if-nez v2, :cond_1

    .line 130
    if-eqz v0, :cond_0

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mShowWord:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u4e0d\u652f\u6301\u6388\u6743."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    move v0, v1

    .line 136
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 1

    .prologue
    .line 529
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p1, v0, :cond_1

    .line 533
    :cond_0
    const/4 v0, 0x1

    .line 535
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/a;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/a;->c(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    return v0
.end method

.method private a([Lcom/umeng/socialize/bean/SHARE_MEDIA;)[Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 983
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 984
    :cond_0
    new-array v0, v0, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 1003
    :goto_0
    return-object v0

    .line 987
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 988
    array-length v2, p1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, p1, v0

    .line 989
    invoke-virtual {v3}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->isSupportAuthorization()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 990
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 992
    :cond_2
    iget-object v4, p0, Lcom/umeng/socialize/controller/impl/a;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "does\'t support to Token expires check"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/umeng/socialize/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 997
    :cond_3
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 998
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 999
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->e:Ljava/lang/String;

    const-string v2, "facebook does\'t support to Token expires check"

    invoke-static {v0, v2}, Lcom/umeng/socialize/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 1002
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/socialize/controller/impl/a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/socialize/controller/impl/a;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    return-object p1
.end method

.method private b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 260
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v1, :cond_1

    .line 261
    invoke-static {p1}, Lcom/umeng/socialize/bean/SocializeConfig;->isSupportSinaSSO(Landroid/content/Context;)Z

    move-result v0

    .line 271
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v1, :cond_2

    .line 263
    invoke-static {p1}, Lcom/umeng/socialize/bean/SocializeConfig;->isSupportTencentWBSSO(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 264
    :cond_2
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v1, :cond_4

    .line 265
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->b:Lcom/umeng/socialize/bean/SocializeConfig;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 266
    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getReqCode()I

    move-result v1

    .line 265
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v0

    .line 267
    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/umeng/socialize/sso/UMSsoHandler;->isClientInstalled()Z

    move-result v0

    goto :goto_0

    .line 268
    :cond_4
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v1, :cond_0

    goto :goto_0
.end method

.method private b(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 2

    .prologue
    .line 579
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    .line 581
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->d:Ljava/util/Map;

    .line 582
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->c:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->c:Ljava/util/Map;

    .line 583
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->c:Ljava/util/Map;

    .line 584
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->c:Ljava/util/Map;

    .line 585
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/umeng/socialize/controller/impl/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method private c(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 1

    .prologue
    .line 781
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p1, v0, :cond_1

    .line 784
    :cond_0
    const/4 v0, 0x1

    .line 786
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;)I
    .locals 4

    .prologue
    .line 858
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/UMToken;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 859
    new-instance v0, Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-direct {v0}, Lcom/umeng/socialize/net/base/SocializeClient;-><init>()V

    new-instance v1, Lcom/umeng/socialize/net/f;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2, p2}, Lcom/umeng/socialize/net/f;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/UMToken;)V

    .line 860
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/g;

    .line 862
    if-eqz v0, :cond_1

    .line 863
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/umeng/socialize/net/g;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 864
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const-string v2, "user_id"

    iget-object v3, v0, Lcom/umeng/socialize/net/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/umeng/socialize/bean/SocializeEntity;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const-string v2, "sina_expires_in"

    iget-object v3, v0, Lcom/umeng/socialize/net/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/umeng/socialize/bean/SocializeEntity;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :cond_0
    iget v0, v0, Lcom/umeng/socialize/net/g;->mStCode:I

    .line 874
    :goto_0
    return v0

    .line 871
    :cond_1
    const/16 v0, -0x66

    goto :goto_0

    .line 874
    :cond_2
    const/16 v0, -0x69

    goto :goto_0
.end method

.method public checkTokenExpired(Landroid/content/Context;[Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V
    .locals 2

    .prologue
    .line 944
    invoke-direct {p0, p2}, Lcom/umeng/socialize/controller/impl/a;->a([Lcom/umeng/socialize/bean/SHARE_MEDIA;)[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 946
    new-instance v1, Lcom/umeng/socialize/controller/impl/a$9;

    invoke-direct {v1, p0, p3, p1, v0}, Lcom/umeng/socialize/controller/impl/a$9;-><init>(Lcom/umeng/socialize/controller/impl/a;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;Landroid/content/Context;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 972
    invoke-virtual {v1}, Lcom/umeng/socialize/controller/impl/a$9;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    .line 973
    return-void
.end method

.method public deleteOauth(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 2

    .prologue
    .line 148
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v0, :cond_1

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->b:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 150
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getReqCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_1

    .line 152
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0, v1, p2, p3}, Lcom/umeng/socialize/sso/UMSsoHandler;->deleteAuthorization(Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V

    .line 194
    :goto_0
    return-void

    .line 157
    :cond_1
    new-instance v0, Lcom/umeng/socialize/controller/impl/a$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/umeng/socialize/controller/impl/a$2;-><init>(Lcom/umeng/socialize/controller/impl/a;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 192
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/a$2;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    goto :goto_0
.end method

.method public doOauthVerify(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 6

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 207
    invoke-static {v0, p2}, Lcom/umeng/socialize/utils/SocializeUtils;->platformCheck(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    if-nez p3, :cond_2

    .line 212
    invoke-static {}, Lcom/umeng/socialize/utils/ListenerUtils;->creAuthListener()Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    move-result-object p3

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, p2, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 218
    invoke-direct {p0, v0, p2}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-direct {p0, v0, p2, p3}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    move-result-object v1

    .line 226
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->b:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getReqCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v2

    .line 228
    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/a;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "######## doOauthVerify -->  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    instance-of v3, p1, Landroid/app/Activity;

    if-nez v3, :cond_3

    .line 231
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->e:Ljava/lang/String;

    const-string v1, "\u4f20\u5165\u53c2\u6570\u5fc5\u987b\u4e3aActivity\u5b9e\u4f8b"

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_3
    check-cast p1, Landroid/app/Activity;

    .line 237
    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v3, :cond_4

    if-eqz v2, :cond_4

    .line 239
    invoke-virtual {v2, p1, p3}, Lcom/umeng/socialize/sso/UMSsoHandler;->authorize(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    goto :goto_0

    .line 243
    :cond_4
    if-eqz v2, :cond_5

    invoke-direct {p0, v0, p2}, Lcom/umeng/socialize/controller/impl/a;->b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 244
    invoke-static {p2}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 246
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;Lcom/umeng/socialize/sso/UMSsoHandler;)V

    goto :goto_0

    .line 248
    :cond_5
    invoke-direct {p0, p1, p2, v1}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    goto :goto_0
.end method

.method public getPlatformKeys(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/umeng/socialize/controller/impl/a$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/umeng/socialize/controller/impl/a$1;-><init>(Lcom/umeng/socialize/controller/impl/a;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;Landroid/content/Context;)V

    .line 114
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/a$1;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    .line 115
    return-void
.end method

.method public uploadToken(Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 2

    .prologue
    .line 803
    new-instance v0, Lcom/umeng/socialize/controller/impl/a$7;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/umeng/socialize/controller/impl/a$7;-><init>(Lcom/umeng/socialize/controller/impl/a;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Lcom/umeng/socialize/bean/UMToken;Landroid/content/Context;)V

    .line 826
    new-instance v1, Lcom/umeng/socialize/controller/impl/a$8;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/umeng/socialize/controller/impl/a$8;-><init>(Lcom/umeng/socialize/controller/impl/a;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;)V

    .line 847
    invoke-virtual {v1}, Lcom/umeng/socialize/controller/impl/a$8;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    .line 848
    return-void
.end method
