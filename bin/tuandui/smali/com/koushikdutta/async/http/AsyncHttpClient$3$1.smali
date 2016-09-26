.class Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;
.super Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient$3;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$3;

.field private final synthetic val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

.field private final synthetic val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

.field private final synthetic val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;

.field private final synthetic val$redirectCount:I

.field private final synthetic val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

.field private final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient$3;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;Landroid/net/Uri;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;I)V
    .locals 0
    .param p2, "$anonymous0"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$3;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iput-object p5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;

    iput-object p6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$uri:Landroid/net/Uri;

    iput-object p7, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    iput p8, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$redirectCount:I

    .line 234
    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;-><init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    return-void
.end method


# virtual methods
.method public detachSocket()Lcom/koushikdutta/async/AsyncSocket;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 358
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v3, "Detaching socket"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->getSocket()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v0

    .line 360
    .local v0, "socket":Lcom/koushikdutta/async/AsyncSocket;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 367
    .end local v0    # "socket":Lcom/koushikdutta/async/AsyncSocket;
    :goto_0
    return-object v0

    .line 362
    .restart local v0    # "socket":Lcom/koushikdutta/async/AsyncSocket;
    :cond_0
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 363
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 364
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 365
    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 366
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->setSocket(Lcom/koushikdutta/async/AsyncSocket;)V

    goto :goto_0
.end method

