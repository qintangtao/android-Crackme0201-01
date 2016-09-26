.class Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reconnect(Lcom/koushikdutta/async/future/DependentCancellable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback",
        "<",
        "Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "result"    # Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    # invokes: Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reportDisconnect(Ljava/lang/Exception;)V
    invoke-static {v0, p1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->access$0(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/Exception;)V

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    const-wide/16 v2, 0x3e8

    iput-wide v2, v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reconnectDelay:J

    .line 161
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iput-object p2, v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    .line 162
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    # invokes: Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->attach()V
    invoke-static {v0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->access$1(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V

    goto :goto_0
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;)V

    return-void
.end method
