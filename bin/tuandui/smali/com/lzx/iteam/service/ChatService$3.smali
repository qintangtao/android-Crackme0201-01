.class Lcom/lzx/iteam/service/ChatService$3;
.super Landroid/content/BroadcastReceiver;
.source "ChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/service/ChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/service/ChatService;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/service/ChatService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/service/ChatService$3;->this$0:Lcom/lzx/iteam/service/ChatService;

    .line 567
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 570
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    iget-object v2, p0, Lcom/lzx/iteam/service/ChatService$3;->this$0:Lcom/lzx/iteam/service/ChatService;

    .line 573
    iget-object v1, p0, Lcom/lzx/iteam/service/ChatService$3;->this$0:Lcom/lzx/iteam/service/ChatService;

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/service/ChatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 572
    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-static {v2, v1}, Lcom/lzx/iteam/service/ChatService;->access$14(Lcom/lzx/iteam/service/ChatService;Landroid/net/ConnectivityManager;)V

    .line 574
    iget-object v1, p0, Lcom/lzx/iteam/service/ChatService$3;->this$0:Lcom/lzx/iteam/service/ChatService;

    iget-object v2, p0, Lcom/lzx/iteam/service/ChatService$3;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->connectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/lzx/iteam/service/ChatService;->access$15(Lcom/lzx/iteam/service/ChatService;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lzx/iteam/service/ChatService;->access$16(Lcom/lzx/iteam/service/ChatService;Landroid/net/NetworkInfo;)V

    .line 575
    iget-object v1, p0, Lcom/lzx/iteam/service/ChatService$3;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->info:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/lzx/iteam/service/ChatService;->access$17(Lcom/lzx/iteam/service/ChatService;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lzx/iteam/service/ChatService$3;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->info:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/lzx/iteam/service/ChatService;->access$17(Lcom/lzx/iteam/service/ChatService;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 576
    iget-object v1, p0, Lcom/lzx/iteam/service/ChatService$3;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->mSocketIOClient:Lcom/koushikdutta/async/http/socketio/SocketIOClient;
    invoke-static {v1}, Lcom/lzx/iteam/service/ChatService;->access$9(Lcom/lzx/iteam/service/ChatService;)Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/service/ChatService$3;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->mSocketIOClient:Lcom/koushikdutta/async/http/socketio/SocketIOClient;
    invoke-static {v1}, Lcom/lzx/iteam/service/ChatService;->access$9(Lcom/lzx/iteam/service/ChatService;)Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/lzx/iteam/service/ChatService$3;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->mSocketIOClient:Lcom/koushikdutta/async/http/socketio/SocketIOClient;
    invoke-static {v1}, Lcom/lzx/iteam/service/ChatService;->access$9(Lcom/lzx/iteam/service/ChatService;)Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->reconnect()V

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/service/ChatService$3;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->mSocketIOClient:Lcom/koushikdutta/async/http/socketio/SocketIOClient;
    invoke-static {v1}, Lcom/lzx/iteam/service/ChatService;->access$9(Lcom/lzx/iteam/service/ChatService;)Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/lzx/iteam/service/ChatService$3;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->mSocketIOClient:Lcom/koushikdutta/async/http/socketio/SocketIOClient;
    invoke-static {v1}, Lcom/lzx/iteam/service/ChatService;->access$9(Lcom/lzx/iteam/service/ChatService;)Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->disconnect()V

    goto :goto_0
.end method
