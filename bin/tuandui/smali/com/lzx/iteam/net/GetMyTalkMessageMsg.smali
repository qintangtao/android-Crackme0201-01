.class public Lcom/lzx/iteam/net/GetMyTalkMessageMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetMyTalkMessageMsg.java"


# instance fields
.field private cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mContext:Landroid/content/Context;

.field private mmCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/content/Context;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/lzx/iteam/net/GetMyTalkMessageMsg;->mmCallback:Landroid/os/Message;

    .line 27
    iput-object p2, p0, Lcom/lzx/iteam/net/GetMyTalkMessageMsg;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v1, p0, Lcom/lzx/iteam/net/GetMyTalkMessageMsg;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/GetMyTalkMessageMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 29
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 80
    const/4 v2, 0x0

    .line 82
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 90
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/GetMyTalkMessageMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 91
    iget-object v4, p0, Lcom/lzx/iteam/net/GetMyTalkMessageMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 92
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 93
    iget-object v4, p0, Lcom/lzx/iteam/net/GetMyTalkMessageMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetMyTalkMessageMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 99
    :cond_1
    return-void

    .line 84
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 86
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 95
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/GetMyTalkMessageMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 84
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 33
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v6, "talkListDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/MyTalkMessageData;>;"
    :try_start_0
    const-string v7, "data"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 36
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-lt v1, v7, :cond_1

    .line 67
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :goto_1
    iget-object v7, p0, Lcom/lzx/iteam/net/GetMyTalkMessageMsg;->mmCallback:Landroid/os/Message;

    if-eqz v7, :cond_0

    .line 68
    iget-object v7, p0, Lcom/lzx/iteam/net/GetMyTalkMessageMsg;->mmCallback:Landroid/os/Message;

    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 69
    iget-object v7, p0, Lcom/lzx/iteam/net/GetMyTalkMessageMsg;->mmCallback:Landroid/os/Message;

    const/4 v8, 0x0

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 70
    iget-object v7, p0, Lcom/lzx/iteam/net/GetMyTalkMessageMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 74
    :cond_0
    return-void

    .line 37
    .restart local v1    # "i":I
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 38
    .local v3, "jsonObject":Lorg/json/JSONObject;
    new-instance v5, Lcom/lzx/iteam/bean/MyTalkMessageData;

    invoke-direct {v5}, Lcom/lzx/iteam/bean/MyTalkMessageData;-><init>()V

    .line 39
    .local v5, "messageData":Lcom/lzx/iteam/bean/MyTalkMessageData;
    const-string v7, "msg_uname"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgUName:Ljava/lang/String;

    .line 40
    const-string v7, "msg_comment"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 41
    const-string v7, "msg_comment"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgComment:Ljava/lang/String;

    .line 43
    :cond_2
    const-string v7, "msg_type"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgType:Ljava/lang/String;

    .line 44
    const-string v7, "msg_uimg"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgUImg:Ljava/lang/String;

    .line 45
    const-string v7, "msg_uid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgUId:Ljava/lang/String;

    .line 46
    const-string v7, "msg_ctime"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgCTime:Ljava/lang/String;

    .line 47
    const-string v7, "talk_id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/lzx/iteam/bean/MyTalkMessageData;->talkId:Ljava/lang/String;

    .line 48
    const-string v7, "talk_thumb"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 49
    const-string v7, "talk_thumb"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/lzx/iteam/bean/MyTalkMessageData;->talkThumb:Ljava/lang/String;

    .line 51
    :cond_3
    const-string v7, "talk_uid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/lzx/iteam/bean/MyTalkMessageData;->talkUId:Ljava/lang/String;

    .line 52
    const-string v7, "talk_uname"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/lzx/iteam/bean/MyTalkMessageData;->talkUName:Ljava/lang/String;

    .line 53
    const-string v7, "talk_uimg"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/lzx/iteam/bean/MyTalkMessageData;->talkUImage:Ljava/lang/String;

    .line 54
    const-string v7, "talk"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 55
    .local v4, "jsonObject1":Lorg/json/JSONObject;
    const-string v7, "text"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 56
    const-string v7, "text"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/lzx/iteam/bean/MyTalkMessageData;->text:Ljava/lang/String;

    .line 58
    :cond_4
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v7, p0, Lcom/lzx/iteam/net/GetMyTalkMessageMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-virtual {v7, v5}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertTalkMyMsgData(Lcom/lzx/iteam/bean/MyTalkMessageData;)J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 62
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "jsonObject1":Lorg/json/JSONObject;
    .end local v5    # "messageData":Lcom/lzx/iteam/bean/MyTalkMessageData;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method
