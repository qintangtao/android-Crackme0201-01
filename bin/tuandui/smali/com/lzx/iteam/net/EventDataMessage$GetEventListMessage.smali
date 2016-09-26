.class public Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "EventDataMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/net/EventDataMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetEventListMessage"
.end annotation


# instance fields
.field private cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mContext:Landroid/content/Context;

.field private mMsgDB:Lcom/lzx/iteam/provider/EventsMsgDB;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mmCallback:Landroid/os/Message;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "mCallback"    # Landroid/os/Message;
    .param p2, "mContext"    # Landroid/content/Context;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;->mmCallback:Landroid/os/Message;

    .line 33
    iput-object p2, p0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;->mContext:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;->type:Ljava/lang/String;

    .line 35
    invoke-static {p2}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 36
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p2}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 37
    new-instance v0, Lcom/lzx/iteam/provider/EventsMsgDB;

    invoke-direct {v0, p2}, Lcom/lzx/iteam/provider/EventsMsgDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;->mMsgDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    .line 38
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 213
    const/4 v1, 0x0

    .line 214
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 215
    const/4 v2, 0x0

    .line 217
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 225
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 226
    iget-object v4, p0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 227
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 228
    iget-object v4, p0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 232
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 234
    :cond_1
    return-void

    .line 219
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 221
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 230
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 219
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 27
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 42
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v16, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventListData;>;"
    :try_start_0
    const-string v24, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 45
    .local v14, "jsonObject":Lorg/json/JSONObject;
    const-string v24, "datas"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 46
    .local v12, "item":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    move-object/from16 v24, v0

    const-string v25, "event_count"

    const-string v26, "counts"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 47
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v24

    move/from16 v0, v24

    if-lt v9, v0, :cond_1

    .line 203
    .end local v9    # "i":I
    .end local v12    # "item":Lorg/json/JSONArray;
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;->mmCallback:Landroid/os/Message;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;->mmCallback:Landroid/os/Message;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;->mmCallback:Landroid/os/Message;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;->mmCallback:Landroid/os/Message;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    .line 209
    :cond_0
    return-void

    .line 48
    .restart local v9    # "i":I
    .restart local v12    # "item":Lorg/json/JSONArray;
    .restart local v14    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 49
    .local v18, "object":Lorg/json/JSONObject;
    new-instance v17, Lcom/lzx/iteam/bean/EventListData;

    invoke-direct/range {v17 .. v17}, Lcom/lzx/iteam/bean/EventListData;-><init>()V

    .line 50
    .local v17, "listData":Lcom/lzx/iteam/bean/EventListData;
    const-string v24, "none"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v24, v0

    const-string v25, "event_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteEventByEventId(Ljava/lang/String;)I

    .line 194
    :goto_2
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 55
    :cond_2
    const-string v24, "user_type"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setUserType(Ljava/lang/String;)V

    .line 56
    const-string v24, "has_read"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setHasRead(Ljava/lang/String;)V

    .line 57
    const-string v24, "vote"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 58
    const-string v24, "vote"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setVotes(Ljava/lang/String;)V

    .line 60
    :cond_3
    const-string v24, "has_join"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 61
    const-string v24, "has_join"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setHasJoin(Ljava/lang/String;)V

    .line 63
    :cond_4
    const-string v24, "_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 64
    const-string v24, "_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setId(Ljava/lang/String;)V

    .line 66
    :cond_5
    const-string v24, "reply"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_6

    const-string v24, "reply"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONObject;->length()I

    move-result v24

    if-lez v24, :cond_6

    .line 67
    const-string v24, "reply"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 68
    .local v20, "reply":Lorg/json/JSONObject;
    const-string v24, "uname"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setReplyLastName(Ljava/lang/String;)V

    .line 69
    const-string v24, "reply"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setReplyLastContent(Ljava/lang/String;)V

    .line 71
    .end local v20    # "reply":Lorg/json/JSONObject;
    :cond_6
    const-string v24, "event"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 72
    .local v8, "event":Lorg/json/JSONObject;
    const-string v24, "update_time"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setUpdateTime(Ljava/lang/String;)V

    .line 73
    const-string v24, "event_type"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 74
    const-string v24, "_id"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventId(Ljava/lang/String;)V

    .line 75
    const-string v24, "user_id"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setUserId(Ljava/lang/String;)V

    .line 76
    const-string v24, "user_name"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setUserName(Ljava/lang/String;)V

    .line 77
    const-string v24, "user_img"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 78
    const-string v24, "user_img"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventAvatar(Ljava/lang/String;)V

    .line 80
    :cond_7
    const-string v24, "create_time"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 81
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "create_time"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "createTime":Ljava/lang/String;
    const-string v24, "."

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 83
    const/16 v24, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x3

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 85
    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/EventListData;->setCreateTime(Ljava/lang/String;)V

    .line 87
    .end local v6    # "createTime":Ljava/lang/String;
    :cond_9
    const-string v24, "qrcode"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 88
    const-string v24, "qrcode"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setQrcode(Ljava/lang/String;)V

    .line 90
    :cond_a
    const-string v24, "member_count"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setMemberCount(Ljava/lang/String;)V

    .line 91
    const-string v24, "event_title"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventTitle(Ljava/lang/String;)V

    .line 92
    const-string v24, "has_read_count"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 93
    const-string v24, "has_read_count"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setHasReadCount(Ljava/lang/String;)V

    .line 95
    :cond_b
    const-string v24, "reply_count"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 96
    const-string v24, "reply_count"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setReplyCount(Ljava/lang/String;)V

    .line 98
    :cond_c
    const-string v24, "author"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 99
    const-string v24, "author"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setAuthor(Ljava/lang/String;)V

    .line 101
    :cond_d
    const-string v24, "attachment"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 102
    const-string v24, "attachment"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 103
    .local v10, "image":Lorg/json/JSONArray;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v21, "thumbSb":Ljava/lang/StringBuilder;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v19, "oriSb":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_3
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-lt v15, v0, :cond_16

    .line 117
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    if-lez v24, :cond_e

    .line 118
    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setThumbImage(Ljava/lang/String;)V

    .line 120
    :cond_e
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    if-lez v24, :cond_f

    .line 121
    const/16 v24, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setOriImage(Ljava/lang/String;)V

    .line 124
    .end local v10    # "image":Lorg/json/JSONArray;
    .end local v15    # "k":I
    .end local v19    # "oriSb":Ljava/lang/StringBuilder;
    .end local v21    # "thumbSb":Ljava/lang/StringBuilder;
    :cond_f
    const-string v24, "join_count"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_10

    .line 125
    const-string v24, "join_count"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setJoinCount(Ljava/lang/String;)V

    .line 127
    :cond_10
    const-string v24, "event_address"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 128
    const-string v24, "event_address"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setActivitySite(Ljava/lang/String;)V

    .line 130
    :cond_11
    const-string v24, "event_date"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 131
    const-string v24, "event_date"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setActivityTime(Ljava/lang/String;)V

    .line 133
    :cond_12
    const-string v24, "event_time"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 134
    const-string v24, "event_time"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setActivityTime(Ljava/lang/String;)V

    .line 136
    :cond_13
    const-string v24, "event_templ_name"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_19

    .line 137
    const-string v24, "event_templ_name"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 142
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;->mMsgDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    move-object/from16 v24, v0

    const-string v25, "_id"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/lzx/iteam/provider/EventsMsgDB;->getUnReadCountOfOneEvent(Ljava/lang/String;)I

    move-result v5

    .line 143
    .local v5, "count":I
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setUnReadCount(Ljava/lang/String;)V

    .line 144
    const-string v24, "event_type"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "7"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_14

    const-string v24, "event_type"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "9"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 145
    :cond_14
    const-string v24, "event_content"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    .line 192
    :cond_15
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListMessage;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertEvent(Lcom/lzx/iteam/bean/EventListData;)J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 199
    .end local v5    # "count":I
    .end local v8    # "event":Lorg/json/JSONObject;
    .end local v9    # "i":I
    .end local v12    # "item":Lorg/json/JSONArray;
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .end local v17    # "listData":Lcom/lzx/iteam/bean/EventListData;
    .end local v18    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 200
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 106
    .end local v7    # "e":Lorg/json/JSONException;
    .restart local v8    # "event":Lorg/json/JSONObject;
    .restart local v9    # "i":I
    .restart local v10    # "image":Lorg/json/JSONArray;
    .restart local v12    # "item":Lorg/json/JSONArray;
    .restart local v14    # "jsonObject":Lorg/json/JSONObject;
    .restart local v15    # "k":I
    .restart local v17    # "listData":Lcom/lzx/iteam/bean/EventListData;
    .restart local v18    # "object":Lorg/json/JSONObject;
    .restart local v19    # "oriSb":Ljava/lang/StringBuilder;
    .restart local v21    # "thumbSb":Ljava/lang/StringBuilder;
    :cond_16
    :try_start_2
    invoke-virtual {v10, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 108
    .local v11, "imageObject":Lorg/json/JSONObject;
    const-string v24, "thumb"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_17

    .line 111
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "thumb"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_17
    const-string v24, "ori"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 114
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "ori"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_18
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 139
    .end local v10    # "image":Lorg/json/JSONArray;
    .end local v11    # "imageObject":Lorg/json/JSONObject;
    .end local v15    # "k":I
    .end local v19    # "oriSb":Ljava/lang/StringBuilder;
    .end local v21    # "thumbSb":Ljava/lang/StringBuilder;
    :cond_19
    const-string v24, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 146
    .restart local v5    # "count":I
    :cond_1a
    const-string v24, "event_type"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "8"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 147
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v23, "votes":Ljava/lang/StringBuilder;
    new-instance v3, Lorg/json/JSONArray;

    const-string v24, "event_content"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 149
    .local v3, "array":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-lt v13, v0, :cond_1b

    .line 153
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 150
    :cond_1b
    invoke-virtual {v3, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "content"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 151
    .local v22, "vote":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 155
    .end local v3    # "array":Lorg/json/JSONArray;
    .end local v13    # "j":I
    .end local v22    # "vote":Ljava/lang/String;
    .end local v23    # "votes":Ljava/lang/StringBuilder;
    :cond_1c
    const-string v24, "event_content"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 156
    .local v4, "content":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v24

    packed-switch v24, :pswitch_data_0

    goto/16 :goto_5

    .line 179
    :cond_1d
    :goto_7
    :pswitch_0
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "content"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1e

    .line 180
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "content"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    .line 182
    :cond_1e
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "init_title"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1f

    .line 183
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "init_title"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V

    .line 185
    :cond_1f
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "url"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_15

    .line 186
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "url"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setUrl1(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 158
    :pswitch_1
    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "content"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_20

    .line 159
    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "content"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent3(Ljava/lang/String;)V

    .line 161
    :cond_20
    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "init_title"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_21

    .line 162
    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "init_title"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle3(Ljava/lang/String;)V

    .line 164
    :cond_21
    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "url"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_22

    .line 165
    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "url"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setUrl3(Ljava/lang/String;)V

    .line 168
    :cond_22
    :pswitch_2
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "content"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_23

    .line 169
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "content"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent2(Ljava/lang/String;)V

    .line 171
    :cond_23
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "init_title"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_24

    .line 172
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "init_title"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle2(Ljava/lang/String;)V

    .line 174
    :cond_24
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "url"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1d

    .line 175
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "url"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setUrl2(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method