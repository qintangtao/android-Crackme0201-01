.class Lcom/koushikdutta/async/AsyncServer$10;
.super Ljava/lang/Object;
.source "AsyncServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncServer;->connectDatagram(Ljava/lang/String;I)Lcom/koushikdutta/async/AsyncDatagramSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/AsyncServer;

.field private final synthetic val$handler:Lcom/koushikdutta/async/AsyncDatagramSocket;

.field private final synthetic val$host:Ljava/lang/String;

.field private final synthetic val$port:I

.field private final synthetic val$socket:Ljava/nio/channels/DatagramChannel;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ILcom/koushikdutta/async/AsyncDatagramSocket;Ljava/nio/channels/DatagramChannel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$10;->this$0:Lcom/koushikdutta/async/AsyncServer;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$10;->val$host:Ljava/lang/String;

    iput p3, p0, Lcom/koushikdutta/async/AsyncServer$10;->val$port:I

    iput-object p4, p0, Lcom/koushikdutta/async/AsyncServer$10;->val$handler:Lcom/koushikdutta/async/AsyncDatagramSocket;

    iput-object p5, p0, Lcom/koushikdutta/async/AsyncServer$10;->val$socket:Ljava/nio/channels/DatagramChannel;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 445
    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer$10;->val$host:Ljava/lang/String;

    iget v3, p0, Lcom/koushikdutta/async/AsyncServer$10;->val$port:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 446
    .local v1, "remote":Ljava/net/SocketAddress;
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer$10;->this$0:Lcom/koushikdutta/async/AsyncServer;

    iget-object v3, p0, Lcom/koushikdutta/async/AsyncServer$10;->val$handler:Lcom/koushikdutta/async/AsyncDatagramSocket;

    # invokes: Lcom/koushikdutta/async/AsyncServer;->handleSocket(Lcom/koushikdutta/async/AsyncNetworkSocket;)V
    invoke-static {v2, v3}, Lcom/koushikdutta/async/AsyncServer;->access$3(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/AsyncNetworkSocket;)V

    .line 447
    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer$10;->val$socket:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v2, v1}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    .end local v1    # "remote":Ljava/net/SocketAddress;
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "NIO"

    const-string v3, "Datagram error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    .line 451
    iget-object v4, p0, Lcom/koushikdutta/async/AsyncServer$10;->val$socket:Ljava/nio/channels/DatagramChannel;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    goto :goto_0
.end method
