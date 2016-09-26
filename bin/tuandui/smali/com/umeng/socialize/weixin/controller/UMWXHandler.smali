.class public Lcom/umeng/socialize/weixin/controller/UMWXHandler;
.super Lcom/umeng/socialize/sso/UMSsoHandler;
.source "UMWXHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_TITLE:Ljava/lang/String; = "\u5206\u4eab\u5230"

.field private static final TYPE_EMOJI:Ljava/lang/String; = "emoji"

.field private static final TYPE_IMAGE:Ljava/lang/String; = "image"

.field private static final TYPE_MUSIC:Ljava/lang/String; = "music"

.field private static final TYPE_TEXT:Ljava/lang/String; = "text"

.field private static final TYPE_TEXT_IMAGE:Ljava/lang/String; = "text_image"

.field private static final TYPE_VIDEO:Ljava/lang/String; = "video"

.field private static mEntity:Lcom/umeng/socialize/bean/SocializeEntity;


# instance fields
.field private final DESCRIPTION_LIMIT:I

.field private final REFRESH_TOKEN_EXPIRES:I

.field private final SHOW_COMPRESS_TOAST:I

.field private final SHOW_TITLE_TOAST:I

.field private final TAG:Ljava/lang/String;

.field private final THUMB_LIMIT:I

.field private final THUMB_SIZE:I

.field private final TITLE_LIMIT:I

.field private WXCIRCLE_DEFAULT_ICON:I

.field private WX_APPID:Ljava/lang/String;

.field private WX_DEFAULT_ICON:I

.field private WX_SECRET:Ljava/lang/String;

.field private final handler:Landroid/os/Handler;

.field private isFromAuth:Z

.field private isShowCompressToast:Z

.field private isToCircle:Z

.field private isWXSceneFavorite:Z

.field private mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

.field private mEventHandler:Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

.field private mRefreshTokenAvailable:Z

.field private mReportDesc:Ljava/lang/String;

.field private mShareType:Ljava/lang/String;

