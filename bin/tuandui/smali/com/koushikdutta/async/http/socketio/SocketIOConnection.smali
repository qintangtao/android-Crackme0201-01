.class Lcom/koushikdutta/async/http/socketio/SocketIOConnection;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;
    }
.end annotation


# instance fields
.field ackCount:I

.field acknowledges:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/socketio/Acknowledge;",
            ">;"
        }
    .end annotation
.end field

.field clients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/async/http/socketio/SocketIOClient;",
            ">;"
        }
    .end annotation
.end field

.field connecting:Lcom/koushikdutta/async/future/Cancellable;

.field heartbeat:I

.field httpClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field reconnectDelay:J

.field request:Lcom/koushikdutta/async/http/socketio/SocketIORequest;

.field transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/socketio/SocketIORequest;)V
    .locals 2
    .param p1, "httpClient"    # Lcom/koushikdutta/async/http/AsyncHttpClient;
    .param p2, "request"    # Lcom/koushikdutta/async/http/socketio/SocketIORequest;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->clients:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->acknowledges:Ljava/util/Hashtable;

    .line 222
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reconnectDelay:J

    .line 38
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->httpClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    .line 39
    iput-object p2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->request:Lcom/koushikdutta/async/http/socketio/SocketIORequest;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reportDisconnect(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->attach()V

    return-void
.end method

.method static synthetic access$2(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->select(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V

    return-void
.end method

.method static synthetic access$3(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reportConnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/socketio/Acknowledge;
    .locals 1

    .prologue
    .line 321
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->acknowledge(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/socketio/Acknowledge;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reportString(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    return-void
.end method

.method static synthetic access$6(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Lorg/json/JSONObject;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reportJson(Ljava/lang/String;Lorg/json/JSONObject;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    return-void
.end method

.method static synthetic access$7(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reportEvent(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    return-void
.end method

.method static synthetic access$8(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private acknowledge(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/socketio/Acknowledge;
    .locals 3
    .param p1, "_messageId"    # Ljava/lang/String;
    .param p2, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    const/4 v1, 0x0

    .line 327
    :goto_0
    return-object v1

    .line 325
    :cond_0
    const-string v1, "\\+$"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "messageId":Ljava/lang/String;
    new-instance v1, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;

    invoke-direct {v1, p0, p2, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private attach()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->heartbeats()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->setupHeartbeat()V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    new-instance v1, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$12;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$12;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 363
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    new-instance v1, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$13;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$13;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->setStringCallback(Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;)V

    .line 436
    const/4 v0, 0x0

    new-instance v1, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$14;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$14;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V

    invoke-direct {p0, v0, v1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->select(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V

    .line 445
    return-void
.end method

.method private delayReconnect()V
    .locals 6

    .prologue
    .line 197
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->clients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    const/4 v1, 0x0

    .line 203
    .local v1, "disconnected":Z
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->clients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 210
    :goto_1
    if-eqz v1, :cond_0

    .line 213
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->httpClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v2

    new-instance v3, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$4;

    invoke-direct {v3, p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$4;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V

    .line 218
    iget-wide v4, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reconnectDelay:J

    .line 213
    invoke-virtual {v2, v3, v4, v5}, Lcom/koushikdutta/async/AsyncServer;->postDelayed(Ljava/lang/Runnable;J)Ljava/lang/Object;

    .line 219
    iget-wide v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reconnectDelay:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reconnectDelay:J

    goto :goto_0

    .line 203
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    .line 204
    .local v0, "client":Lcom/koushikdutta/async/http/socketio/SocketIOClient;
    iget-boolean v3, v0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->disconnected:Z

    if-eqz v3, :cond_2

    .line 205
    const/4 v1, 0x1

    .line 206
    goto :goto_1
.end method

.method private reportConnect(Ljava/lang/String;)V
    .locals 1
    .param p1, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 252
    new-instance v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$6;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$6;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->select(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V

    .line 277
    return-void
.end method

.method private reportDisconnect(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 224
    if-eqz p1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->request:Lcom/koushikdutta/async/http/socketio/SocketIORequest;

    const-string v1, "socket.io disconnected"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/socketio/SocketIORequest;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 230
    :goto_0
    const/4 v0, 0x0

    new-instance v1, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$5;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$5;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/Exception;)V

    invoke-direct {p0, v0, v1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->select(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V

    .line 248
    invoke-direct {p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->delayReconnect()V

    .line 249
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->request:Lcom/koushikdutta/async/http/socketio/SocketIORequest;

    const-string v1, "socket.io disconnected"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/socketio/SocketIORequest;->logi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "endpoint"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 311
    new-instance v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$10;

    invoke-direct {v0, p0, p2}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$10;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->select(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V

    .line 319
    return-void
.end method

.method private reportEvent(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 1
    .param p1, "endpoint"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "arguments"    # Lorg/json/JSONArray;
    .param p4, "acknowledge"    # Lcom/koushikdutta/async/http/socketio/Acknowledge;

    .prologue
    .line 302
    new-instance v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$9;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$9;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Lorg/json/JSONArray;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->select(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V

    .line 308
    return-void
.end method

.method private reportJson(Ljava/lang/String;Lorg/json/JSONObject;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 1
    .param p1, "endpoint"    # Ljava/lang/String;
    .param p2, "jsonMessage"    # Lorg/json/JSONObject;
    .param p3, "acknowledge"    # Lcom/koushikdutta/async/http/socketio/Acknowledge;

    .prologue
    .line 280
    new-instance v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$7;

    invoke-direct {v0, p0, p2, p3}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$7;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Lorg/json/JSONObject;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->select(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V

    .line 288
    return-void
.end method

.method private reportString(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 1
    .param p1, "endpoint"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "acknowledge"    # Lcom/koushikdutta/async/http/socketio/Acknowledge;

    .prologue
    .line 291
    new-instance v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$8;

    invoke-direct {v0, p0, p2, p3}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$8;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->select(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V

    .line 299
    return-void
.end method

.method private select(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V
    .locals 3
    .param p1, "endpoint"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;

    .prologue
    .line 189
    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->clients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 194
    return-void

    .line 189
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    .line 190
    .local v0, "client":Lcom/koushikdutta/async/http/socketio/SocketIOClient;
    if-eqz p1, :cond_2

    iget-object v2, v0, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->endpoint:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    :cond_2
    invoke-interface {p2, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;->onSelect(Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V

    goto :goto_0
.end method


# virtual methods
.method public connect(Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V
    .locals 5
    .param p1, "client"    # Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->clients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->clients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    const-string v1, "1::%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->endpoint:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->send(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public disconnect(Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V
    .locals 8
    .param p1, "client"    # Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    .prologue
    const/4 v7, 0x0

    .line 65
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->clients:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 68
    const/4 v0, 0x1

    .line 69
    .local v0, "needsEndpointDisconnect":Z
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->clients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 79
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    const-string v3, "0::%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->endpoint:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->send(Ljava/lang/String;)V

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->clients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    if-nez v2, :cond_5

    .line 90
    :cond_2
    :goto_1
    return-void

    .line 69
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    .line 73
    .local v1, "other":Lcom/koushikdutta/async/http/socketio/SocketIOClient;
    iget-object v3, v1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->endpoint:Ljava/lang/String;

    iget-object v4, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->endpoint:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->endpoint:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    :cond_4
    const/4 v0, 0x0

    .line 75
    goto :goto_0

    .line 86
    .end local v1    # "other":Lcom/koushikdutta/async/http/socketio/SocketIOClient;
    :cond_5
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    invoke-interface {v2, v7}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->setStringCallback(Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;)V

    .line 87
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    invoke-interface {v2, v7}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 88
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    invoke-interface {v2}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->disconnect()V

    .line 89
    iput-object v7, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    goto :goto_1
.end method

.method public emitRaw(ILcom/koushikdutta/async/http/socketio/SocketIOClient;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "client"    # Lcom/koushikdutta/async/http/socketio/SocketIOClient;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "acknowledge"    # Lcom/koushikdutta/async/http/socketio/Acknowledge;

    .prologue
    .line 49
    const-string v0, ""

    .line 50
    .local v0, "ack":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->ackCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->ackCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "id":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->acknowledges:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    const-string v3, "%d:%s:%s:%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    iget-object v6, p2, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->endpoint:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->send(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reconnect(Lcom/koushikdutta/async/future/DependentCancellable;)V
    .locals 4
    .param p1, "child"    # Lcom/koushikdutta/async/future/DependentCancellable;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->connecting:Lcom/koushikdutta/async/future/Cancellable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->connecting:Lcom/koushikdutta/async/future/Cancellable;

    invoke-interface {v1}, Lcom/koushikdutta/async/future/Cancellable;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->connecting:Lcom/koushikdutta/async/future/Cancellable;

    invoke-interface {v1}, Lcom/koushikdutta/async/future/Cancellable;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 100
    if-eqz p1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->connecting:Lcom/koushikdutta/async/future/Cancellable;

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/future/DependentCancellable;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/DependentCancellable;

    goto :goto_0

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->request:Lcom/koushikdutta/async/http/socketio/SocketIORequest;

    const-string v2, "Reconnecting socket.io"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/socketio/SocketIORequest;->logi(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->httpClient:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->request:Lcom/koushikdutta/async/http/socketio/SocketIORequest;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/koushikdutta/async/http/AsyncHttpClient;->executeString(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object v1

    .line 108
    new-instance v2, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$1;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/future/Future;->then(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/FutureCallback;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$1;

    .line 152
    new-instance v2, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$1;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object v0

    .line 166
    .local v0, "connecting":Lcom/koushikdutta/async/future/Cancellable;
    if-eqz p1, :cond_0

    .line 167
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/future/DependentCancellable;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/DependentCancellable;

    goto :goto_0
.end method

.method setupHeartbeat()V
    .locals 2

    .prologue
    .line 171
    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    .line 172
    .local v1, "ts":Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;
    new-instance v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$3;

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$3;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;)V

    .line 181
    .local v0, "heartbeatRunner":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 182
    return-void
.end method
