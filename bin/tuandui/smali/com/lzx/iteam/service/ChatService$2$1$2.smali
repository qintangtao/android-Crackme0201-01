.class Lcom/lzx/iteam/service/ChatService$2$1$2;
.super Ljava/lang/Object;
.source "ChatService.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/EventCallback;


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
    iput-object p1, p0, Lcom/lzx/iteam/service/ChatService$2$1$2;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;

    iput-object p2, p0, Lcom/lzx/iteam/service/ChatService$2$1$2;->val$client:Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/json/JSONArray;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 12
    .param p1, "argument"    # Lorg/json/JSONArray;
    .param p2, "acknowledge"    # Lcom/koushikdutta/async/http/socketio/Acknowledge;

    .prologue
    .line 320
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

    .line 322
    :try_start_0
    iget-object v8, p0, Lcom/lzx/iteam/service/ChatService$2$1$2;->val$client:Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    const-string v9, "ack"

    invoke-virtual {v8, v9, p1}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->emit(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 323
    const-string v8, "Service"

    const-string v9, "ChatService---ack"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 326
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

    .line 327
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v5, "mids":Ljava/lang/StringBuilder;
    const-string v8, "[\""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v2, v8, :cond_1

    .line 337
    const-string v8, "\"]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    new-instance v8, Lcom/lzx/iteam/service/ChatService$GetChatMsgTask;

    iget-object v9, p0, Lcom/lzx/iteam/service/ChatService$2$1$2;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;
    invoke-static {v9}, Lcom/lzx/iteam/service/ChatService$2$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1;)Lcom/lzx/iteam/service/ChatService$2;

    move-result-object v9

    # getter for: Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;
    invoke-static {v9}, Lcom/lzx/iteam/service/ChatService$2;->access$0(Lcom/lzx/iteam/service/ChatService$2;)Lcom/lzx/iteam/service/ChatService;

    move-result-object v9

    iget-object v10, p0, Lcom/lzx/iteam/service/ChatService$2$1$2;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;

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

    .line 390
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "mids":Ljava/lang/StringBuilder;
    :cond_0
    :goto_1
    return-void

    .line 330
    .restart local v2    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    .restart local v5    # "mids":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 331
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "mid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 332
    .local v6, "msgId":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v2, v8, :cond_2

    .line 334
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
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

    .line 341
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .restart local v5    # "mids":Ljava/lang/StringBuilder;
    const-string v8, "[\""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v2, v8, :cond_4

    .line 351
    const-string v8, "\"]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    new-instance v8, Lcom/lzx/iteam/service/ChatService$GetEventReplyMsgTask;

    iget-object v9, p0, Lcom/lzx/iteam/service/ChatService$2$1$2;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;

    # getter for: Lcom/lzx/iteam/service/ChatService$2$1;->this$1:Lcom/lzx/iteam/service/ChatService$2;
    invoke-static {v9}, Lcom/lzx/iteam/service/ChatService$2$1;->access$0(Lcom/lzx/iteam/service/ChatService$2$1;)Lcom/lzx/iteam/service/ChatService$2;

    move-result-object v9

    # getter for: Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;
    invoke-static {v9}, Lcom/lzx/iteam/service/ChatService$2;->access$0(Lcom/lzx/iteam/service/ChatService$2;)Lcom/lzx/iteam/service/ChatService;

    move-result-object v9

    iget-object v10, p0, Lcom/lzx/iteam/service/ChatService$2$1$2;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;

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

    .line 387
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "mids":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 344
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    .restart local v5    # "mids":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 345
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    const-string v8, "mid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 346
    .restart local v6    # "msgId":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v2, v8, :cond_5

    .line 348
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 353
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

    .line 354
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 355
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 356
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;

    invoke-direct {v1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;-><init>()V

    .line 357
    .local v1, "eventNewData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    const-string v8, "mid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setEventId(Ljava/lang/String;)V

    .line 358
    iget-object v8, p0, Lcom/lzx/iteam/service/ChatService$2$1$2;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;

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

    iget-object v8, p0, Lcom/lzx/iteam/service/ChatService$2$1$2;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;

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

    .line 359
    iget-object v8, p0, Lcom/lzx/iteam/service/ChatService$2$1$2;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;

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

    .line 354
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 359
    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/service/aidl/NewMessageInterface;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 361
    .local v7, "newMessage":Lcom/lzx/iteam/service/aidl/NewMessageInterface;
    :try_start_2
    invoke-interface {v7, v1}, Lcom/lzx/iteam/service/aidl/NewMessageInterface;->onNewEvent(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 362
    :catch_1
    move-exception v0

    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 369
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

    .line 370
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 371
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 372
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;

    invoke-direct {v1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;-><init>()V

    .line 373
    .restart local v1    # "eventNewData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    const-string v8, "mid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setEventId(Ljava/lang/String;)V

    .line 374
    iget-object v8, p0, Lcom/lzx/iteam/service/ChatService$2$1$2;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;

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

    iget-object v8, p0, Lcom/lzx/iteam/service/ChatService$2$1$2;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;

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

    .line 375
    iget-object v8, p0, Lcom/lzx/iteam/service/ChatService$2$1$2;->this$2:Lcom/lzx/iteam/service/ChatService$2$1;

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

    .line 370
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 375
    :cond_b
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/service/aidl/NewMessageInterface;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 377
    .restart local v7    # "newMessage":Lcom/lzx/iteam/service/aidl/NewMessageInterface;
    :try_start_4
    invoke-interface {v7, v1}, Lcom/lzx/iteam/service/aidl/NewMessageInterface;->onNewActivityApply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    .line 378
    :catch_2
    move-exception v0

    .line 379
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6
.end method
