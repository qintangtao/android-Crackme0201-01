.class Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;
.super Ljava/lang/Object;
.source "AsyncSSLSocketMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/LineEmitter$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->onCompleted(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field statusLine:Ljava/lang/String;

.field final synthetic this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;

.field private final synthetic val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

.field private final synthetic val$port:I

.field private final synthetic val$socket:Lcom/koushikdutta/async/AsyncSocket;

.field private final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/callback/ConnectCallback;Landroid/net/Uri;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->val$uri:Landroid/net/Uri;

    iput p5, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->val$port:I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStringAvailable(Ljava/lang/String;)V
    .locals 10
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 103
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->statusLine:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 104
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->statusLine:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->statusLine:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->statusLine:Ljava/lang/String;

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v9}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 107
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v9}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 108
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "non 200 status line"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v9}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 113
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v9}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    iget-object v8, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    .line 116
    new-instance v0, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->val$port:I

    .line 117
    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;

    # getter for: Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->this$1:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;
    invoke-static {v4}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->access$0(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;)Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;

    move-result-object v4

    # getter for: Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->this$0:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;
    invoke-static {v4}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->access$0(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;)Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    move-result-object v4

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->val$port:I

    invoke-virtual {v4, v5, v6}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->createConfiguredSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v4

    .line 118
    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;

    # getter for: Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->this$1:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;
    invoke-static {v5}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->access$0(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;)Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;

    move-result-object v5

    # getter for: Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->this$0:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;
    invoke-static {v5}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->access$0(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;)Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    move-result-object v5

    iget-object v5, v5, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->trustManagers:[Ljavax/net/ssl/TrustManager;

    iget-object v6, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->this$2:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;

    # getter for: Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->this$1:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;
    invoke-static {v6}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;->access$0(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1;)Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;

    move-result-object v6

    # getter for: Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->this$0:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;
    invoke-static {v6}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;->access$0(Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1;)Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    move-result-object v6

    iget-object v6, v6, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    const/4 v7, 0x1

    .line 116
    invoke-direct/range {v0 .. v7}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;-><init>(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V

    .line 115
    invoke-interface {v8, v9, v0}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    goto :goto_0

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->val$callback:Lcom/koushikdutta/async/callback/ConnectCallback;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "unknown second status line"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware$1$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    goto :goto_0
.end method
