.class public Lcom/lzx/iteam/util/ShareUtil;
.super Ljava/lang/Object;
.source "ShareUtil.java"


# static fields
.field public static APP_ID:Ljava/lang/String;

.field public static APP_SCREAT:Ljava/lang/String;

.field private static mShareUtil:Lcom/lzx/iteam/util/ShareUtil;


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mController:Lcom/umeng/socialize/controller/UMSocialService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "wx75dd52bb816fcf7c"

    sput-object v0, Lcom/lzx/iteam/util/ShareUtil;->APP_ID:Ljava/lang/String;

    .line 27
    const-string v0, "73528c740917290647270ba183f26560"

    sput-object v0, Lcom/lzx/iteam/util/ShareUtil;->APP_SCREAT:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/lzx/iteam/util/ShareUtil;->mContext:Landroid/app/Activity;

    .line 32
    const-string v0, "com.umeng.share"

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/util/ShareUtil;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    .line 33
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/ShareUtil;
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 36
    const-class v1, Lcom/lzx/iteam/util/ShareUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lzx/iteam/util/ShareUtil;->mShareUtil:Lcom/lzx/iteam/util/ShareUtil;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/lzx/iteam/util/ShareUtil;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/util/ShareUtil;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/lzx/iteam/util/ShareUtil;->mShareUtil:Lcom/lzx/iteam/util/ShareUtil;

    .line 39
    :cond_0
    sget-object v0, Lcom/lzx/iteam/util/ShareUtil;->mShareUtil:Lcom/lzx/iteam/util/ShareUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getmController()Lcom/umeng/socialize/controller/UMSocialService;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/util/ShareUtil;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/util/ShareUtil;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shareToWx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "shareText"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "method"    # I
    .param p5, "shareImage"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x3

    .line 60
    new-instance v1, Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    iget-object v2, p0, Lcom/lzx/iteam/util/ShareUtil;->mContext:Landroid/app/Activity;

    sget-object v3, Lcom/lzx/iteam/util/ShareUtil;->APP_ID:Ljava/lang/String;

    sget-object v4, Lcom/lzx/iteam/util/ShareUtil;->APP_SCREAT:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v1, "wxHandler":Lcom/umeng/socialize/weixin/controller/UMWXHandler;
    invoke-virtual {v1}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->addToSocialSDK()V

    .line 62
    new-instance v0, Lcom/umeng/socialize/weixin/media/WeiXinShareContent;

    invoke-direct {v0}, Lcom/umeng/socialize/weixin/media/WeiXinShareContent;-><init>()V

    .line 63
    .local v0, "weixinContent":Lcom/umeng/socialize/weixin/media/WeiXinShareContent;
    invoke-static {p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    invoke-virtual {v0, p1}, Lcom/umeng/socialize/weixin/media/WeiXinShareContent;->setTitle(Ljava/lang/String;)V

    .line 66
    :cond_0
    if-eqz p2, :cond_3

    .line 67
    invoke-virtual {v0, p2}, Lcom/umeng/socialize/weixin/media/WeiXinShareContent;->setShareContent(Ljava/lang/String;)V

    .line 72
    :goto_0
    if-ne p4, v5, :cond_4

    .line 73
    invoke-virtual {v0, p3}, Lcom/umeng/socialize/weixin/media/WeiXinShareContent;->setTargetUrl(Ljava/lang/String;)V

    .line 77
    :goto_1
    const/4 v2, 0x2

    if-eq p4, v2, :cond_1

    if-ne p4, v5, :cond_2

    .line 78
    :cond_1
    new-instance v2, Lcom/umeng/socialize/media/UMImage;

    iget-object v3, p0, Lcom/lzx/iteam/util/ShareUtil;->mContext:Landroid/app/Activity;

    const v4, 0x7f02032a

    invoke-direct {v2, v3, v4}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/weixin/media/WeiXinShareContent;->setShareImage(Lcom/umeng/socialize/media/UMImage;)V

    .line 80
    :cond_2
    iget-object v2, p0, Lcom/lzx/iteam/util/ShareUtil;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v2, v0}, Lcom/umeng/socialize/controller/UMSocialService;->setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z

    .line 81
    iget-object v2, p0, Lcom/lzx/iteam/util/ShareUtil;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v3, p0, Lcom/lzx/iteam/util/ShareUtil;->mContext:Landroid/app/Activity;

    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v5, Lcom/lzx/iteam/util/ShareUtil$1;

    invoke-direct {v5, p0, p5}, Lcom/lzx/iteam/util/ShareUtil$1;-><init>(Lcom/lzx/iteam/util/ShareUtil;Landroid/graphics/Bitmap;)V

    invoke-interface {v2, v3, v4, v5}, Lcom/umeng/socialize/controller/UMSocialService;->directShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 95
    return-void

    .line 69
    :cond_3
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/weixin/media/WeiXinShareContent;->setShareContent(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_4
    const-string v2, "http://ituandui.cn/download"

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/weixin/media/WeiXinShareContent;->setTargetUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public shareToWxCircle(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "shareText"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "shareImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 104
    new-instance v1, Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    iget-object v2, p0, Lcom/lzx/iteam/util/ShareUtil;->mContext:Landroid/app/Activity;

    sget-object v3, Lcom/lzx/iteam/util/ShareUtil;->APP_ID:Ljava/lang/String;

    sget-object v4, Lcom/lzx/iteam/util/ShareUtil;->APP_SCREAT:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v1, "wxCircleHandler":Lcom/umeng/socialize/weixin/controller/UMWXHandler;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->setToCircle(Z)Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .line 106
    invoke-virtual {v1}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->addToSocialSDK()V

    .line 107
    new-instance v0, Lcom/umeng/socialize/weixin/media/CircleShareContent;

    invoke-direct {v0}, Lcom/umeng/socialize/weixin/media/CircleShareContent;-><init>()V

    .line 108
    .local v0, "circleMedia":Lcom/umeng/socialize/weixin/media/CircleShareContent;
    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {v0, p1}, Lcom/umeng/socialize/weixin/media/CircleShareContent;->setShareContent(Ljava/lang/String;)V

    .line 113
    :goto_0
    invoke-virtual {v0, p1}, Lcom/umeng/socialize/weixin/media/CircleShareContent;->setTitle(Ljava/lang/String;)V

    .line 114
    if-eqz p3, :cond_1

    .line 115
    new-instance v2, Lcom/umeng/socialize/media/UMImage;

    iget-object v3, p0, Lcom/lzx/iteam/util/ShareUtil;->mContext:Landroid/app/Activity;

    invoke-direct {v2, v3, p3}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/weixin/media/CircleShareContent;->setShareImage(Lcom/umeng/socialize/media/UMImage;)V

    .line 119
    :goto_1
    if-eqz p2, :cond_2

    .line 120
    invoke-virtual {v0, p2}, Lcom/umeng/socialize/weixin/media/CircleShareContent;->setTargetUrl(Ljava/lang/String;)V

    .line 124
    :goto_2
    iget-object v2, p0, Lcom/lzx/iteam/util/ShareUtil;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v2, v0}, Lcom/umeng/socialize/controller/UMSocialService;->setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z

    .line 125
    iget-object v2, p0, Lcom/lzx/iteam/util/ShareUtil;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v3, p0, Lcom/lzx/iteam/util/ShareUtil;->mContext:Landroid/app/Activity;

    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    new-instance v5, Lcom/lzx/iteam/util/ShareUtil$2;

    invoke-direct {v5, p0, p3}, Lcom/lzx/iteam/util/ShareUtil$2;-><init>(Lcom/lzx/iteam/util/ShareUtil;Landroid/graphics/Bitmap;)V

    invoke-interface {v2, v3, v4, v5}, Lcom/umeng/socialize/controller/UMSocialService;->directShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 138
    return-void

    .line 111
    :cond_0
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/weixin/media/CircleShareContent;->setShareContent(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_1
    new-instance v2, Lcom/umeng/socialize/media/UMImage;

    iget-object v3, p0, Lcom/lzx/iteam/util/ShareUtil;->mContext:Landroid/app/Activity;

    const v4, 0x7f02032a

    invoke-direct {v2, v3, v4}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/weixin/media/CircleShareContent;->setShareImage(Lcom/umeng/socialize/media/UMImage;)V

    goto :goto_1

    .line 122
    :cond_2
    const-string v2, "http://ituandui.cn/download"

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/weixin/media/CircleShareContent;->setTargetUrl(Ljava/lang/String;)V

    goto :goto_2
.end method
