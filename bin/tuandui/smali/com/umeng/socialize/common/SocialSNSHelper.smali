.class public Lcom/umeng/socialize/common/SocialSNSHelper;
.super Ljava/lang/Object;
.source "SocialSNSHelper.java"


# static fields
.field public static final SOCIALIZE_DOUBAN_KEY:Ljava/lang/String; = "douban"

.field public static final SOCIALIZE_EMAIL_KEY:Ljava/lang/String; = "email"

.field public static final SOCIALIZE_EVERNOTE_KEY:Ljava/lang/String; = "evernote"

.field public static final SOCIALIZE_FACEBOOS_KEY:Ljava/lang/String; = "facebook"

.field public static final SOCIALIZE_FLICKR_KEY:Ljava/lang/String; = "flickr"

.field public static final SOCIALIZE_FOUR_SQUARE_KEY:Ljava/lang/String; = "foursquare"

.field public static final SOCIALIZE_GENERIC_KEY:Ljava/lang/String; = "generic"

.field public static final SOCIALIZE_GOOGLE_PLUS_KEY:Ljava/lang/String; = "google+"

.field public static final SOCIALIZE_INSTAGRAM_KEY:Ljava/lang/String; = "instagram"

.field public static final SOCIALIZE_KAKAO_KEY:Ljava/lang/String; = "kakao"

.field public static final SOCIALIZE_LAIWANG_DYNAMIC_KEY:Ljava/lang/String; = "laiwang_dynamic"

.field public static final SOCIALIZE_LAIWANG_KEY:Ljava/lang/String; = "laiwang"

.field public static final SOCIALIZE_LINE_KEY:Ljava/lang/String; = "line"

.field public static final SOCIALIZE_LINKED_IN_KEY:Ljava/lang/String; = "linkedin"

.field public static final SOCIALIZE_PINTERREST_KEY:Ljava/lang/String; = "pinterest"

.field public static final SOCIALIZE_POCKET_KEY:Ljava/lang/String; = "pocket"

.field public static final SOCIALIZE_QQ_KEY:Ljava/lang/String; = "qq"

.field public static final SOCIALIZE_QZONE_KEY:Ljava/lang/String; = "qzone"

.field public static final SOCIALIZE_RENREN_KEY:Ljava/lang/String; = "renren"

.field public static final SOCIALIZE_SINA_KEY:Ljava/lang/String; = "sina"

.field public static final SOCIALIZE_SMS_KEY:Ljava/lang/String; = "sms"

.field public static final SOCIALIZE_TENCENT_KEY:Ljava/lang/String; = "tencent"

.field public static final SOCIALIZE_TUMBLR_KEY:Ljava/lang/String; = "tumblr"

.field public static final SOCIALIZE_TWITTER_KEY:Ljava/lang/String; = "twitter"

.field public static final SOCIALIZE_WEIXIN_CIRCLE_KEY:Ljava/lang/String; = "weixin_circle"

.field public static final SOCIALIZE_WEIXIN_KEY:Ljava/lang/String; = "weixin"

.field public static final SOCIALIZE_WHATSAPP_KEY:Ljava/lang/String; = "whatsapp"

.field public static final SOCIALIZE_YIXIN_CIRCLE_KEY:Ljava/lang/String; = "yixin_circle"

.field public static final SOCIALIZE_YIXIN_KEY:Ljava/lang/String; = "yixin"

