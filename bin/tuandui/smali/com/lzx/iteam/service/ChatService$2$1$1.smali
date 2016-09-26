.class Lcom/lzx/iteam/service/ChatService$2$1$1;
.super Ljava/lang/Object;
.source "ChatService.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/DisconnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/service/ChatService$2$1;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lzx/iteam/service/ChatService$2$1;

.field private final synthetic val$client:Lcom/koushikdutta/async/http/socketio/SocketIOClient;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/service/ChatService$2$1;Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/service/ChatService$2$1$1;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;

    iput-object p2, p0, Lcom/lzx/iteam/service/ChatService$2$1$1;->val$client:Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/service/ChatService$2$1$1;)Lcom/lzx/iteam/service/ChatService$2$1;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService$2$1$1;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;

    return-object v0
.end method


# virtual methods
.method public onDisconnect(Ljava/lang/Exception;)V
    .locals 8
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 205
    const-string v4, "Service"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ChatService---onDisconnect--"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v4, p0, Lcom/lzx/iteam/service/ChatService$2$1$1;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;
    invoke-static {v4}, Lcom/lzx/iteam/service/ChatService$2$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1;)Lcom/lzx/iteam/service/ChatService$2;

    move-result-object v4

    # getter for: Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;
    invoke-static {v4}, Lcom/lzx/iteam/service/ChatService$2;->access$0(Lcom/lzx/iteam/service/ChatService$2;)Lcom/lzx/iteam/service/ChatService;

    move-result-object v4

    # getter for: Lcom/lzx/iteam/service/ChatService;->reconnectCount:I
    invoke-static {v4}, Lcom/lzx/iteam/service/ChatService;->access$10(Lcom/lzx/iteam/service/ChatService;)I

    move-result v4

    const/16 v5, 0xa

    if-gt v4, v5, :cond_0

    .line 207
    iget-object v4, p0, Lcom/lzx/iteam/service/ChatService$2$1$1;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;
    invoke-static {v4}, Lcom/lzx/iteam/service/ChatService$2$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1;)Lcom/lzx/iteam/service/ChatService$2;

    move-result-object v4

    # getter for: Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;
    invoke-static {v4}, Lcom/lzx/iteam/service/ChatService$2;->access$0(Lcom/lzx/iteam/service/ChatService$2;)Lcom/lzx/iteam/service/ChatService;

    move-result-object v4

    # getter for: Lcom/lzx/iteam/service/ChatService;->mSocketIOClient:Lcom/koushikdutta/async/http/socketio/SocketIOClient;
    invoke-static {v4}, Lcom/lzx/iteam/service/ChatService;->access$9(Lcom/lzx/iteam/service/ChatService;)Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->reconnect()V

    .line 208
    iget-object v4, p0, Lcom/lzx/iteam/service/ChatService$2$1$1;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;
    invoke-static {v4}, Lcom/lzx/iteam/service/ChatService$2$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1;)Lcom/lzx/iteam/service/ChatService$2;

    move-result-object v4

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

    .line 210
    .local v3, "userName":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 211
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 212
    .local v2, "object":Lorg/json/JSONObject;
    const-string v4, "un"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 214
    iget-object v4, p0, Lcom/lzx/iteam/service/ChatService$2$1$1;->val$client:Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    const-string v5, "reg"

    invoke-virtual {v4, v5, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->emit(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 215
    const-string v4, "Service"

    const-string v5, "ChatService---\u6ce8\u518creg"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "object":Lorg/json/JSONObject;
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/service/ChatService$2$1$1;->val$client:Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    const-string v5, "sync"

    new-instance v6, Lcom/lzx/iteam/service/ChatService$2$1$1$1;

    iget-object v7, p0, Lcom/lzx/iteam/service/ChatService$2$1$1;->val$client:Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    invoke-direct {v6, p0, v7}, Lcom/lzx/iteam/service/ChatService$2$1$1$1;-><init>(Lcom/lzx/iteam/service/ChatService$2$1$1;Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V

    invoke-virtual {v4, v5, v6}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->on(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/EventCallback;)V

    .line 296
    iget-object v4, p0, Lcom/lzx/iteam/service/ChatService$2$1$1;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;
    invoke-static {v4}, Lcom/lzx/iteam/service/ChatService$2$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1;)Lcom/lzx/iteam/service/ChatService$2;

    move-result-object v4

    # getter for: Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;
    invoke-static {v4}, Lcom/lzx/iteam/service/ChatService$2;->access$0(Lcom/lzx/iteam/service/ChatService$2;)Lcom/lzx/iteam/service/ChatService;

    move-result-object v4

    # getter for: Lcom/lzx/iteam/service/ChatService;->mSocketIOClient:Lcom/koushikdutta/async/http/socketio/SocketIOClient;
    invoke-static {v4}, Lcom/lzx/iteam/service/ChatService;->access$9(Lcom/lzx/iteam/service/ChatService;)Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 297
    iget-object v4, p0, Lcom/lzx/iteam/service/ChatService$2$1$1;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;
    invoke-static {v4}, Lcom/lzx/iteam/service/ChatService$2$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1;)Lcom/lzx/iteam/service/ChatService$2;

    move-result-object v4

    # getter for: Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;
    invoke-static {v4}, Lcom/lzx/iteam/service/ChatService$2;->access$0(Lcom/lzx/iteam/service/ChatService$2;)Lcom/lzx/iteam/service/ChatService;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/lzx/iteam/service/ChatService;->access$12(Lcom/lzx/iteam/service/ChatService;I)V

    .line 302
    .end local v3    # "userName":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 216
    .restart local v3    # "userName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e1":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 299
    .end local v1    # "e1":Lorg/json/JSONException;
    :cond_1
    iget-object v4, p0, Lcom/lzx/iteam/service/ChatService$2$1$1;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;
    invoke-static {v4}, Lcom/lzx/iteam/service/ChatService$2$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1;)Lcom/lzx/iteam/service/ChatService$2;

    move-result-object v4

    # getter for: Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;
    invoke-static {v4}, Lcom/lzx/iteam/service/ChatService$2;->access$0(Lcom/lzx/iteam/service/ChatService$2;)Lcom/lzx/iteam/service/ChatService;

    move-result-object v4

    iget-object v5, p0, Lcom/lzx/iteam/service/ChatService$2$1$1;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;
    invoke-static {v5}, Lcom/lzx/iteam/service/ChatService$2$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1;)Lcom/lzx/iteam/service/ChatService$2;

    move-result-object v5

    # getter for: Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;
    invoke-static {v5}, Lcom/lzx/iteam/service/ChatService$2;->access$0(Lcom/lzx/iteam/service/ChatService$2;)Lcom/lzx/iteam/service/ChatService;

    move-result-object v5

    # getter for: Lcom/lzx/iteam/service/ChatService;->reconnectCount:I
    invoke-static {v5}, Lcom/lzx/iteam/service/ChatService;->access$10(Lcom/lzx/iteam/service/ChatService;)I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    invoke-static {v5, v7}, Lcom/lzx/iteam/service/ChatService;->access$12(Lcom/lzx/iteam/service/ChatService;I)V

    invoke-static {v4, v6}, Lcom/lzx/iteam/service/ChatService;->access$12(Lcom/lzx/iteam/service/ChatService;I)V

    goto :goto_1
.end method
