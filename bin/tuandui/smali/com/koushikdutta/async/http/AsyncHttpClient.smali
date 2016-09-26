.class public Lcom/koushikdutta/async/http/AsyncHttpClient;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/AsyncHttpClient$DownloadCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$JSONArrayCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$JSONObjectCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;,
        Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOGTAG:Ljava/lang/String; = "AsyncHttp"

.field private static mDefaultInstance:Lcom/koushikdutta/async/http/AsyncHttpClient;


# instance fields
.field final mMiddleware:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;",
            ">;"
        }
    .end annotation
.end field

.field mServer:Lcom/koushikdutta/async/AsyncServer;

.field socketMiddleware:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

.field sslSocketMiddleware:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->$assertionsDisabled:Z

    .line 88
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;)V
    .locals 1
    .param p1, "server"    # Lcom/koushikdutta/async/AsyncServer;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/ArrayList;

    .line 65
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    .line 66
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->socketMiddleware:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->insertMiddleware(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V

    .line 67
    new-instance v0, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->sslSocketMiddleware:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->insertMiddleware(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->executeAffinity(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method static synthetic access$1(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->reportConnectedCompleted(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method static synthetic access$2(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J
    .locals 2

    .prologue
    .line 150
    invoke-static {p0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getTimeoutRemaining(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->copyHeader(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void
.end method

.method static synthetic access$5(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 428
    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->invokeWithAffinity(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$6(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 440
    invoke-direct/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->invoke(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$7(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->invokeConnect(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    return-void
.end method

.method static synthetic access$8(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;JJ)V
    .locals 1

    .prologue
    .line 450
    invoke-direct/range {p0 .. p6}, Lcom/koushikdutta/async/http/AsyncHttpClient;->invokeProgress(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;JJ)V

    return-void
.end method

.method private static copyHeader(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V
    .locals 2
    .param p0, "from"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p1, "to"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "header"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getHeaders()Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->getHeaders()Lcom/koushikdutta/async/http/libcore/RawHeaders;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method

.method private execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 7
    .param p1, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "redirectCount"    # I
    .param p3, "cancel"    # Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
    .param p4, "callback"    # Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->isAffinityThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/AsyncHttpClient;->executeAffinity(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    .line 148
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient$1;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    invoke-virtual {v6, v0}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private executeAffinity(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 15
    .param p1, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "redirectCount"    # I
    .param p3, "cancel"    # Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
    .param p4, "callback"    # Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    .prologue
    .line 163
    sget-boolean v2, Lcom/koushikdutta/async/http/AsyncHttpClient;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v2}, Lcom/koushikdutta/async/AsyncServer;->isAffinityThread()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 164
    :cond_0
    const/16 v2, 0xf

    move/from16 v0, p2

    if-le v0, v2, :cond_1

    .line 165
    new-instance v4, Lcom/koushikdutta/async/http/RedirectLimitExceededException;

    const-string v2, "too many redirects"

    invoke-direct {v4, v2}, Lcom/koushikdutta/async/http/RedirectLimitExceededException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v2, p0

    move-object/from16 v3, p3

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/koushikdutta/async/http/AsyncHttpClient;->reportConnectedCompleted(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    .line 386
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v11

    .line 169
    .local v11, "uri":Landroid/net/Uri;
    new-instance v4, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;

    invoke-direct {v4}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;-><init>()V

    .line 170
    .local v4, "data":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/koushikdutta/async/http/AsyncHttpRequest;->executionTime:J

    .line 171
    move-object/from16 v0, p1

    iput-object v0, v4, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 173
    const-string v2, "Executing request."

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getTimeout()I

    move-result v2

    if-lez v2, :cond_2

    .line 187
    new-instance v2, Lcom/koushikdutta/async/http/AsyncHttpClient$2;

    move-object v3, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/koushikdutta/async/http/AsyncHttpClient$2;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->timeoutRunnable:Ljava/lang/Runnable;

    .line 199
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-static/range {p1 .. p1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getTimeoutRemaining(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J

    move-result-wide v6

    invoke-virtual {v2, v3, v6, v7}, Lcom/koushikdutta/async/AsyncServer;->postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->scheduled:Ljava/lang/Object;

    .line 203
    :cond_2
    new-instance v5, Lcom/koushikdutta/async/http/AsyncHttpClient$3;

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object v9, v4

    move-object/from16 v10, p4

    move/from16 v12, p2

    invoke-direct/range {v5 .. v12}, Lcom/koushikdutta/async/http/AsyncHttpClient$3;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Landroid/net/Uri;I)V

    iput-object v5, v4, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->connectCallback:Lcom/koushikdutta/async/callback/ConnectCallback;

    .line 375
    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/ArrayList;

    monitor-enter v3

    .line 376
    :try_start_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 375
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid uri"

    invoke-direct {v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object v5, p0

    move-object/from16 v6, p3

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/koushikdutta/async/http/AsyncHttpClient;->reportConnectedCompleted(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    goto :goto_0

    .line 376
    :cond_4
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .line 377
    .local v13, "middleware":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
    invoke-interface {v13, v4}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;->getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v14

    .line 378
    .local v14, "socketCancellable":Lcom/koushikdutta/async/future/Cancellable;
    if-eqz v14, :cond_3

    .line 379
    iput-object v14, v4, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestCompleteData;->socketCancellable:Lcom/koushikdutta/async/future/Cancellable;

    .line 380
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;

    .line 381
    monitor-exit v3

    goto/16 :goto_0

    .line 375
    .end local v13    # "middleware":Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
    .end local v14    # "socketCancellable":Lcom/koushikdutta/async/future/Cancellable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static getDefaultInstance()Lcom/koushikdutta/async/http/AsyncHttpClient;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mDefaultInstance:Lcom/koushikdutta/async/http/AsyncHttpClient;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->getDefault()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClient;-><init>(Lcom/koushikdutta/async/AsyncServer;)V

    sput-object v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mDefaultInstance:Lcom/koushikdutta/async/http/AsyncHttpClient;

    .line 50
    :cond_0
    sget-object v0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mDefaultInstance:Lcom/koushikdutta/async/http/AsyncHttpClient;

    return-object v0
.end method

.method private static getTimeoutRemaining(Lcom/koushikdutta/async/http/AsyncHttpRequest;)J
    .locals 2
    .param p0, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getTimeout()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private invoke(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 7
    .param p3, "response"    # Lcom/koushikdutta/async/http/AsyncHttpResponse;
    .param p4, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/callback/RequestCallback",
            "<TT;>;",
            "Lcom/koushikdutta/async/future/SimpleFuture",
            "<TT;>;",
            "Lcom/koushikdutta/async/http/AsyncHttpResponse;",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 441
    .local p1, "callback":Lcom/koushikdutta/async/http/callback/RequestCallback;, "Lcom/koushikdutta/async/http/callback/RequestCallback<TT;>;"
    .local p2, "future":Lcom/koushikdutta/async/future/SimpleFuture;, "Lcom/koushikdutta/async/future/SimpleFuture<TT;>;"
    .local p5, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/koushikdutta/async/http/AsyncHttpClient$4;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 447
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 448
    return-void
.end method

.method private invokeConnect(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 0
    .param p1, "callback"    # Lcom/koushikdutta/async/http/callback/RequestCallback;
    .param p2, "response"    # Lcom/koushikdutta/async/http/AsyncHttpResponse;

    .prologue
    .line 456
    if-eqz p1, :cond_0

    .line 457
    invoke-interface {p1, p2}, Lcom/koushikdutta/async/http/callback/RequestCallback;->onConnect(Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    .line 458
    :cond_0
    return-void
.end method

.method private invokeProgress(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;JJ)V
    .locals 1
    .param p1, "callback"    # Lcom/koushikdutta/async/http/callback/RequestCallback;
    .param p2, "response"    # Lcom/koushikdutta/async/http/AsyncHttpResponse;
    .param p3, "downloaded"    # J
    .param p5, "total"    # J

    .prologue
    .line 451
    if-eqz p1, :cond_0

    .line 452
    invoke-interface/range {p1 .. p6}, Lcom/koushikdutta/async/http/callback/RequestCallback;->onProgress(Lcom/koushikdutta/async/http/AsyncHttpResponse;JJ)V

    .line 453
    :cond_0
    return-void
.end method

.method private invokeWithAffinity(Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 1
    .param p3, "response"    # Lcom/koushikdutta/async/http/AsyncHttpResponse;
    .param p4, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/callback/RequestCallback",
            "<TT;>;",
            "Lcom/koushikdutta/async/future/SimpleFuture",
            "<TT;>;",
            "Lcom/koushikdutta/async/http/AsyncHttpResponse;",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p1, "callback":Lcom/koushikdutta/async/http/callback/RequestCallback;, "Lcom/koushikdutta/async/http/callback/RequestCallback<TT;>;"
    .local p2, "future":Lcom/koushikdutta/async/future/SimpleFuture;, "Lcom/koushikdutta/async/future/SimpleFuture<TT;>;"
    .local p5, "result":Ljava/lang/Object;, "TT;"
    if-eqz p4, :cond_1

    .line 431
    invoke-virtual {p2, p4}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    move-result v0

    .line 434
    .local v0, "complete":Z
    :goto_0
    if-nez v0, :cond_2

    .line 438
    :cond_0
    :goto_1
    return-void

    .line 433
    .end local v0    # "complete":Z
    :cond_1
    invoke-virtual {p2, p5}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z

    move-result v0

    .restart local v0    # "complete":Z
    goto :goto_0

    .line 436
    :cond_2
    if-eqz p1, :cond_0

    .line 437
    invoke-interface {p1, p4, p3, p5}, Lcom/koushikdutta/async/http/callback/RequestCallback;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private reportConnectedCompleted(Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
    .locals 3
    .param p1, "cancel"    # Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
    .param p2, "ex"    # Ljava/lang/Exception;
    .param p3, "response"    # Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;
    .param p4, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p5, "callback"    # Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    .prologue
    .line 112
    sget-boolean v1, Lcom/koushikdutta/async/http/AsyncHttpClient;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p5, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    iget-object v2, p1, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->scheduled:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/AsyncServer;->removeAllCallbacks(Ljava/lang/Object;)V

    .line 115
    if-eqz p2, :cond_1

    .line 116
    const-string v1, "Connection error"

    invoke-virtual {p4, v1, p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 117
    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->setComplete(Ljava/lang/Exception;)Z

    move-result v0

    .line 123
    .local v0, "complete":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 124
    invoke-interface {p5, p2, p3}, Lcom/koushikdutta/async/http/callback/HttpConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    .line 125
    sget-boolean v1, Lcom/koushikdutta/async/http/AsyncHttpClient;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-nez p2, :cond_3

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->getSocket()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->isPaused()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 120
    .end local v0    # "complete":Z
    :cond_1
    const-string v1, "Connection successful"

    invoke-virtual {p4, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logd(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1, p3}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->setComplete(Ljava/lang/Object;)Z

    move-result v0

    .restart local v0    # "complete":Z
    goto :goto_0

    .line 129
    :cond_2
    if-eqz p3, :cond_3

    .line 131
    new-instance v1, Lcom/koushikdutta/async/NullDataCallback;

    invoke-direct {v1}, Lcom/koushikdutta/async/NullDataCallback;-><init>()V

    invoke-virtual {p3, v1}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 132
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;->close()V

    .line 134
    :cond_3
    return-void
.end method


# virtual methods
.method public execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 3
    .param p1, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "callback"    # Lcom/koushikdutta/async/http/callback/HttpConnectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/http/callback/HttpConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Lcom/koushikdutta/async/http/AsyncHttpResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    const/4 v1, 0x0

    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;)V

    .local v0, "ret":Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    .line 81
    return-object v0
.end method

.method public execute(Ljava/lang/String;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/koushikdutta/async/http/callback/HttpConnectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/callback/HttpConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Lcom/koushikdutta/async/http/AsyncHttpResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpGet;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/AsyncHttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/parser/AsyncParser;Lcom/koushikdutta/async/http/callback/RequestCallback;)Lcom/koushikdutta/async/future/SimpleFuture;
    .locals 4
    .param p1, "req"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/parser/AsyncParser",
            "<TT;>;",
            "Lcom/koushikdutta/async/http/callback/RequestCallback",
            "<TT;>;)",
            "Lcom/koushikdutta/async/future/SimpleFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 542
    .local p2, "parser":Lcom/koushikdutta/async/parser/AsyncParser;, "Lcom/koushikdutta/async/parser/AsyncParser<TT;>;"
    .local p3, "callback":Lcom/koushikdutta/async/http/callback/RequestCallback;, "Lcom/koushikdutta/async/http/callback/RequestCallback<TT;>;"
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;)V

    .line 543
    .local v0, "cancel":Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
    new-instance v1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 544
    .local v1, "ret":Lcom/koushikdutta/async/future/SimpleFuture;, "Lcom/koushikdutta/async/future/SimpleFuture<TT;>;"
    const/4 v2, 0x0

    new-instance v3, Lcom/koushikdutta/async/http/AsyncHttpClient$7;

    invoke-direct {v3, p0, p3, v1, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient$7;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/parser/AsyncParser;)V

    invoke-direct {p0, p1, v2, v0, v3}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    .line 567
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;

    .line 568
    return-object v1
.end method

.method public executeByteBufferList(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$DownloadCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .param p1, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "callback"    # Lcom/koushikdutta/async/http/AsyncHttpClient$DownloadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$DownloadCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    new-instance v0, Lcom/koushikdutta/async/parser/ByteBufferListParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/ByteBufferListParser;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/parser/AsyncParser;Lcom/koushikdutta/async/http/callback/RequestCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object v0

    return-object v0
.end method

.method public executeFile(Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 10
    .param p1, "req"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 465
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x2000

    invoke-direct {v2, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .local v2, "fout":Ljava/io/OutputStream;
    new-instance v6, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;)V

    .line 473
    .local v6, "cancel":Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
    new-instance v5, Lcom/koushikdutta/async/http/AsyncHttpClient$5;

    invoke-direct {v5, p0, v6, v2, v3}, Lcom/koushikdutta/async/http/AsyncHttpClient$5;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/io/OutputStream;Ljava/io/File;)V

    .line 490
    .local v5, "ret":Lcom/koushikdutta/async/future/SimpleFuture;, "Lcom/koushikdutta/async/future/SimpleFuture<Ljava/io/File;>;"
    invoke-virtual {v5, v6}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;

    .line 491
    const/4 v9, 0x0

    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient$6;

    move-object v1, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient$6;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/io/OutputStream;Ljava/io/File;Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-direct {p0, p1, v9, v6, v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    move-object v8, v5

    .line 538
    .end local v2    # "fout":Ljava/io/OutputStream;
    .end local v5    # "ret":Lcom/koushikdutta/async/future/SimpleFuture;, "Lcom/koushikdutta/async/future/SimpleFuture<Ljava/io/File;>;"
    .end local v6    # "cancel":Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;
    .local v8, "ret":Ljava/lang/Object;, "Lcom/koushikdutta/async/future/SimpleFuture<Ljava/io/File;>;"
    :goto_0
    return-object v8

    .line 467
    .end local v8    # "ret":Ljava/lang/Object;, "Lcom/koushikdutta/async/future/SimpleFuture<Ljava/io/File;>;"
    :catch_0
    move-exception v7

    .line 468
    .local v7, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v5}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 469
    .restart local v5    # "ret":Lcom/koushikdutta/async/future/SimpleFuture;, "Lcom/koushikdutta/async/future/SimpleFuture<Ljava/io/File;>;"
    invoke-virtual {v5, v7}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    move-object v8, v5

    .line 470
    .restart local v8    # "ret":Ljava/lang/Object;, "Lcom/koushikdutta/async/future/SimpleFuture<Ljava/io/File;>;"
    goto :goto_0
.end method

.method public executeJSONArray(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$JSONArrayCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .param p1, "req"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "callback"    # Lcom/koushikdutta/async/http/AsyncHttpClient$JSONArrayCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$JSONArrayCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    new-instance v0, Lcom/koushikdutta/async/parser/JSONArrayParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/JSONArrayParser;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/parser/AsyncParser;Lcom/koushikdutta/async/http/callback/RequestCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object v0

    return-object v0
.end method

.method public executeJSONObject(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$JSONObjectCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .param p1, "req"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "callback"    # Lcom/koushikdutta/async/http/AsyncHttpClient$JSONObjectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$JSONObjectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    new-instance v0, Lcom/koushikdutta/async/parser/JSONObjectParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/JSONObjectParser;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/parser/AsyncParser;Lcom/koushikdutta/async/http/callback/RequestCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object v0

    return-object v0
.end method

.method public executeString(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .param p1, "req"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "callback"    # Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    new-instance v0, Lcom/koushikdutta/async/parser/StringParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/StringParser;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/parser/AsyncParser;Lcom/koushikdutta/async/http/callback/RequestCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object v0

    return-object v0
.end method

.method public getMiddleware()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSSLSocketMiddleware()Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->sslSocketMiddleware:Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    return-object v0
.end method

.method public getSocketMiddleware()Lcom/koushikdutta/async/http/AsyncSocketMiddleware;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->socketMiddleware:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    return-object v0
.end method

.method public insertMiddleware(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V
    .locals 2
    .param p1, "middleware"    # Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient;->mMiddleware:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 59
    return-void
.end method

.method public websocket(Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 3
    .param p1, "req"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Lcom/koushikdutta/async/http/WebSocket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 576
    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/WebSocketImpl;->addWebSocketUpgradeHeaders(Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;)V

    .line 577
    new-instance v1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 578
    .local v1, "ret":Lcom/koushikdutta/async/future/SimpleFuture;, "Lcom/koushikdutta/async/future/SimpleFuture<Lcom/koushikdutta/async/http/WebSocket;>;"
    new-instance v2, Lcom/koushikdutta/async/http/AsyncHttpClient$8;

    invoke-direct {v2, p0, v1, p3, p1}, Lcom/koushikdutta/async/http/AsyncHttpClient$8;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    invoke-virtual {p0, p1, v2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    .line 602
    .local v0, "connect":Lcom/koushikdutta/async/future/Cancellable;
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;

    .line 603
    return-object v1
.end method

.method public websocket(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;",
            ")",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Lcom/koushikdutta/async/http/WebSocket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 608
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpGet;

    const-string v1, "ws://"

    const-string v2, "http://"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wss://"

    const-string v3, "https://"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpGet;-><init>(Ljava/lang/String;)V

    .line 609
    .local v0, "get":Lcom/koushikdutta/async/http/AsyncHttpGet;
    invoke-virtual {p0, v0, p2, p3}, Lcom/koushikdutta/async/http/AsyncHttpClient;->websocket(Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/String;Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object v1

    return-object v1
.end method
