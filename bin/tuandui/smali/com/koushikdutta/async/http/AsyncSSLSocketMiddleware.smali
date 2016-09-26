.class public Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;
.super Lcom/koushikdutta/async/http/AsyncSocketMiddleware;
.source "AsyncSSLSocketMiddleware.java"


# instance fields
.field engineConfigurators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/AsyncSSLEngineConfigurator;",
            ">;"
        }
    .end annotation
.end field

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field sslContext:Ljavax/net/ssl/SSLContext;

.field trustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V
    .locals 2
    .param p1, "client"    # Lcom/koushikdutta/async/http/AsyncHttpClient;

    .prologue
    .line 28
    const-string v0, "https"

    const/16 v1, 0x1bb

    invoke-direct {p0, p1, v0, v1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/lang/String;I)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->engineConfigurators:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public addEngineConfigurator(Lcom/koushikdutta/async/http/AsyncSSLEngineConfigurator;)V
    .locals 1
    .param p1, "engineConfigurator"    # Lcom/koushikdutta/async/http/AsyncSSLEngineConfigurator;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->engineConfigurators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public clearEngineConfigurators()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->engineConfigurators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    return-void
.end method

.method protected createConfiguredSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 61
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    .line 66
    .local v1, "sslEngine":Ljavax/net/ssl/SSLEngine;
    :goto_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->engineConfigurators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 70
    return-object v1

    .line 64
    .end local v1    # "sslEngine":Ljavax/net/ssl/SSLEngine;
    :cond_0
    invoke-static {}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->createDefaultSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    .restart local v1    # "sslEngine":Ljavax/net/ssl/SSLEngine;
    goto :goto_0

    .line 66
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/AsyncSSLEngineConfigurator;

    .line 67
    .local v0, "configurator":Lcom/koushikdutta/async/http/AsyncSSLEngineConfigurator;
    invoke-interface {v0, v1, p1, p2}, Lcom/koushikdutta/async/http/AsyncSSLEngineConfigurator;->configureEngine(Ljavax/net/ssl/SSLEngine;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 47
    return-void
.end method

.method public setSSLContext(Ljavax/net/ssl/SSLContext;)V
    .locals 0
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 35
    return-void
.end method

.method public setTrustManagers([Ljavax/net/ssl/TrustManager;)V
    .locals 0
    .param p1, "trustManagers"    # [Ljavax/net/ssl/TrustManager;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->trustManagers:[Ljavax/net/ssl/TrustManager;

    .line 41
    return-void
.end method

.method protected wrapCallback(Lcom/koushikdutta/async/callback/ConnectCallback;Landroid/net/Uri;IZ)Lcom/koushikdutta/async/callback/ConnectCallback;
    .locals 6
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/ConnectCallback;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "port"    # I
    .param p4, "proxied"    # Z

    .prologue
    .line 75
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;-><init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;ZLcom/koushikdutta/async/callback/ConnectCallback;Landroid/net/Uri;I)V

    return-object v0
.end method
