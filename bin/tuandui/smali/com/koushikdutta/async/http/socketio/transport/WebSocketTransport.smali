.class public Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;
.super Ljava/lang/Object;
.source "WebSocketTransport.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;


# instance fields
.field private stringCallback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

.field private webSocket:Lcom/koushikdutta/async/http/WebSocket;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/WebSocket;)V
    .locals 2
    .param p1, "webSocket"    # Lcom/koushikdutta/async/http/WebSocket;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    .line 15
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    new-instance v1, Lcom/koushikdutta/async/NullDataCallback;

    invoke-direct {v1}, Lcom/koushikdutta/async/NullDataCallback;-><init>()V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/WebSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 16
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/WebSocket;->close()V

    .line 31
    return-void
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/WebSocket;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public heartbeats()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/WebSocket;->isOpen()Z

    move-result v0

    return v0
.end method

.method public send(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/WebSocket;->send(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1
    .param p1, "handler"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/WebSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 26
    return-void
.end method

.method public setStringCallback(Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->stringCallback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

    if-ne v0, p1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 48
    :cond_0
    if-nez p1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/WebSocket;->setStringCallback(Lcom/koushikdutta/async/http/WebSocket$StringCallback;)V

    .line 59
    :goto_1
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->stringCallback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->webSocket:Lcom/koushikdutta/async/http/WebSocket;

    new-instance v1, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport$1;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport$1;-><init>(Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/WebSocket;->setStringCallback(Lcom/koushikdutta/async/http/WebSocket$StringCallback;)V

    goto :goto_1
.end method
