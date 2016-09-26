.class Lcom/koushikdutta/async/http/AsyncHttpClient$8;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcom/koushikdutta/async/http/callback/HttpConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;->websocket(Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field private final synthetic val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;

.field private final synthetic val$req:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field private final synthetic val$ret:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$8;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$8;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$8;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$8;->val$req:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/Exception;
    .param p2, "response"    # Lcom/koushikdutta/async/http/AsyncHttpResponse;

    .prologue
    .line 581
    if-eqz p1, :cond_1

    .line 582
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$8;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v1, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$8;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$8;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/WebSocket;)V

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$8;->val$req:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/koushikdutta/async/http/WebSocketImpl;->finishHandshake(Lcom/koushikdutta/async/http/libcore/RawHeaders;Lcom/koushikdutta/async/http/AsyncHttpResponse;)Lcom/koushikdutta/async/http/WebSocket;

    move-result-object v0

    .line 589
    .local v0, "ws":Lcom/koushikdutta/async/http/WebSocket;
    if-nez v0, :cond_3

    .line 590
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$8;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    new-instance v2, Lcom/koushikdutta/async/http/WebSocketHandshakeException;

    const-string v3, "Unable to complete websocket handshake"

    invoke-direct {v2, v3}, Lcom/koushikdutta/async/http/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    :cond_2
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$8;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;

    if-eqz v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$8;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;

    invoke-interface {v1, p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/WebSocket;)V

    goto :goto_0

    .line 594
    :cond_3
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$8;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method