.field public static final SOCIALIZE_YNOTE_KEY:Ljava/lang/String; = "ynote"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method private static getGrayIconId(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)I
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/umeng/socialize/common/SocialSNSHelper$1;->a:[I

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 145
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 130
    :pswitch_0
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_tx_off"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 133
    :pswitch_1
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_sina_off"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 136
    :pswitch_2
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_renren_off"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 139
    :pswitch_3
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_douban_off"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 142
    :pswitch_4
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_qzone_off"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static getIconId(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)I
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/umeng/socialize/common/SocialSNSHelper$1;->a:[I

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 115
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 100
    :pswitch_0
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_tx_on"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 103
    :pswitch_1
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_sina_on"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 106
    :pswitch_2
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_renren_on"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 109
    :pswitch_3
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_douban_on"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 112
    :pswitch_4
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_qzone_on"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getKeywordByPlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/umeng/socialize/common/SocialSNSHelper$1;->a:[I

    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 212
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 188
    :pswitch_0
    const-string v0, "sina"

    goto :goto_0

    .line 190
    :pswitch_1
    const-string v0, "tencent"

    goto :goto_0

    .line 192
    :pswitch_2
    const-string v0, "renren"

    goto :goto_0

    .line 194
    :pswitch_3
    const-string v0, "douban"

    goto :goto_0

    .line 196
    :pswitch_4
    const-string v0, "qzone"

    goto :goto_0

    .line 198
    :pswitch_5
    const-string v0, "qq"

    goto :goto_0

    .line 200
    :pswitch_6
    const-string v0, "facebook"

    goto :goto_0

    .line 202
    :pswitch_7
    const-string v0, "weixin"

    goto :goto_0

    .line 204
    :pswitch_8
    const-string v0, "weixin_circle"

    goto :goto_0

    .line 206
    :pswitch_9
    const-string v0, "pocket"

    goto :goto_0

    .line 208
    :pswitch_a
    const-string v0, "linkedin"

    goto :goto_0

    .line 210
    :pswitch_b
    const-string v0, "foursquare"

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getShowWord(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/umeng/socialize/common/SocialSNSHelper$1;->a:[I

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 85
    const-string v0, ""

    :goto_0
    return-object v0

    .line 68
    :pswitch_0
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_text_tencent_key"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :pswitch_1
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_text_sina_key"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :pswitch_2
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_text_renren_key"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :pswitch_3
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_text_douban_key"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :pswitch_4
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_text_qq_zone_key"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :pswitch_5
    const-string v0, "facebook"

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getSupprotCloudPlatforms(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeConfig;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/umeng/socialize/bean/SocializeConfig;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-static {p0}, Lcom/umeng/socialize/utils/LoginInfoHelp;->getLoginInfo(Landroid/content/Context;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v4

    .line 39
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/SocializeConfig;->getPlatforms()Ljava/util/List;

    move-result-object v1

    .line 41
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 42
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/SocializeConfig;->getPlatformMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 44
    invoke-static {p0, v0}, Lcom/umeng/socialize/common/SocialSNSHelper;->getIconId(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)I

    move-result v6

    iput v6, v1, Lcom/umeng/socialize/bean/SnsPlatform;->mIcon:I

    .line 45
    invoke-static {p0, v0}, Lcom/umeng/socialize/common/SocialSNSHelper;->getGrayIconId(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)I

    move-result v6

    iput v6, v1, Lcom/umeng/socialize/bean/SnsPlatform;->mGrayIcon:I

    .line 46
    invoke-static {p0, v0}, Lcom/umeng/socialize/common/SocialSNSHelper;->getShowWord(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/umeng/socialize/bean/SnsPlatform;->mShowWord:Ljava/lang/String;

    .line 49
    :try_start_0
    invoke-static {p0, v0}, Lcom/umeng/socialize/utils/OauthHelper;->isAuthenticated(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 50
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/umeng/socialize/bean/SnsPlatform;->mOauth:Z

    .line 51
    invoke-static {p0, v0}, Lcom/umeng/socialize/utils/OauthHelper;->getUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/umeng/socialize/bean/SnsPlatform;->mUsid:Ljava/lang/String;

    .line 53
    :cond_0
    if-eqz v4, :cond_1

    if-ne v4, v0, :cond_1

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/umeng/socialize/bean/SnsPlatform;->mBind:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_1
    :goto_1
    add-int/lit8 v0, v2, 0x1

    iput v2, v1, Lcom/umeng/socialize/bean/SnsPlatform;->mIndex:I

    .line 60
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v0

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    return-object v3

    .line 56
    :catch_0
    move-exception v0

    goto :goto_1
.end method
