.class Lcom/koushikdutta/async/AsyncServer$ConnectFuture;
.super Lcom/koushikdutta/async/future/SimpleFuture;
.source "AsyncServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/AsyncServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/SimpleFuture",
        "<",
        "Lcom/koushikdutta/async/AsyncNetworkSocket;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lcom/koushikdutta/async/callback/ConnectCallback;

.field socket:Ljava/nio/channels/SocketChannel;

.field final synthetic this$0:Lcom/koushikdutta/async/AsyncServer;


# direct methods
.method private constructor <init>(Lcom/koushikdutta/async/AsyncServer;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->this$0:Lcom/koushikdutta/async/AsyncServer;

    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncServer$ConnectFuture;)V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;-><init>(Lcom/koushikdutta/async/AsyncServer;)V

    return-void
.end method


# virtual methods
.method protected cancelCleanup()V
    .locals 1

    .prologue
    .line 322
    invoke-super {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->cancelCleanup()V

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->socket:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$ConnectFuture;->socket:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
