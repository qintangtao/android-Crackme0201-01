.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;
.super Ljava/lang/Object;
.source "AsyncHttpServer.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ListenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer;->listenSecure(ILjavax/net/ssl/SSLContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

.field private final synthetic val$port:I

.field private final synthetic val$sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;ILjavax/net/ssl/SSLContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iput p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;->val$port:I

    iput-object p3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;->val$sslContext:Ljavax/net/ssl/SSLContext;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccepted(Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 8
    .param p1, "socket"    # Lcom/koushikdutta/async/AsyncSocket;

    .prologue
    const/4 v2, 0x0

    .line 226
    new-instance v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget v3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;->val$port:I

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;->val$sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v4

    const/4 v7, 0x0

    move-object v1, p1

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;-><init>(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V

    .line 227
    .local v0, "sslSocket":Lcom/koushikdutta/async/AsyncSSLSocketWrapper;
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListenCallback:Lcom/koushikdutta/async/callback/ListenCallback;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/callback/ListenCallback;->onAccepted(Lcom/koushikdutta/async/AsyncSocket;)V

    .line 228
    return-void
.end method

.method public onCompleted(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListenCallback:Lcom/koushikdutta/async/callback/ListenCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/ListenCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 238
    return-void
.end method

.method public onListening(Lcom/koushikdutta/async/AsyncServerSocket;)V
    .locals 1
    .param p1, "socket"    # Lcom/koushikdutta/async/AsyncServerSocket;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$2;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mListenCallback:Lcom/koushikdutta/async/callback/ListenCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/ListenCallback;->onListening(Lcom/koushikdutta/async/AsyncServerSocket;)V

    .line 233
    return-void
.end method
