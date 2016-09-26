.class public Lcom/lzx/iteam/util/HttpClientCookieStoreProxy;
.super Ljava/lang/Object;
.source "HttpClientCookieStoreProxy.java"

# interfaces
.implements Lorg/apache/http/client/CookieStore;


# static fields
.field private static final httpExpiryDateFormatter:Ljava/text/SimpleDateFormat;

.field public static final systemExpiryDateFormatter:Ljava/text/SimpleDateFormat;

.field private static timezone:Ljava/util/TimeZone;


# instance fields
.field private cUrl:Ljava/lang/String;

.field private webkitCookieManager:Landroid/webkit/CookieManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/util/HttpClientCookieStoreProxy;->timezone:Ljava/util/TimeZone;

    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lzx/iteam/util/HttpClientCookieStoreProxy;->httpExpiryDateFormatter:Ljava/text/SimpleDateFormat;

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE,dd-MMM-yyyy HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/lzx/iteam/util/HttpClientCookieStoreProxy;->systemExpiryDateFormatter:Ljava/text/SimpleDateFormat;

    .line 21
    sget-object v0, Lcom/lzx/iteam/util/HttpClientCookieStoreProxy;->httpExpiryDateFormatter:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/lzx/iteam/util/HttpClientCookieStoreProxy;->timezone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 22
    sget-object v0, Lcom/lzx/iteam/util/HttpClientCookieStoreProxy;->systemExpiryDateFormatter:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/lzx/iteam/util/HttpClientCookieStoreProxy;->timezone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/util/HttpClientCookieStoreProxy;->webkitCookieManager:Landroid/webkit/CookieManager;

    .line 32
    iput-object p1, p0, Lcom/lzx/iteam/util/HttpClientCookieStoreProxy;->cUrl:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public addCookie(Lorg/apache/http/cookie/Cookie;)V
    .locals 7
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 39
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "$Version"

    if-ne v5, v6, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "cookieString":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "domain":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 48
    const-string v5, ".*\\.(?=.*\\.)"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "; domain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "path":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v2

    .line 53
    .local v2, "expiryDate":Ljava/util/Date;
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->isSecure()Z

    move-result v4

    .line 54
    .local v4, "secure":Z
    if-eqz v3, :cond_2

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "; path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_2
    if-eqz v2, :cond_3

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "; expires="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/lzx/iteam/util/HttpClientCookieStoreProxy;->systemExpiryDateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_3
    if-eqz v4, :cond_4

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "; secure"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_4
    iget-object v5, p0, Lcom/lzx/iteam/util/HttpClientCookieStoreProxy;->webkitCookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v5, v1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/CookieSyncManager;->startSync()V

    goto/16 :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lzx/iteam/util/HttpClientCookieStoreProxy;->webkitCookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 113
    return-void
.end method

.method public clearExpired(Ljava/util/Date;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lzx/iteam/util/HttpClientCookieStoreProxy;->webkitCookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public getCookies()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v2, Lorg/apache/http/impl/cookie/RFC2109Spec;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/RFC2109Spec;-><init>()V

    .line 71
    .local v2, "cookieSpec":Lorg/apache/http/impl/cookie/RFC2109Spec;
    const/4 v6, 0x0

    .line 73
    .local v6, "rawCookieHeader":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v7, p0, Lcom/lzx/iteam/util/HttpClientCookieStoreProxy;->cUrl:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    .local v4, "parsedURL":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "domain":Ljava/lang/String;
    const-string v7, ".*\\.(?=.*\\.)"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    iget-object v7, p0, Lcom/lzx/iteam/util/HttpClientCookieStoreProxy;->webkitCookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v7, v3}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    if-nez v6, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .end local v3    # "domain":Ljava/lang/String;
    .end local v4    # "parsedURL":Ljava/net/URL;
    :goto_0
    return-object v0

    .line 84
    .restart local v3    # "domain":Ljava/lang/String;
    .restart local v4    # "parsedURL":Ljava/net/URL;
    :cond_0
    invoke-virtual {v4}, Ljava/net/URL;->getPort()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 85
    invoke-virtual {v4}, Ljava/net/URL;->getDefaultPort()I

    move-result v5

    .line 87
    .local v5, "port":I
    :goto_1
    new-instance v1, Lorg/apache/http/cookie/CookieOrigin;

    .line 89
    const-string v7, "/"

    .line 90
    const/4 v8, 0x0

    .line 87
    invoke-direct {v1, v3, v5, v7, v8}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 92
    .local v1, "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    new-instance v7, Lorg/apache/http/message/BasicHeader;

    const-string v8, "set-cookie"

    invoke-direct {v7, v8, v6}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2, v7, v1}, Lorg/apache/http/impl/cookie/RFC2109Spec;->parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    .line 95
    .local v0, "appCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    goto :goto_0

    .line 85
    .end local v0    # "appCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v1    # "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    .end local v5    # "port":I
    :cond_1
    invoke-virtual {v4}, Ljava/net/URL;->getPort()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_1

    .end local v3    # "domain":Ljava/lang/String;
    .end local v4    # "parsedURL":Ljava/net/URL;
    :catch_0
    move-exception v7

    .line 101
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 96
    :catch_1
    move-exception v7

    goto :goto_2
.end method
