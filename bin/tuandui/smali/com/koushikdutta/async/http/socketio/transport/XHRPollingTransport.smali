.class public Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;
.super Ljava/lang/Object;
.source "XHRPollingTransport.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = "\ufffd"


# instance fields
.field private client:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field private closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field private connected:Z

.field private sessionUrl:Landroid/net/Uri;

.field private stringCallback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/lang/String;)V
    .locals 1
    .param p1, "client"    # Lcom/koushikdutta/async/http/AsyncHttpClient;
    .param p2, "sessionUrl"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->client:Lcom/koushikdutta/async/http/AsyncHttpClient;

    .line 26
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->sessionUrl:Landroid/net/Uri;

    .line 28
    invoke-direct {p0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->doLongPolling()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->connected:Z

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->close(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->sendResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->doLongPolling()V

    return-void
.end method

.method private close(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 51
    :cond_0
    return-void
.end method

.method private computedRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "currentTime":Ljava/lang/String;
    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->sessionUrl:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "t"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    return-object v1
.end method

.method private doLongPolling()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->client:Lcom/koushikdutta/async/http/AsyncHttpClient;

    new-instance v1, Lcom/koushikdutta/async/http/AsyncHttpGet;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->computedRequestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpGet;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$2;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$2;-><init>(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;)V

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->executeString(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)Lcom/koushikdutta/async/future/Future;

    .line 103
    return-void
.end method

.method private postMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string v1, "5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpPost;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->computedRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpPost;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "request":Lcom/koushikdutta/async/http/AsyncHttpRequest;
    new-instance v1, Lcom/koushikdutta/async/http/body/StringBody;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/http/body/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)V

    .line 87
    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->client:Lcom/koushikdutta/async/http/AsyncHttpClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->executeString(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)Lcom/koushikdutta/async/future/Future;

    goto :goto_0
.end method

.method private sendResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->stringCallback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

    if-nez v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const-string v2, "\ufffd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 110
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->stringCallback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

    invoke-interface {v2, p1}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;->onStringAvailable(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_2
    const-string v2, "\ufffd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "results":[Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->stringCallback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

    add-int/lit8 v3, v0, 0x1

    aget-object v3, v1, v3

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;->onStringAvailable(Ljava/lang/String;)V

    .line 115
    add-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->connected:Z

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->close(Ljava/lang/Exception;)V

    .line 46
    return-void
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->client:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public heartbeats()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->connected:Z

    return v0
.end method

.method public send(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string v1, "5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->postMessage(Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpPost;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->computedRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpPost;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "request":Lcom/koushikdutta/async/http/AsyncHttpRequest;
    new-instance v1, Lcom/koushikdutta/async/http/body/StringBody;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/http/body/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)V

    .line 68
    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->client:Lcom/koushikdutta/async/http/AsyncHttpClient;

    new-instance v2, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$1;-><init>(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;)V

    invoke-virtual {v1, v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->executeString(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)Lcom/koushikdutta/async/future/Future;

    goto :goto_0
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0
    .param p1, "handler"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 40
    return-void
.end method

.method public setStringCallback(Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->stringCallback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

    .line 132
    return-void
.end method
