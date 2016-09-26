.class Lcom/koushikdutta/async/http/AsyncHttpClient$3;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;->executeAffinity(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field private final synthetic val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

.field private final synthetic val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

.field private final synthetic val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;

.field private final synthetic val$redirectCount:I

.field private final synthetic val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field private final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Landroid/net/Uri;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;

    iput-object p5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    iput-object p6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$uri:Landroid/net/Uri;

    iput p7, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$redirectCount:I

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/AsyncHttpClient$3;)Lcom/koushikdutta/async/http/AsyncHttpClient;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    return-object v0
.end method


# virtual methods
.method public onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 10
    .param p1, "ex"    # Ljava/lang/Exception;
    .param p2, "socket"    # Lcom/koushikdutta/async/AsyncSocket;

    .prologue
    .line 206
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v2, "socket connected"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    if-eqz p2, :cond_0

    .line 209
    invoke-interface {p2}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->scheduled:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/AsyncServer;->removeAllCallbacks(Ljava/lang/Object;)V

    .line 217
    :cond_2
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;

    iput-object p2, v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    .line 218
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v2, v1, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/ArrayList;

    monitor-enter v2

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 218
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iput-object p2, v1, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->socket:Lcom/koushikdutta/async/AsyncSocket;

    .line 226
    if-eqz p1, :cond_4

    .line 227
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    move-object v2, p1

    # invokes: Lcom/koushikdutta/async/http/AsyncHttpClient;->reportConnectedCompleted(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$1(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    goto :goto_0

    .line 219
    :cond_3
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 220
    .local v9, "middleware":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;

    invoke-interface {v9, v3}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->onSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnSocketData;)V

    goto :goto_1

    .line 218
    .end local v9    # "middleware":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 234
    :cond_4
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;

    iget-object v6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$uri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    iget v8, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$redirectCount:I

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient$3;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;Landroid/net/Uri;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;I)V

    .line 371
    .local v0, "ret":Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;
    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->setSocket(Lcom/koushikdutta/async/AsyncSocket;)V

    goto :goto_0
.end method
