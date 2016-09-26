.class Lcom/lzx/iteam/service/ChatService$2$1;
.super Ljava/lang/Object;
.source "ChatService.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/service/ChatService$2;->createSocketIOConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/service/ChatService$2;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/service/ChatService$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/service/ChatService$2$1;)Lcom/lzx/iteam/service/ChatService$2;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;

    return-object v0
.end method


# virtual methods
.method public onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V
    .locals 7
    .param p1, "ex"    # Ljava/lang/Exception;
    .param p2, "client"    # Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 195
    const-string v4, "Service"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ChatService---Exception--"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v4, "Service"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ChatService---client--"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 392
    :goto_0
    return-void

    .line 200
    :cond_0
    const-string v4, "Service"

    const-string v5, "ChatService---connect"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v4, p0, Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;

    # getter for: Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;
    invoke-static {v4}, Lcom/lzx/iteam/service/ChatService$2;->access$0(Lcom/lzx/iteam/service/ChatService$2;)Lcom/lzx/iteam/service/ChatService;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/lzx/iteam/service/ChatService;->access$8(Lcom/lzx/iteam/service/ChatService;Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V

    .line 202
    iget-object v4, p0, Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;

    # getter for: Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;
    invoke-static {v4}, Lcom/lzx/iteam/service/ChatService$2;->access$0(Lcom/lzx/iteam/service/ChatService$2;)Lcom/lzx/iteam/service/ChatService;

    move-result-object v4

    # getter for: Lcom/lzx/iteam/service/ChatService;->mSocketIOClient:Lcom/koushikdutta/async/http/socketio/SocketIOClient;
    invoke-static {v4}, Lcom/lzx/iteam/service/ChatService;->access$9(Lcom/lzx/iteam/service/ChatService;)Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    move-result-object v4

    new-instance v5, Lcom/lzx/iteam/service/ChatService$2$1$1;

    invoke-direct {v5, p0, p2}, Lcom/lzx/iteam/service/ChatService$2$1$1;-><init>(Lcom/lzx/iteam/service/ChatService$2$1;Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V

    invoke-virtual {v4, v5}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->setDisconnectCallback(Lcom/koushikdutta/async/http/socketio/DisconnectCallback;)V

    .line 305
    iget-object v4, p0, Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;

    # getter for: Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;
    invoke-static {v4}, Lcom/lzx/iteam/service/ChatService$2;->access$0(Lcom/lzx/iteam/service/ChatService$2;)Lcom/lzx/iteam/service/ChatService;

    move-result-object v4

    # getter for: Lcom/lzx/iteam/service/ChatService;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v4}, Lcom/lzx/iteam/service/ChatService;->access$11(Lcom/lzx/iteam/service/ChatService;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v4

    const-string v5, "useid"

    const-string v6, "\uff0d1"

    invoke-virtual {v4, v5, v6}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, "userName":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 308
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 309
    .local v2, "object":Lorg/json/JSONObject;
    const-string v4, "un"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 311
    const-string v4, "reg"

    invoke-virtual {p2, v4, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->emit(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 312
    const-string v4, "Service"

    const-string v5, "ChatService---\u6ce8\u518creg"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "object":Lorg/json/JSONObject;
    :goto_1
    const-string v4, "sync"

    new-instance v5, Lcom/lzx/iteam/service/ChatService$2$1$2;

    invoke-direct {v5, p0, p2}, Lcom/lzx/iteam/service/ChatService$2$1$2;-><init>(Lcom/lzx/iteam/service/ChatService$2$1;Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V

    invoke-virtual {p2, v4, v5}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->on(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/EventCallback;)V

    goto :goto_0

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