.method protected onHeadersReceived()V
    .locals 7

    .prologue
    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$3;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->access$0(Lcom/koushikdutta/async/http/AsyncHttpClient$3;)Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v0

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->scheduled:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->removeAllCallbacks(Ljava/lang/Object;)V

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Received headers:\n"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->mHeaders:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v3

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->toHeaderString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->mHeaders:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    iput-object v1, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->headers:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    .line 310
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$3;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->access$0(Lcom/koushikdutta/async/http/AsyncHttpClient$3;)Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v0

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$3;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->access$0(Lcom/koushikdutta/async/http/AsyncHttpClient$3;)Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v0

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 310
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    :try_start_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->headers:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->mHeaders:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v2

    .line 321
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$3;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->access$0(Lcom/koushikdutta/async/http/AsyncHttpClient$3;)Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    # invokes: Lcom/koushikdutta/async/http/AsyncHttpClient;->reportConnectedCompleted(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$1(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    goto :goto_0

    .line 311
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 312
    .local v6, "middleware":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;

    invoke-interface {v6, v3}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->onHeadersReceived(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedData;)V

    goto :goto_1

    .line 310
    .end local v6    # "middleware":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method protected onRequestCompleted(Ljava/lang/Exception;)V
    .locals 6
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "request completed"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->headers:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$3;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->access$0(Lcom/koushikdutta/async/http/AsyncHttpClient$3;)Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v0

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->scheduled:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->removeAllCallbacks(Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$3;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;
    invoke-static {v1}, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->access$0(Lcom/koushikdutta/async/http/AsyncHttpClient$3;)Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v1

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->timeoutRunnable:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    # invokes: Lcom/koushikdutta/async/http/AsyncHttpClient;->getTimeoutRemaining(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J
    invoke-static {v3}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$2(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/koushikdutta/async/AsyncServer;->postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->scheduled:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected report(Ljava/lang/Exception;)V
    .locals 9
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 327
    if-eqz p1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "exception during response"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    :cond_1
    :goto_0
    return-void

    .line 331
    :cond_2
    instance-of v0, p1, Lcom/koushikdutta/async/AsyncSSLException;

    if-eqz v0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v1, "SSL Exception"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v6, p1

    .line 333
    check-cast v6, Lcom/koushikdutta/async/AsyncSSLException;

    .line 334
    .local v6, "ase":Lcom/koushikdutta/async/AsyncSSLException;
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0, v6}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->onHandshakeException(Lcom/koushikdutta/async/AsyncSSLException;)V

    .line 335
    invoke-virtual {v6}, Lcom/koushikdutta/async/AsyncSSLException;->getIgnore()Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    .end local v6    # "ase":Lcom/koushikdutta/async/AsyncSSLException;
    :cond_3
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->getSocket()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v8

    .line 339
    .local v8, "socket":Lcom/koushikdutta/async/AsyncSocket;
    if-eqz v8, :cond_1

    .line 341
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->report(Ljava/lang/Exception;)V

    .line 342
    invoke-interface {v8}, Lcom/koushikdutta/async/AsyncSocket;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_5

    .line 343
    :cond_4
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->getHeaders()Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    move-result-object v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    .line 344
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$3;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->access$0(Lcom/koushikdutta/async/http/AsyncHttpClient$3;)Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    move-object v2, p1

    # invokes: Lcom/koushikdutta/async/http/AsyncHttpClient;->reportConnectedCompleted(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$1(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    .line 347
    :cond_5
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;

    iput-object p1, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->exception:Ljava/lang/Exception;

    .line 348
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$3;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->access$0(Lcom/koushikdutta/async/http/AsyncHttpClient$3;)Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v0

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/ArrayList;

    monitor-enter v1

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$3;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;
    invoke-static {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->access$0(Lcom/koushikdutta/async/http/AsyncHttpClient$3;)Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v0

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 348
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 349
    :cond_6
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 350
    .local v7, "middleware":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;

    invoke-interface {v7, v2}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->onRequestComplete(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V
    .locals 18
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;

    .prologue
    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;

    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->bodyEmitter:Lcom/koushikdutta/async/DataEmitter;

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$3;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;
    invoke-static {v2}, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->access$0(Lcom/koushikdutta/async/http/AsyncHttpClient$3;)Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v2

    iget-object v3, v2, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/ArrayList;

    monitor-enter v3

    .line 251
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$3;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;
    invoke-static {v2}, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->access$0(Lcom/koushikdutta/async/http/AsyncHttpClient$3;)Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v2

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 250
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->headers:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->mHeaders:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->bodyEmitter:Lcom/koushikdutta/async/DataEmitter;

    move-object/from16 v0, p0

    invoke-super {v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->mHeaders:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v11

    .line 260
    .local v11, "headers":Lcom/koushikdutta/async/http/libcore/RawHeaders;
    invoke-virtual {v11}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->getResponseCode()I

    move-result v17

    .line 261
    .local v17, "responseCode":I
    const/16 v2, 0x12d

    move/from16 v0, v17

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12e

    move/from16 v0, v17

    if-eq v0, v2, :cond_0

    const/16 v2, 0x133

    move/from16 v0, v17

    if-ne v0, v2, :cond_4

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getFollowRedirect()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 262
    const-string v2, "Location"

    invoke-virtual {v11, v2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 265
    .local v12, "location":Ljava/lang/String;
    :try_start_1
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 266
    .local v16, "redirect":Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 267
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v12}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    .line 274
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v13, "HEAD"

    .line 275
    .local v13, "method":Ljava/lang/String;
    :goto_1
    new-instance v15, Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v13}, Lcom/koushikdutta/async/http/AsyncHttpRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 276
    .local v15, "newReq":Lcom/koushikdutta/async/http/AsyncHttpRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-wide v2, v2, Lcom/koushikdutta/async/http/AsyncHttpRequest;->executionTime:J

    iput-wide v2, v15, Lcom/koushikdutta/async/http/AsyncHttpRequest;->executionTime:J

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget v2, v2, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    iput v2, v15, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logLevel:I

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    iput-object v2, v15, Lcom/koushikdutta/async/http/AsyncHttpRequest;->LOGTAG:Ljava/lang/String;

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyHost:Ljava/lang/String;

    iput-object v2, v15, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyHost:Ljava/lang/String;

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget v2, v2, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyPort:I

    iput v2, v15, Lcom/koushikdutta/async/http/AsyncHttpRequest;->proxyPort:I

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v3, "User-Agent"

    # invokes: Lcom/koushikdutta/async/http/AsyncHttpClient;->copyHeader(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V
    invoke-static {v2, v15, v3}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$3(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v3, "Range"

    # invokes: Lcom/koushikdutta/async/http/AsyncHttpClient;->copyHeader(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V
    invoke-static {v2, v15, v3}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$3(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v3, "Redirecting"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logi(Ljava/lang/String;)V

    .line 284
    const-string v2, "Redirected"

    invoke-virtual {v15, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logi(Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$3;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;
    invoke-static {v2}, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->access$0(Lcom/koushikdutta/async/http/AsyncHttpClient$3;)Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$redirectCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    # invokes: Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    invoke-static {v2, v15, v3, v5, v6}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$4(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    .line 287
    new-instance v2, Lcom/koushikdutta/async/NullDataCallback;

    invoke-direct {v2}, Lcom/koushikdutta/async/NullDataCallback;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 295
    .end local v12    # "location":Ljava/lang/String;
    .end local v13    # "method":Ljava/lang/String;
    .end local v15    # "newReq":Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .end local v16    # "redirect":Landroid/net/Uri;
    :goto_2
    return-void

    .line 251
    .end local v11    # "headers":Lcom/koushikdutta/async/http/libcore/RawHeaders;
    .end local v17    # "responseCode":I
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 252
    .local v14, "middleware":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;

    invoke-interface {v14, v5}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->onBodyDecoder(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyData;)V

    goto/16 :goto_0

    .line 250
    .end local v14    # "middleware":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 270
    .restart local v11    # "headers":Lcom/koushikdutta/async/http/libcore/RawHeaders;
    .restart local v12    # "location":Ljava/lang/String;
    .restart local v17    # "responseCode":I
    :catch_0
    move-exception v4

    .line 271
    .local v4, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$3;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;
    invoke-static {v2}, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->access$0(Lcom/koushikdutta/async/http/AsyncHttpClient$3;)Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    move-object/from16 v5, p0

    # invokes: Lcom/koushikdutta/async/http/AsyncHttpClient;->reportConnectedCompleted(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    invoke-static/range {v2 .. v7}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$1(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    goto :goto_2

    .line 274
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v16    # "redirect":Landroid/net/Uri;
    :cond_3
    const-string v13, "GET"

    goto/16 :goto_1

    .line 291
    .end local v12    # "location":Ljava/lang/String;
    .end local v16    # "redirect":Landroid/net/Uri;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Final (post cache response) headers:\n"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->mHeaders:Lcom/koushikdutta/async/http/libcore/ResponseHeaders;

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/libcore/ResponseHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v5

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->toHeaderString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$3;

    # getter for: Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;
    invoke-static {v2}, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->access$0(Lcom/koushikdutta/async/http/AsyncHttpClient$3;)Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3$1;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    move-object/from16 v8, p0

    # invokes: Lcom/koushikdutta/async/http/AsyncHttpClient;->reportConnectedCompleted(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    invoke-static/range {v5 .. v10}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$1(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    goto :goto_2
.end method
