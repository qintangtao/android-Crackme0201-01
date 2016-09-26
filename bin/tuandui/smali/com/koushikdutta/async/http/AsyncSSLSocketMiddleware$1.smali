.class Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;
.super Ljava/lang/Object;
.source "AsyncSSLSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->wrapCallback(Lcom/koushikdutta/async/callback/ConnectCallback;Landroid/net/Uri;IZ)Lcom/koushikdutta/async/callback/ConnectCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

.field private final synthetic val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

.field private final synthetic val$port:I

.field private final synthetic val$proxied:Z

.field private final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;ZLcom/koushikdutta/async/callback/ConnectCallback;Landroid/net/Uri;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->this$0:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    iput-boolean p2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->val$proxied:Z

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->val$uri:Landroid/net/Uri;

    iput p5, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->val$port:I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;)Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->this$0:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    return-object v0
.end method


# virtual methods
.method public onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 11
    .param p1, "ex"    # Ljava/lang/Exception;
    .param p2, "socket"    # Lcom/koushikdutta/async/AsyncSocket;

    .prologue
    const/4 v7, 0x1

    .line 78
    if-nez p1, :cond_1

    .line 79
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->val$proxied:Z

    if-nez v0, :cond_0

    .line 80
    iget-object v9, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    const/4 v10, 0x0

    .line 81
    new-instance v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->val$port:I

    .line 82
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->this$0:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->val$port:I

    invoke-virtual {v1, v4, v5}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->createConfiguredSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v4

    .line 83
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->this$0:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    iget-object v5, v1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->trustManagers:[Ljavax/net/ssl/TrustManager;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->this$0:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    iget-object v6, v1, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    move-object v1, p2

    .line 81
    invoke-direct/range {v0 .. v7}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;-><init>(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V

    .line 80
    invoke-interface {v9, v10, v0}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 149
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v8, Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-direct {v8}, Lcom/koushikdutta/async/http/libcore/RawHeaders;-><init>()V

    .line 89
    .local v8, "connect":Lcom/koushikdutta/async/http/libcore/RawHeaders;
    const-string v0, "CONNECT %s:%s HTTP/1.1"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->val$port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v8}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->toHeaderString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    new-instance v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->val$uri:Landroid/net/Uri;

    iget v5, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->val$port:I

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;-><init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;Lcom/koushikdutta/async/callback/ConnectCallback;Lcom/koushikdutta/async/AsyncSocket;Landroid/net/Uri;I)V

    invoke-static {p2, v6, v0}, Lcom/koushikdutta/async/Util;->writeAll(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    goto :goto_0

    .line 147
    .end local v8    # "connect":Lcom/koushikdutta/async/http/libcore/RawHeaders;
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    goto :goto_0
.end method
