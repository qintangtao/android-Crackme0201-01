.class Lcom/lzx/iteam/service/ChatService$2$1$1$1;
.super Ljava/lang/Object;
.source "ChatService.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/EventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/service/ChatService$2$1$1;->onDisconnect(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/lzx/iteam/service/ChatService$2$1$1;

.field private final synthetic val$client:Lcom/koushikdutta/async/http/socketio/SocketIOClient;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/service/ChatService$2$1$1;Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/service/ChatService$2$1$1$1;->this$3:Lcom/lzx/iteam/service/ChatService$2$1$1;

    iput-object p2, p0, Lcom/lzx/iteam/service/ChatService$2$1$1$1;->val$client:Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/json/JSONArray;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 12
    .param p1, "argument"    # Lorg/json/JSONArray;
    .param p2, "acknowledge"    # Lcom/koushikdutta/async/http/socketio/Acknowledge;

    .prologue
    .line 223
    const-string v8, "Service"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ChatService---"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :try_start_0
    iget-object v8, p0, Lcom/lzx/iteam/service/ChatService$2$1$1$1;->val$client:Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    const-string v9, "ack"

    invoke-virtual {v8, v9, p1}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->emit(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 226
    const-string v8, "Service"

    const-string v9, "ChatService---ack"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 229
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const-string v9, "0"

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    const-string v10, "type"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v5, "mids":Ljava/lang/StringBuilder;
    const-string v8, "[\""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v2, v8, :cond_1

    .line 240
    const-string v8, "\"]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    new-instance v8, Lcom/lzx/iteam/service/ChatService$GetChatMsgTask;

    iget-object v9, p0, Lcom/lzx/iteam/service/ChatService$2$1$1$1;->this$3:Lcom/lzx/iteam/service/ChatService$2$1$1;

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1$1;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;
    invoke-static {v9}, Lcom/lzx/iteam/service/ChatService$2$1$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1$1;)Lcom/lzx/iteam/service/ChatService$2$1;

    move-result-object v9

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;
    invoke-static {v9}, Lcom/lzx/iteam/service/ChatService$2$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1;)Lcom/lzx/iteam/service/ChatService$2;

    move-result-object v9

    # getter for: Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;
    invoke-static {v9}, Lcom/lzx/iteam/service/ChatService$2;->access$0(Lcom/lzx/iteam/service/ChatService$2;)Lcom/lzx/iteam/service/ChatService;

    move-result-object v9

    iget-object v10, p0, Lcom/lzx/iteam/service/ChatService$2$1$1$1;->this$3:Lcom/lzx/iteam/service/ChatService$2$1$1;

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1$1;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;
    invoke-static {v10}, Lcom/lzx/iteam/service/ChatService$2$1$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1$1;)Lcom/lzx/iteam/service/ChatService$2$1;

    move-result-object v10

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;
    invoke-static {v10}, Lcom/lzx/iteam/service/ChatService$2$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1;)Lcom/lzx/iteam/service/ChatService$2;

    move-result-object v10

    # getter for: Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;
    invoke-static {v10}, Lcom/lzx/iteam/service/ChatService$2;->access$0(Lcom/lzx/iteam/service/ChatService$2;)Lcom/lzx/iteam/service/ChatService;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lcom/lzx/iteam/service/ChatService$GetChatMsgTask;-><init>(Lcom/lzx/iteam/service/ChatService;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/lzx/iteam/service/ChatService$GetChatMsgTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 293
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "mids":Ljava/lang/StringBuilder;
    :cond_0
    :goto_1
    return-void

    .line 233
    .restart local v2    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    .restart local v5    # "mids":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 234
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "mid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 235
    .local v6, "msgId":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v2, v8, :cond_2

    .line 237
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    .end local v2    # "i":I
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "mids":Ljava/lang/StringBuilder;
    .end local v6    # "msgId":Ljava/lang/String;
    :cond_3
    const-string v9, "1"

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    const-string v10, "type"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 244
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .restart local v5    # "mids":Ljava/lang/StringBuilder;
    const-string v8, "[\""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v2, v8, :cond_4

    .line 254
    const-string v8, "\"]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    new-instance v8, Lcom/lzx/iteam/service/ChatService$GetEventReplyMsgTask;

    iget-object v9, p0, Lcom/lzx/iteam/service/ChatService$2$1$1$1;->this$3:Lcom/lzx/iteam/service/ChatService$2$1$1;

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1$1;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;
    invoke-static {v9}, Lcom/lzx/iteam/service/ChatService$2$1$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1$1;)Lcom/lzx/iteam/service/ChatService$2$1;

    move-result-object v9

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;
    invoke-static {v9}, Lcom/lzx/iteam/service/ChatService$2$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1;)Lcom/lzx/iteam/service/ChatService$2;

    move-result-object v9

    # getter for: Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;
    invoke-static {v9}, Lcom/lzx/iteam/service/ChatService$2;->access$0(Lcom/lzx/iteam/service/ChatService$2;)Lcom/lzx/iteam/service/ChatService;

    move-result-object v9

    iget-object v10, p0, Lcom/lzx/iteam/service/ChatService$2$1$1$1;->this$3:Lcom/lzx/iteam/service/ChatService$2$1$1;

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1$1;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;
    invoke-static {v10}, Lcom/lzx/iteam/service/ChatService$2$1$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1$1;)Lcom/lzx/iteam/service/ChatService$2$1;

    move-result-object v10

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;
    invoke-static {v10}, Lcom/lzx/iteam/service/ChatService$2$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1;)Lcom/lzx/iteam/service/ChatService$2;

    move-result-object v10

    # getter for: Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;
    invoke-static {v10}, Lcom/lzx/iteam/service/ChatService$2;->access$0(Lcom/lzx/iteam/service/ChatService$2;)Lcom/lzx/iteam/service/ChatService;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lcom/lzx/iteam/service/ChatService$GetEventReplyMsgTask;-><init>(Lcom/lzx/iteam/service/ChatService;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/lzx/iteam/service/ChatService$GetEventReplyMsgTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 290
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "mids":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 247
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    .restart local v5    # "mids":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 248
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    const-string v8, "mid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 249
    .restart local v6    # "msgId":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v2, v8, :cond_5

    .line 251
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 256
    .end local v2    # "i":I
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "mids":Ljava/lang/StringBuilder;
    .end local v6    # "msgId":Ljava/lang/String;
    :cond_6
    const-string v9, "2"

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    const-string v10, "type"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 257
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 258
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 259
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;

    invoke-direct {v1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;-><init>()V

    .line 260
    .local v1, "eventNewData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    const-string v8, "mid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setEventId(Ljava/lang/String;)V

    .line 261
    iget-object v8, p0, Lcom/lzx/iteam/service/ChatService$2$1$1$1;->this$3:Lcom/lzx/iteam/service/ChatService$2$1$1;

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1$1;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService$2$1$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1$1;)Lcom/lzx/iteam/service/ChatService$2$1;

    move-result-object v8

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService$2$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1;)Lcom/lzx/iteam/service/ChatService$2;

    move-result-object v8

    # getter for: Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService$2;->access$0(Lcom/lzx/iteam/service/ChatService$2;)Lcom/lzx/iteam/service/ChatService;

    move-result-object v8

    # getter for: Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService;->access$1(Lcom/lzx/iteam/service/ChatService;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/lzx/iteam/service/ChatService$2$1$1$1;->this$3:Lcom/lzx/iteam/service/ChatService$2$1$1;

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1$1;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService$2$1$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1$1;)Lcom/lzx/iteam/service/ChatService$2$1;

    move-result-object v8

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService$2$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1;)Lcom/lzx/iteam/service/ChatService$2;

    move-result-object v8

    # getter for: Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService$2;->access$0(Lcom/lzx/iteam/service/ChatService$2;)Lcom/lzx/iteam/service/ChatService;

    move-result-object v8

    # getter for: Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService;->access$1(Lcom/lzx/iteam/service/ChatService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 262
    iget-object v8, p0, Lcom/lzx/iteam/service/ChatService$2$1$1$1;->this$3:Lcom/lzx/iteam/service/ChatService$2$1$1;

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1$1;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService$2$1$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1$1;)Lcom/lzx/iteam/service/ChatService$2$1;

    move-result-object v8

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService$2$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1;)Lcom/lzx/iteam/service/ChatService$2;

    move-result-object v8

    # getter for: Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService$2;->access$0(Lcom/lzx/iteam/service/ChatService$2;)Lcom/lzx/iteam/service/ChatService;

    move-result-object v8

    # getter for: Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService;->access$1(Lcom/lzx/iteam/service/ChatService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_8

    .line 257
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 262
    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/service/aidl/NewMessageInterface;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    .local v7, "newMessage":Lcom/lzx/iteam/service/aidl/NewMessageInterface;
    :try_start_2
    invoke-interface {v7, v1}, Lcom/lzx/iteam/service/aidl/NewMessageInterface;->onNewEvent(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 265
    :catch_1
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 272
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "eventNewData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    .end local v2    # "i":I
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "newMessage":Lcom/lzx/iteam/service/aidl/NewMessageInterface;
    :cond_9
    const-string v9, "3"

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    const-string v10, "type"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 273
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 274
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 275
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;

    invoke-direct {v1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;-><init>()V

    .line 276
    .restart local v1    # "eventNewData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    const-string v8, "mid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setEventId(Ljava/lang/String;)V

    .line 277
    iget-object v8, p0, Lcom/lzx/iteam/service/ChatService$2$1$1$1;->this$3:Lcom/lzx/iteam/service/ChatService$2$1$1;

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1$1;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService$2$1$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1$1;)Lcom/lzx/iteam/service/ChatService$2$1;

    move-result-object v8

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService$2$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1;)Lcom/lzx/iteam/service/ChatService$2;

    move-result-object v8

    # getter for: Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService$2;->access$0(Lcom/lzx/iteam/service/ChatService$2;)Lcom/lzx/iteam/service/ChatService;

    move-result-object v8

    # getter for: Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService;->access$1(Lcom/lzx/iteam/service/ChatService;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/lzx/iteam/service/ChatService$2$1$1$1;->this$3:Lcom/lzx/iteam/service/ChatService$2$1$1;

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1$1;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService$2$1$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1$1;)Lcom/lzx/iteam/service/ChatService$2$1;

    move-result-object v8

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService$2$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1;)Lcom/lzx/iteam/service/ChatService$2;

    move-result-object v8

    # getter for: Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService$2;->access$0(Lcom/lzx/iteam/service/ChatService$2;)Lcom/lzx/iteam/service/ChatService;

    move-result-object v8

    # getter for: Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService;->access$1(Lcom/lzx/iteam/service/ChatService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_a

    .line 278
    iget-object v8, p0, Lcom/lzx/iteam/service/ChatService$2$1$1$1;->this$3:Lcom/lzx/iteam/service/ChatService$2$1$1;

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1$1;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService$2$1$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1$1;)Lcom/lzx/iteam/service/ChatService$2$1;

    move-result-object v8

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService$2$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1;)Lcom/lzx/iteam/service/ChatService$2;

    move-result-object v8

    # getter for: Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService$2;->access$0(Lcom/lzx/iteam/service/ChatService$2;)Lcom/lzx/iteam/service/ChatService;

    move-result-object v8

    # getter for: Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/lzx/iteam/service/ChatService;->access$1(Lcom/lzx/iteam/service/ChatService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_b

    .line 273
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 278
    :cond_b
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/service/aidl/NewMessageInterface;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 280
    .restart local v7    # "newMessage":Lcom/lzx/iteam/service/aidl/NewMessageInterface;
    :try_start_4
    invoke-interface {v7, v1}, Lcom/lzx/iteam/service/aidl/NewMessageInterface;->onNewActivityApply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    .line 281
    :catch_2
    move-exception v0

    .line 282
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6
.end method
