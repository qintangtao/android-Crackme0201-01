.class Lcom/koushikdutta/async/http/socketio/SocketIOConnection$6;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reportConnect(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$6;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V
    .locals 2
    .param p1, "client"    # Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    .prologue
    .line 255
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-boolean v1, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->connected:Z

    if-nez v1, :cond_2

    .line 259
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->connected:Z

    .line 260
    iget-object v0, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->connectCallback:Lcom/koushikdutta/async/http/socketio/ConnectCallback;

    .line 261
    .local v0, "callback":Lcom/koushikdutta/async/http/socketio/ConnectCallback;
    if-eqz v0, :cond_0

    .line 262
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/koushikdutta/async/http/socketio/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V

    goto :goto_0

    .line 264
    .end local v0    # "callback":Lcom/koushikdutta/async/http/socketio/ConnectCallback;
    :cond_2
    iget-boolean v1, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->disconnected:Z

    if-eqz v1, :cond_0

    .line 266
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->disconnected:Z

    .line 267
    iget-object v0, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->reconnectCallback:Lcom/koushikdutta/async/http/socketio/ReconnectCallback;

    .line 268
    .local v0, "callback":Lcom/koushikdutta/async/http/socketio/ReconnectCallback;
    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0}, Lcom/koushikdutta/async/http/socketio/ReconnectCallback;->onReconnect()V

    goto :goto_0
.end method