.field private mWXApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field private mWxMediaMessage:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "UMWXHandler"

    const-string v1, "\u4e3a\u4e86\u4fdd\u8bc1\u5fae\u4fe1\u6388\u6743\u6b63\u5e38\uff0c\u8bf7\u4f20\u9012\u5e94\u7528\u7684secret"

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appid"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Lcom/umeng/socialize/sso/UMSsoHandler;-><init>()V

    .line 91
    const/16 v0, 0x96

    iput v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->THUMB_SIZE:I

    .line 92
    const v0, 0x8000

    iput v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->THUMB_LIMIT:I

    .line 93
    const/16 v0, 0x200

    iput v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->TITLE_LIMIT:I

    .line 94
    const/16 v0, 0x400

    iput v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->DESCRIPTION_LIMIT:I

    .line 95
    const v0, 0x93a80

    iput v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->REFRESH_TOKEN_EXPIRES:I

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_SECRET:Ljava/lang/String;

    .line 98
    iput v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_DEFAULT_ICON:I

    .line 99
    iput v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WXCIRCLE_DEFAULT_ICON:I

    .line 102
    iput-boolean v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isToCircle:Z

    .line 103
    iput-boolean v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mRefreshTokenAvailable:Z

    .line 108
    const-string v0, "UMWXHandler"

    iput-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->TAG:Ljava/lang/String;

    .line 117
    iput v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->SHOW_COMPRESS_TOAST:I

    .line 118
    const/4 v0, 0x2

    iput v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->SHOW_TITLE_TOAST:I

    .line 120
    iput-boolean v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isShowCompressToast:Z

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mReportDesc:Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mWxMediaMessage:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .line 124
    iput-boolean v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isFromAuth:Z

    .line 130
    iput-boolean v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isWXSceneFavorite:Z

    .line 632
    new-instance v0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$2;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler$2;-><init>(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)V

    iput-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->handler:Landroid/os/Handler;

    .line 797
    new-instance v0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$3;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler$3;-><init>(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)V

    iput-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mEventHandler:Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_APPID:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_APPID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the weixin appid is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_APPID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mWXApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 158
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mWXApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    iget-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_APPID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 160
    iput-object p3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_SECRET:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mExtraData:Ljava/util/Map;

    const-string v1, "wx_appid"

    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_APPID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_SECRET:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_SECRET:Ljava/lang/String;

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mExtraData:Ljava/util/Map;

    const-string v1, "wx_secret"

    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_SECRET:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_DEFAULT_ICON:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WXCIRCLE_DEFAULT_ICON:I

    if-nez v0, :cond_3

    .line 169
    :cond_2
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_wechat"

    invoke-static {p1, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_DEFAULT_ICON:I

    .line 171
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_wxcircle"

    invoke-static {p1, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WXCIRCLE_DEFAULT_ICON:I

    .line 175
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->buildEmojiParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1002(Lcom/umeng/socialize/weixin/controller/UMWXHandler;Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 0
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;
    .param p1, "x1"    # Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mWxMediaMessage:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/umeng/socialize/weixin/controller/UMWXHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mReportDesc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200()Lcom/umeng/socialize/bean/SocializeEntity;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_APPID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_SECRET:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->buildImageParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isShowCompressToast:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isFromAuth:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/umeng/socialize/weixin/controller/UMWXHandler;Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 0
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;
    .param p1, "x1"    # Lcom/tencent/mm/sdk/modelbase/BaseResp;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->dealOAuth(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Lcom/umeng/socialize/bean/SocializeConfig;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->buildMusicParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isToCircle:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/umeng/socialize/weixin/controller/UMWXHandler;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->parseAuthData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/umeng/socialize/weixin/controller/UMWXHandler;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->parseUserInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->buildTextParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->buildTextImageParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->buildVideoParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/umeng/socialize/weixin/controller/UMWXHandler;[BI)[B
    .locals 1
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->compressBitmap([BI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Lcom/umeng/socialize/weixin/controller/UMWXHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method private buildEmojiParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 8

    .prologue
    const/16 v7, 0x96

    .line 253
    iget-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v1, Lcom/umeng/socialize/media/UMEmoji;

    .line 254
    .local v1, "emoji":Lcom/umeng/socialize/media/UMEmoji;
    iget-object v2, v1, Lcom/umeng/socialize/media/UMEmoji;->mSrcImage:Lcom/umeng/socialize/media/UMImage;

    .line 255
    .local v2, "image":Lcom/umeng/socialize/media/UMImage;
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;

    invoke-direct {v5}, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;-><init>()V

    .line 257
    .local v5, "wxEmojiObject":Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;
    iget-object v6, v1, Lcom/umeng/socialize/media/UMEmoji;->mSrcImage:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v6}, Lcom/umeng/socialize/media/UMImage;->isUrlMedia()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 258
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/umeng/socialize/utils/BitmapUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 259
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 261
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7, v7}, Lcom/umeng/socialize/utils/BitmapUtils;->loadImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 264
    :cond_0
    iput-object v4, v5, Lcom/tencent/mm/sdk/modelmsg/WXEmojiObject;->emojiPath:Ljava/lang/String;

    .line 265
    new-instance v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v3}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>()V

    .line 266
    .local v3, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iput-object v5, v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 268
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMEmoji;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 269
    iget-object v6, v1, Lcom/umeng/socialize/media/UMEmoji;->mThumb:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v6}, Lcom/umeng/socialize/media/UMImage;->toByte()[B

    move-result-object v6

    iput-object v6, v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 278
    :goto_0
    iget-object v6, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mTitle:Ljava/lang/String;

    iput-object v6, v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 279
    iget-object v6, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareContent:Ljava/lang/String;

    iput-object v6, v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 280
    return-object v3

    .line 270
    :cond_1
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMEmoji;->getThumb()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 271
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMEmoji;->getThumb()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7, v7}, Lcom/umeng/socialize/utils/BitmapUtils;->loadImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 272
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/umeng/socialize/utils/BitmapUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    iput-object v6, v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 273
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 276
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v6, v1, Lcom/umeng/socialize/media/UMEmoji;->mSrcImage:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v6}, Lcom/umeng/socialize/media/UMImage;->toByte()[B

    move-result-object v6

    iput-object v6, v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    goto :goto_0
.end method

.method private buildImageParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 4

    .prologue
    .line 328
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {p0, v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->parseImage(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 330
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;-><init>()V

    .line 331
    .local v0, "imgObj":Lcom/tencent/mm/sdk/modelmsg/WXImageObject;
    invoke-direct {p0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->buildMediaMessage()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v1

    .line 333
    .local v1, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mExtraData:Ljava/util/Map;

    const-string v3, "image_path_local"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 334
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mExtraData:Ljava/util/Map;

    const-string v3, "image_path_local"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imagePath:Ljava/lang/String;

    .line 338
    :goto_0
    iput-object v0, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 339
    return-object v1

    .line 336
    :cond_0
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mExtraData:Ljava/util/Map;

    const-string v3, "image_path_url"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/WXImageObject;->imageUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private buildMediaMessage()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 7

    .prologue
    const/16 v6, 0x96

    .line 388
    iget-object v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mExtraData:Ljava/util/Map;

    const-string v5, "image_path_local"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 389
    .local v0, "localPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mExtraData:Ljava/util/Map;

    const-string v5, "image_path_url"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 390
    .local v3, "urlPath":Ljava/lang/String;
    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>()V

    .line 391
    .local v1, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 392
    invoke-static {v3, v6, v6}, Lcom/umeng/socialize/utils/BitmapUtils;->loadImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/socialize/utils/BitmapUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    iput-object v4, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 402
    :cond_0
    :goto_0
    return-object v1

    .line 394
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 395
    invoke-direct {p0, v0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->getThumbFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 396
    .local v2, "thumb":Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/umeng/socialize/utils/BitmapUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    iput-object v4, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 398
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 399
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private buildMusicParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 5

    .prologue
    .line 290
    iget-object v3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {p0, v3}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->parseMusic(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 291
    iget-object v3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mExtraData:Ljava/util/Map;

    const-string v4, "audio_url"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 293
    .local v2, "musicUrl":Ljava/lang/String;
    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;-><init>()V

    .line 294
    .local v1, "music":Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;
    iget-object v3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mTargetUrl:Ljava/lang/String;

    iput-object v3, v1, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;->musicUrl:Ljava/lang/String;

    .line 295
    iput-object v2, v1, Lcom/tencent/mm/sdk/modelmsg/WXMusicObject;->musicDataUrl:Ljava/lang/String;

    .line 296
    invoke-direct {p0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->buildMediaMessage()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v0

    .line 297
    .local v0, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 298
    iget-object v3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mTitle:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 299
    iget-object v3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareContent:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 300
    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 302
    return-object v0
.end method

.method private buildTextImageParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 3

    .prologue
    .line 368
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {p0, v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->parseImage(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 370
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mTargetUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    const-string v2, "http://www.umeng.com/social"

    iput-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mTargetUrl:Ljava/lang/String;

    .line 373
    :cond_0
    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;-><init>()V

    .line 374
    .local v1, "webpage":Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mTargetUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 375
    invoke-direct {p0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->buildMediaMessage()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v0

    .line 376
    .local v0, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mTitle:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 377
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareContent:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 378
    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 379
    return-object v0
.end method

.method private buildTextParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 3

    .prologue
    .line 311
    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/WXTextObject;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelmsg/WXTextObject;-><init>()V

    .line 312
    .local v1, "textObj":Lcom/tencent/mm/sdk/modelmsg/WXTextObject;
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareContent:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelmsg/WXTextObject;->text:Ljava/lang/String;

    .line 314
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>()V

    .line 315
    .local v0, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 316
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareContent:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 317
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mTitle:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 318
    return-object v0
.end method

.method private buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 921
    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 922
    :goto_0
    return-object v0

    .line 921
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 922
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private buildVideoParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 5

    .prologue
    .line 349
    iget-object v3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {p0, v3}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->parseVideo(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 350
    iget-object v3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mExtraData:Ljava/util/Map;

    const-string v4, "audio_url"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 352
    .local v2, "videoUrl":Ljava/lang/String;
    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;-><init>()V

    .line 353
    .local v1, "video":Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;
    iput-object v2, v1, Lcom/tencent/mm/sdk/modelmsg/WXVideoObject;->videoUrl:Ljava/lang/String;

    .line 354
    invoke-direct {p0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->buildMediaMessage()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v0

    .line 355
    .local v0, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 356
    iget-object v3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mTitle:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 357
    iget-object v3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareContent:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 358
    return-object v0
.end method

.method private compressBitmap([BI)[B
    .locals 12
    .param p1, "datas"    # [B
    .param p2, "byteCount"    # I

    .prologue
    .line 433
    const/4 v1, 0x0

    .line 434
    .local v1, "isFinish":Z
    if-eqz p1, :cond_4

    array-length v8, p1

    if-lt v8, p2, :cond_4

    .line 435
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 437
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    array-length v9, p1

    invoke-static {p1, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 439
    .local v7, "tmpBitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x1

    .line 441
    .local v6, "times":I
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 443
    .local v4, "percentage":D
    :goto_0
    if-nez v1, :cond_1

    const/16 v8, 0xa

    if-gt v6, v8, :cond_1

    .line 444
    const-wide v8, 0x3fe999999999999aL    # 0.8

    int-to-double v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 445
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v4

    double-to-int v3, v8

    .line 446
    .local v3, "quality":I
    const-string v8, "UMWXHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "quality = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v7, v8, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 448
    const-string v8, "UMWXHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WeiXin Thumb Size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 449
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    array-length v10, v10

    div-int/lit16 v10, v10, 0x400

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 448
    invoke-static {v8, v9}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    if-ge v8, p2, :cond_0

    .line 451
    const/4 v1, 0x1

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 454
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 458
    .end local v3    # "quality":I
    :cond_1
    if-eqz v2, :cond_4

    .line 459
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 460
    .local v0, "compress_datas":[B
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 461
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 464
    :cond_2
    if-eqz v0, :cond_3

    array-length v8, v0

    if-gtz v8, :cond_3

    .line 465
    const-string v8, "UMWXHandler"

    const-string v9, "### \u60a8\u7684\u539f\u59cb\u56fe\u7247\u592a\u5927,\u5bfc\u81f4\u7f29\u7565\u56fe\u538b\u7f29\u8fc7\u540e\u8fd8\u5927\u4e8e32KB,\u8bf7\u5c06\u5206\u4eab\u5230\u5fae\u4fe1\u7684\u56fe\u7247\u8fdb\u884c\u9002\u5f53\u7f29\u5c0f."

    invoke-static {v8, v9}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .end local v0    # "compress_datas":[B
    .end local v2    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "percentage":D
    .end local v6    # "times":I
    .end local v7    # "tmpBitmap":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    return-object v0

    :cond_4
    move-object v0, p1

    goto :goto_1
.end method

.method private dealOAuth(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 7
    .param p1, "resp"    # Lcom/tencent/mm/sdk/modelbase/BaseResp;

    .prologue
    .line 862
    iget v3, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    if-eqz v3, :cond_3

    .line 864
    iget v3, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    .line 865
    iget-object v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    iget-boolean v3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isToCircle:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    :goto_0
    invoke-interface {v4, v3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 883
    :goto_1
    return-void

    .line 865
    :cond_0
    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    goto :goto_0

    .line 868
    :cond_1
    iget-object v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    new-instance v5, Lcom/umeng/socialize/exception/SocializeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aouth error! error code :"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/umeng/socialize/exception/SocializeException;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isToCircle:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    :goto_2
    invoke-interface {v4, v5, v3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    goto :goto_2

    :cond_3
    move-object v1, p1

    .line 876
    check-cast v1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;

    .line 877
    .local v1, "sendResp":Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;
    iget-object v0, v1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    .line 879
    .local v0, "code":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://api.weixin.qq.com/sns/oauth2/access_token?appid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_APPID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&secret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_SECRET:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&grant_type=authorization_code"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 882
    .local v2, "url":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->loadOauthData(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getThumbFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "imgPath"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x96

    .line 412
    const/4 v0, 0x0

    .line 414
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/umeng/socialize/utils/BitmapUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    const v1, 0x8000

    invoke-static {p1, v1}, Lcom/umeng/socialize/utils/BitmapUtils;->isNeedScale(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    invoke-static {p1, v2, v2}, Lcom/umeng/socialize/utils/BitmapUtils;->getBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 422
    :cond_0
    :goto_0
    return-object v0

    .line 419
    :cond_1
    invoke-static {p1}, Lcom/umeng/socialize/utils/BitmapUtils;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private isBlackList(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 779
    iget-boolean v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isToCircle:Z

    if-nez v4, :cond_1

    .line 791
    :cond_0
    :goto_0
    return v3

    .line 783
    :cond_1
    const-string v1, "com.tencent.mm"

    .line 784
    .local v1, "packageName":Ljava/lang/String;
    const-string v0, "6.0.2.56"

    .line 785
    .local v0, "errorWechatVersion":Ljava/lang/String;
    const-string v4, "com.tencent.mm"

    invoke-static {v4, p1}, Lcom/umeng/socialize/utils/DeviceConfig;->getAppVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 787
    .local v2, "versionCode":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 788
    const-string v3, "6.0.2.56"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method private loadOauthData(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 985
    new-instance v0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$4;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/weixin/controller/UMWXHandler$4;-><init>(Lcom/umeng/socialize/weixin/controller/UMWXHandler;Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler$4;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    .line 1002
    return-void
.end method

.method private parseAuthData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 1011
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1012
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1030
    :goto_0
    return-object v0

    .line 1016
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1018
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 1019
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v4, ""

    .line 1020
    .local v4, "key":Ljava/lang/String;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1021
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "key":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 1022
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1027
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1028
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1024
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "key":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v5, "uid"

    const-string v6, "openid"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const-string v5, "refresh_token_expires"

    const-wide/32 v6, 0x93a80

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private parseMediaType()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-nez v0, :cond_1

    .line 226
    const-string v0, "text"

    iput-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareType:Ljava/lang/String;

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMEmoji;

    if-eqz v0, :cond_2

    .line 229
    const-string v0, "emoji"

    iput-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareType:Ljava/lang/String;

    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_3

    .line 233
    const-string v0, "image"

    iput-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareType:Ljava/lang/String;

    goto :goto_0

    .line 234
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMusic;

    if-eqz v0, :cond_4

    .line 236
    const-string v0, "music"

    iput-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareType:Ljava/lang/String;

    goto :goto_0

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMVideo;

    if-eqz v0, :cond_5

    .line 239
    const-string v0, "video"

    iput-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareType:Ljava/lang/String;

    goto :goto_0

    .line 240
    :cond_5
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "text_image"

    iput-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareType:Ljava/lang/String;

    goto :goto_0
.end method

.method private parseUserInfo(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1112
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1114
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1115
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "errcode"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    .line 1116
    .local v1, "error":Z
    if-eqz v1, :cond_1

    .line 1117
    const-string v8, "UMWXHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    const-string v8, "errcode"

    const-string v9, "errcode"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    .end local v1    # "error":Z
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-object v6

    .line 1121
    .restart local v1    # "error":Z
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const-string v8, "openid"

    const-string v9, "openid"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    const-string v8, "nickname"

    const-string v9, "nickname"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    const-string v8, "language"

    const-string v9, "language"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    const-string v8, "city"

    const-string v9, "city"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    const-string v8, "province"

    const-string v9, "province"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    const-string v8, "country"

    const-string v9, "country"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    const-string v8, "headimgurl"

    const-string v9, "headimgurl"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    const-string v8, "unionid"

    const-string v9, "unionid"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    const-string v8, "sex"

    const-string v9, "sex"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    const-string v8, "privilege"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1131
    .local v3, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 1132
    .local v5, "len":I
    if-lez v5, :cond_0

    .line 1133
    new-array v7, v5, [Ljava/lang/String;

    .line 1134
    .local v7, "privileges":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 1135
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 1134
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1137
    :cond_2
    const-string v8, "privilege"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1139
    .end local v1    # "error":Z
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "len":I
    .end local v7    # "privileges":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1140
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1141
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private setSelectedPlatform()V
    .locals 1

    .prologue
    .line 898
    iget-boolean v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isToCircle:Z

    if-nez v0, :cond_0

    .line 899
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 903
    :goto_0
    return-void

    .line 901
    :cond_0
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0
.end method

.method private showDialog()V
    .locals 4

    .prologue
    .line 703
    iget-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    const-string v2, "\u5206\u4eab\u5931\u8d25\uff0c\u8be6\u60c5\u89c1Logcat"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 707
    .local v0, "log":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isToCircle:Z

    if-eqz v1, :cond_0

    .line 708
    const-string v1, "\u8bf7\u6dfb\u52a0\u670b\u53cb\u5708\u5e73\u53f0\u5230SDK \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    const-string v1, "\u6dfb\u52a0\u65b9\u5f0f\uff1a\nUMWXHandler wxCircleHandler = new UMWXHandler(getActivity(),\"\u4f60\u7684AppID\",\"\u4f60\u7684AppSecret\");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    const-string v1, "wxCircleHandler.setToCircle(true);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    const-string v1, "wxCircleHandler.addToSocialSDK();\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    const-string v1, "\u53c2\u8003\u6587\u6863\uff1a\nhttp://dev.umeng.com/social/android/share/quick-integration#social_weixin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    :goto_0
    const-string v1, "UMWXHandler"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    return-void

    .line 714
    :cond_0
    const-string v1, "\u8bf7\u6dfb\u52a0\u5fae\u4fe1\u5e73\u53f0\u5230SDK \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    const-string v1, "\u6dfb\u52a0\u65b9\u5f0f\uff1a\nUMWXHandler wxHandler = new UMWXHandler(getActivity(),\"\u4f60\u7684AppID\",\"\u4f60\u7684AppSecret\");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    const-string v1, "wxHandler.addToSocialSDK();\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    const-string v1, "\u53c2\u8003\u6587\u6863\uff1a\nhttp://dev.umeng.com/social/android/share/quick-integration#social_weixin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private simplePaseData()V
    .locals 2

    .prologue
    .line 210
    iget-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v1, v1, Lcom/umeng/socialize/media/BaseShareContent;

    if-eqz v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v0, Lcom/umeng/socialize/media/BaseShareContent;

    .line 212
    .local v0, "baseShareContent":Lcom/umeng/socialize/media/BaseShareContent;
    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getShareContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareContent:Ljava/lang/String;

    .line 213
    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getShareMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 214
    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getTargetUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mTargetUrl:Ljava/lang/String;

    .line 215
    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mTitle:Ljava/lang/String;

    .line 217
    .end local v0    # "baseShareContent":Lcom/umeng/socialize/media/BaseShareContent;
    :cond_0
    return-void
.end method


# virtual methods
.method public authorize(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .prologue
    .line 938
    iget-object v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_APPID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_SECRET:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 939
    :cond_0
    const-string v4, "UMWXHandler"

    const-string v5, "Appid\u6216\u8005App secret\u4e3a\u7a7a\uff0c\u4e0d\u80fd\u6388\u6743\u3002\u8bf7\u8bbe\u7f6e\u6b63\u786e\u5730Appid\u8ddfApp Secret"

    invoke-static {v4, v5}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    :goto_0
    return-void

    .line 942
    :cond_1
    iput-object p2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 943
    iget-object v5, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    iget-boolean v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isToCircle:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    :goto_1
    invoke-interface {v5, v4}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 945
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isFromAuth:Z

    .line 946
    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {p1, v4}, Lcom/umeng/socialize/utils/OauthHelper;->isRefreshTokenNotExpired(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    .line 948
    .local v0, "isNotExpired":Z
    if-nez v0, :cond_2

    .line 949
    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {p1, v4}, Lcom/umeng/socialize/utils/OauthHelper;->isRefreshTokenNotExpired(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    .line 953
    :cond_2
    if-eqz v0, :cond_5

    iget-boolean v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mRefreshTokenAvailable:Z

    if-eqz v4, :cond_5

    .line 954
    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {p1, v4}, Lcom/umeng/socialize/utils/OauthHelper;->getRefreshToken(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v1

    .line 956
    .local v1, "refreshToken":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 957
    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {p1, v4}, Lcom/umeng/socialize/utils/OauthHelper;->getRefreshToken(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v1

    .line 960
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://api.weixin.qq.com/sns/oauth2/refresh_token?appid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_APPID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&grant_type=refresh_token&refresh_token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 964
    .local v3, "url":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->loadOauthData(Ljava/lang/String;)V

    goto :goto_0

    .line 943
    .end local v0    # "isNotExpired":Z
    .end local v1    # "refreshToken":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    goto :goto_1

    .line 967
    .restart local v0    # "isNotExpired":Z
    :cond_5
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;-><init>()V

    .line 968
    .local v2, "req":Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;
    const-string v4, "snsapi_userinfo,snsapi_friend,snsapi_message"

    iput-object v4, v2, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    .line 969
    const-string v4, "none"

    iput-object v4, v2, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;

    .line 970
    iget-object v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mWXApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v4, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    goto :goto_0
.end method

.method public authorizeCallBack(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 977
    return-void
.end method

.method public final createNewPlatform()Lcom/umeng/socialize/bean/CustomPlatform;
    .locals 7

    .prologue
    .line 182
    iget-boolean v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isToCircle:Z

    if-eqz v4, :cond_0

    iget v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WXCIRCLE_DEFAULT_ICON:I

    .line 183
    .local v1, "icon":I
    :goto_0
    iget-boolean v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isToCircle:Z

    if-eqz v4, :cond_1

    const-string v2, "weixin_circle"

    .line 184
    .local v2, "keyWord":Ljava/lang/String;
    :goto_1
    iget-boolean v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isToCircle:Z

    if-eqz v4, :cond_2

    const-string v3, "\u670b\u53cb\u5708"

    .line 185
    .local v3, "showWord":Ljava/lang/String;
    :goto_2
    new-instance v4, Lcom/umeng/socialize/bean/CustomPlatform;

    invoke-direct {v4, v2, v3, v1}, Lcom/umeng/socialize/bean/CustomPlatform;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mCustomPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "grayIcon":I
    iget-boolean v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isToCircle:Z

    if-eqz v4, :cond_3

    .line 188
    iget-object v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v6, "umeng_socialize_wxcircle_gray"

    invoke-static {v4, v5, v6}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 192
    :goto_3
    iget-object v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mCustomPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    iput v0, v4, Lcom/umeng/socialize/bean/CustomPlatform;->mGrayIcon:I

    .line 193
    iget-object v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mCustomPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    new-instance v5, Lcom/umeng/socialize/weixin/controller/UMWXHandler$1;

    invoke-direct {v5, p0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler$1;-><init>(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)V

    iput-object v5, v4, Lcom/umeng/socialize/bean/CustomPlatform;->mClickListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnSnsPlatformClickListener;

    .line 202
    iget-object v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mCustomPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    return-object v4

    .line 182
    .end local v0    # "grayIcon":I
    .end local v1    # "icon":I
    .end local v2    # "keyWord":Ljava/lang/String;
    .end local v3    # "showWord":Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_DEFAULT_ICON:I

    goto :goto_0

    .line 183
    .restart local v1    # "icon":I
    :cond_1
    const-string v2, "weixin"

    goto :goto_1

    .line 184
    .restart local v2    # "keyWord":Ljava/lang/String;
    :cond_2
    const-string v3, "\u5fae\u4fe1"

    goto :goto_2

    .line 190
    .restart local v0    # "grayIcon":I
    .restart local v3    # "showWord":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v6, "umeng_socialize_wechat_gray"

    invoke-static {v4, v5, v6}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method public deleteAuthorization(Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 1
    .param p1, "entity"    # Lcom/umeng/socialize/bean/SocializeEntity;
    .param p2, "platform"    # Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .param p3, "listener"    # Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/umeng/socialize/utils/OauthHelper;->remove(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 1159
    if-eqz p3, :cond_0

    .line 1160
    invoke-interface {p3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;->onStart()V

    .line 1161
    const/16 v0, 0xc8

    invoke-interface {p3, v0, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;->onComplete(ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 1163
    :cond_0
    return-void
.end method

.method public getRequstCode()I
    .locals 1

    .prologue
    .line 932
    iget-boolean v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isToCircle:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2765

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2766

    goto :goto_0
.end method

.method public getUserInfo(Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    .prologue
    const/4 v5, 0x0

    .line 1060
    iget-object v3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v3, v4}, Lcom/umeng/socialize/utils/OauthHelper;->getUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v2

    .line 1061
    .local v2, "uid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1062
    iget-object v3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v3, v4}, Lcom/umeng/socialize/utils/OauthHelper;->getUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v2

    .line 1065
    :cond_0
    iget-object v3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v3, v4}, Lcom/umeng/socialize/utils/OauthHelper;->getAccessToken(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v5

    .line 1067
    .local v0, "accessToken":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1068
    iget-object v3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v3, v4}, Lcom/umeng/socialize/utils/OauthHelper;->getAccessToken(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v5

    .line 1071
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1072
    :cond_2
    const-string v3, "UMWXHandler"

    const-string v4, "please check had authed..."

    invoke-static {v3, v4}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    const v3, 0x9c42

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onComplete(ILjava/util/Map;)V

    .line 1102
    :goto_0
    return-void

    .line 1076
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1077
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v3, "https://api.weixin.qq.com/sns/userinfo?access_token="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&openid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/socialize/bean/SocializeConfig;->getWechatUserInfoLanguage()Lcom/umeng/socialize/bean/Language;

    move-result-object v3

    sget-object v4, Lcom/umeng/socialize/bean/Language;->ZH:Lcom/umeng/socialize/bean/Language;

    if-ne v3, v4, :cond_4

    .line 1080
    const-string v3, "&lang=zh_CN"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    :cond_4
    new-instance v3, Lcom/umeng/socialize/weixin/controller/UMWXHandler$5;

    invoke-direct {v3, p0, v1, p1}, Lcom/umeng/socialize/weixin/controller/UMWXHandler$5;-><init>(Lcom/umeng/socialize/weixin/controller/UMWXHandler;Ljava/lang/StringBuilder;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V

    .line 1101
    invoke-virtual {v3}, Lcom/umeng/socialize/weixin/controller/UMWXHandler$5;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    goto :goto_0
.end method

.method public getWXApi()Lcom/tencent/mm/sdk/openapi/IWXAPI;
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mWXApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    return-object v0
.end method

.method public getWXEventHandler()Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mEventHandler:Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

    return-object v0
.end method

.method protected handleOnClick(Landroid/content/Context;Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customPlatform"    # Lcom/umeng/socialize/bean/CustomPlatform;
    .param p3, "entity"    # Lcom/umeng/socialize/bean/SocializeEntity;
    .param p4, "listener"    # Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .prologue
    const/4 v3, 0x0

    .line 657
    const-string v1, "deault_id"

    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_APPID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 658
    invoke-direct {p0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->showDialog()V

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    if-eqz p3, :cond_2

    .line 662
    sput-object p3, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 664
    invoke-direct {p0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->setSelectedPlatform()V

    .line 665
    invoke-virtual {p3}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v0

    .line 666
    .local v0, "shareMsg":Lcom/umeng/socialize/bean/UMShareMsg;
    if-eqz v0, :cond_3

    sget-object v1, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareType()Lcom/umeng/socialize/bean/ShareType;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/bean/ShareType;->SHAKE:Lcom/umeng/socialize/bean/ShareType;

    if-ne v1, v2, :cond_3

    .line 667
    iget-object v1, v0, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    iput-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareContent:Ljava/lang/String;

    .line 668
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 675
    .end local v0    # "shareMsg":Lcom/umeng/socialize/bean/UMShareMsg;
    :cond_2
    :goto_1
    sget-object v1, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    sget-object v2, Lcom/umeng/socialize/bean/ShareType;->NORMAL:Lcom/umeng/socialize/bean/ShareType;

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->setShareType(Lcom/umeng/socialize/bean/ShareType;)V

    .line 676
    iget-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v1, p4}, Lcom/umeng/socialize/bean/SocializeConfig;->registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    .line 678
    invoke-virtual {p0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isClientInstalled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 679
    iget-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    const-string v2, "\u4f60\u8fd8\u6ca1\u6709\u5b89\u88c5\u5fae\u4fe1"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 670
    .restart local v0    # "shareMsg":Lcom/umeng/socialize/bean/UMShareMsg;
    :cond_3
    invoke-virtual {p3}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareContent:Ljava/lang/String;

    .line 671
    invoke-virtual {p3}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    goto :goto_1

    .line 681
    .end local v0    # "shareMsg":Lcom/umeng/socialize/bean/UMShareMsg;
    :cond_4
    iget-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mWXApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v1

    if-nez v1, :cond_5

    .line 682
    iget-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    const-string v2, "\u4f60\u5b89\u88c5\u7684\u5fae\u4fe1\u7248\u672c\u4e0d\u652f\u6301\u5f53\u524dAPI"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 686
    :cond_5
    iget-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 687
    :cond_6
    invoke-direct {p0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->simplePaseData()V

    .line 688
    invoke-direct {p0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->parseMediaType()V

    .line 690
    iget-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareType:Ljava/lang/String;

    const-string v2, "emoji"

    if-ne v1, v2, :cond_7

    iget-boolean v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isToCircle:Z

    if-eqz v1, :cond_7

    .line 691
    iget-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    const-string v2, "\u5fae\u4fe1\u670b\u53cb\u5708\u4e0d\u652f\u6301\u8868\u60c5\u5206\u4eab..."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 694
    :cond_7
    iget-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 695
    new-instance v1, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;-><init>(Lcom/umeng/socialize/weixin/controller/UMWXHandler;Landroid/content/Context;Lcom/umeng/socialize/weixin/controller/UMWXHandler$1;)V

    invoke-virtual {v1}, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    goto/16 :goto_0

    .line 698
    :cond_8
    iget-object v1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    const-string v2, "\u8bf7\u8bbe\u7f6e\u5206\u4eab\u5185\u5bb9..."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method protected handleOnClick(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 0
    .param p1, "customPlatform"    # Lcom/umeng/socialize/bean/CustomPlatform;
    .param p2, "entity"    # Lcom/umeng/socialize/bean/SocializeEntity;
    .param p3, "listener"    # Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .prologue
    .line 647
    return-void
.end method

.method protected haveCallback(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 594
    iget-object v3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 595
    const/4 v2, 0x0

    .line 608
    :goto_0
    return v2

    .line 597
    :cond_0
    const/4 v2, 0x1

    .line 598
    .local v2, "haveCallback":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".wxapi.WXEntryActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "callbackClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 602
    const-string v3, "UMWXHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### \u5fae\u4fe1\u6216\u5fae\u4fe1\u670b\u53cb\u5708\u56de\u8c03\u7c7b\u5730\u5740 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 603
    :catch_0
    move-exception v1

    .line 604
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    .line 605
    const-string v3, "UMWXHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u7c7b\u6ca1\u6709\u627e\u5230. \u8bf7\u628aweixin\u6587\u4ef6\u5939\u4e2d\u7684wxapi\u76ee\u5f55\u62f7\u8d1d\u5230\u60a8\u7684\u5305\u76ee\u5f55\u4e0b."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isClientInstalled()Z
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mWXApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    return v0
.end method

.method protected sendReport(Z)V
    .locals 7
    .param p1, "result"    # Z

    .prologue
    .line 749
    const/16 v1, 0x13a5

    .line 751
    .local v1, "statusCode":I
    iget-boolean v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isToCircle:Z

    if-eqz v2, :cond_3

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 752
    .local v0, "platform":Lcom/umeng/socialize/bean/SHARE_MEDIA;
    :goto_0
    if-eqz p1, :cond_0

    .line 754
    :try_start_0
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    const/16 v3, 0x11

    invoke-static {v2, v0, v3}, Lcom/umeng/socialize/utils/StatisticsDataUtils;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    :goto_1
    const/16 v1, 0xc8

    .line 761
    :cond_0
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->haveCallback(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isBlackList(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 764
    :cond_1
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v3, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    sget-object v4, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 766
    if-eqz p1, :cond_2

    sget-object v2, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    if-eqz v2, :cond_2

    .line 767
    iget-object v3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v4, v2, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    iget-object v5, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mReportDesc:Ljava/lang/String;

    iget-object v6, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    iget-boolean v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isToCircle:Z

    if-eqz v2, :cond_4

    const-string v2, "wxtimeline"

    :goto_2
    invoke-static {v3, v4, v5, v6, v2}, Lcom/umeng/socialize/utils/SocializeUtils;->sendAnalytic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)V

    .line 770
    :cond_2
    return-void

    .line 751
    .end local v0    # "platform":Lcom/umeng/socialize/bean/SHARE_MEDIA;
    :cond_3
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    goto :goto_0

    .line 767
    .restart local v0    # "platform":Lcom/umeng/socialize/bean/SHARE_MEDIA;
    :cond_4
    const-string v2, "wxsession"

    goto :goto_2

    .line 755
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public setRefreshTokenAvailable(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 1039
    iput-boolean p1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mRefreshTokenAvailable:Z

    .line 1040
    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "secret"    # Ljava/lang/String;

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_SECRET:Ljava/lang/String;

    .line 1049
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mTitle:Ljava/lang/String;

    .line 618
    return-void
.end method

.method public setToCircle(Z)Lcom/umeng/socialize/weixin/controller/UMWXHandler;
    .locals 0
    .param p1, "toCircle"    # Z

    .prologue
    .line 926
    iput-boolean p1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isToCircle:Z

    .line 927
    return-object p0
.end method

.method public setWXSceneFavorite(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1152
    iput-boolean p1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isWXSceneFavorite:Z

    .line 1153
    return-void
.end method

.method public shareTo()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 729
    iput-boolean v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isFromAuth:Z

    .line 732
    iget-object v3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v4, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v3, v4}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnStart(Ljava/lang/Class;)V

    .line 734
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 735
    .local v0, "req":Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;
    iget-object v3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareType:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 736
    iget-object v3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mWxMediaMessage:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    iput-object v3, v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .line 737
    iget-boolean v3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isWXSceneFavorite:Z

    if-eqz v3, :cond_0

    .line 738
    const/4 v2, 0x2

    iput v2, v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 743
    :goto_0
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mWXApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v2, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    move-result v1

    .line 744
    .local v1, "sendReq":Z
    return v1

    .line 740
    .end local v1    # "sendReq":Z
    :cond_0
    iget-boolean v3, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isToCircle:Z

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput v2, v0, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    goto :goto_0
.end method

.method public showCompressToast(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 626
    iput-boolean p1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isShowCompressToast:Z

    .line 627
    return-void
.end method
