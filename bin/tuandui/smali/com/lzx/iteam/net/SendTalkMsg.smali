.class public Lcom/lzx/iteam/net/SendTalkMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "SendTalkMsg.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mmCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/content/Context;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lzx/iteam/net/SendTalkMsg;->mmCallback:Landroid/os/Message;

    .line 25
    iput-object p2, p0, Lcom/lzx/iteam/net/SendTalkMsg;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 84
    const/4 v2, 0x0

    .line 86
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 94
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/SendTalkMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 95
    iget-object v4, p0, Lcom/lzx/iteam/net/SendTalkMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 96
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 97
    iget-object v4, p0, Lcom/lzx/iteam/net/SendTalkMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 101
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/SendTalkMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 103
    :cond_1
    return-void

    .line 88
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 90
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 99
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/SendTalkMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 88
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    const/4 v10, 0x0

    .line 31
    new-instance v6, Lcom/lzx/iteam/bean/TalkListData;

    invoke-direct {v6}, Lcom/lzx/iteam/bean/TalkListData;-><init>()V

    .line 33
    .local v6, "talkListData":Lcom/lzx/iteam/bean/TalkListData;
    :try_start_0
    const-string v8, "data"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 34
    .local v3, "item":Lorg/json/JSONObject;
    const-string v8, "create_time"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/lzx/iteam/bean/TalkListData;->createTime:Ljava/lang/String;

    .line 35
    const-string v8, "talk_id"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    .line 36
    const-string v8, "text"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/lzx/iteam/bean/TalkListData;->text:Ljava/lang/String;

    .line 38
    iget-object v8, v6, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    sput-object v8, Lcom/lzx/iteam/util/Constants;->NEW_TALK_ID:Ljava/lang/String;

    .line 39
    const-string v8, "content"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 40
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v7, "thumbSb":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v5, "oriSb":Ljava/lang/StringBuilder;
    const-string v8, "content"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 43
    .local v0, "content":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-lt v2, v8, :cond_2

    .line 69
    .end local v0    # "content":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "item":Lorg/json/JSONObject;
    .end local v5    # "oriSb":Ljava/lang/StringBuilder;
    .end local v7    # "thumbSb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/lzx/iteam/net/SendTalkMsg;->mmCallback:Landroid/os/Message;

    if-eqz v8, :cond_1

    .line 72
    iget-object v8, p0, Lcom/lzx/iteam/net/SendTalkMsg;->mmCallback:Landroid/os/Message;

    iput-object v6, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    iget-object v8, p0, Lcom/lzx/iteam/net/SendTalkMsg;->mmCallback:Landroid/os/Message;

    iput v10, v8, Landroid/os/Message;->arg1:I

    .line 74
    iget-object v8, p0, Lcom/lzx/iteam/net/SendTalkMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 78
    :cond_1
    return-void

    .line 44
    .restart local v0    # "content":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    .restart local v3    # "item":Lorg/json/JSONObject;
    .restart local v5    # "oriSb":Ljava/lang/StringBuilder;
    .restart local v7    # "thumbSb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 45
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "thumb"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 48
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "thumb"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_3
    const-string v8, "ori"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 51
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ori"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 54
    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/lzx/iteam/bean/TalkListData;->thumbImage:Ljava/lang/String;

    .line 56
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 57
    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/lzx/iteam/bean/TalkListData;->oriImage:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 62
    .end local v0    # "content":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "item":Lorg/json/JSONObject;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "oriSb":Ljava/lang/StringBuilder;
    .end local v7    # "thumbSb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method
