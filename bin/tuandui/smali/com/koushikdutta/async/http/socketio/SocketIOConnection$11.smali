.class Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/Acknowledge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->acknowledge(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/socketio/Acknowledge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

.field private final synthetic val$endpoint:Ljava/lang/String;

.field private final synthetic val$messageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iput-object p2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;->val$endpoint:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;->val$messageId:Ljava/lang/String;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acknowledge(Lorg/json/JSONArray;)V
    .locals 7
    .param p1, "arguments"    # Lorg/json/JSONArray;

    .prologue
    .line 330
    const-string v0, ""

    .line 331
    .local v0, "data":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    :cond_0
    iget-object v3, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iget-object v2, v3, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    .line 334
    .local v2, "transport":Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;
    if-nez v2, :cond_1

    .line 335
    new-instance v1, Lcom/koushikdutta/async/http/socketio/SocketIOException;

    const-string v3, "not connected to server"

    invoke-direct {v1, v3}, Lcom/koushikdutta/async/http/socketio/SocketIOException;-><init>(Ljava/lang/String;)V

    .line 336
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iget-object v4, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;->val$endpoint:Ljava/lang/String;

    new-instance v5, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11$1;

    invoke-direct {v5, p0, v1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11$1;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;Ljava/lang/Exception;)V

    # invokes: Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->select(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V
    invoke-static {v3, v4, v5}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->access$2(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V

    .line 347
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 346
    :cond_1
    const-string v3, "6:::%s%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;->val$messageId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->send(Ljava/lang/String;)V

    goto :goto_0
.end method
