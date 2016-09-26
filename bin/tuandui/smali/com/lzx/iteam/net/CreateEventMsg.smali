.class public Lcom/lzx/iteam/net/CreateEventMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "CreateEventMsg.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CreateEventMsg"


# instance fields
.field private mAvatar:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEventName:Ljava/lang/String;

.field private mEventType:Ljava/lang/String;

.field private mmCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "avatar"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/lzx/iteam/net/CreateEventMsg;->mmCallback:Landroid/os/Message;

    .line 28
    iput-object p2, p0, Lcom/lzx/iteam/net/CreateEventMsg;->mContext:Landroid/content/Context;

    .line 29
    iput-object p3, p0, Lcom/lzx/iteam/net/CreateEventMsg;->mEventType:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/lzx/iteam/net/CreateEventMsg;->mEventName:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/lzx/iteam/net/CreateEventMsg;->mAvatar:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 166
    const-string v4, "CreateEventMsg"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onError : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ret: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 169
    const/4 v2, 0x0

    .line 171
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 179
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/CreateEventMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 180
    iget-object v4, p0, Lcom/lzx/iteam/net/CreateEventMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 181
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 182
    iget-object v4, p0, Lcom/lzx/iteam/net/CreateEventMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 186
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/CreateEventMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 188
    :cond_1
    return-void

    .line 173
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 175
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 184
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/CreateEventMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 173
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 17
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 37
    new-instance v4, Lcom/lzx/iteam/bean/EventListData;

    invoke-direct {v4}, Lcom/lzx/iteam/bean/EventListData;-><init>()V

    .line 39
    .local v4, "eventListData":Lcom/lzx/iteam/bean/EventListData;
    :try_start_0
    const-string v15, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 40
    .local v7, "item":Lorg/json/JSONObject;
    const-string v15, "published_datetime"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setCreateTime(Ljava/lang/String;)V

    .line 41
    const-string v15, "published_datetime"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setUpdateTime(Ljava/lang/String;)V

    .line 42
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/net/CreateEventMsg;->mEventType:Ljava/lang/String;

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 43
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/net/CreateEventMsg;->mEventName:Ljava/lang/String;

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 44
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/net/CreateEventMsg;->mAvatar:Ljava/lang/String;

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setEventAvatar(Ljava/lang/String;)V

    .line 45
    const-string v15, "1"

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setHasRead(Ljava/lang/String;)V

    .line 46
    const-string v15, "0"

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setHasJoin(Ljava/lang/String;)V

    .line 47
    const-string v15, "1"

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setUserType(Ljava/lang/String;)V

    .line 48
    const-string v15, "author"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 49
    const-string v15, "author"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setAuthor(Ljava/lang/String;)V

    .line 51
    :cond_0
    const-string v15, "published_user_name"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setUserName(Ljava/lang/String;)V

    .line 55
    const-string v15, "published_user_id"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 56
    const-string v15, "published_user_id"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setUserId(Ljava/lang/String;)V

    .line 58
    :cond_1
    const-string v15, "event_id"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setEventId(Ljava/lang/String;)V

    .line 59
    const-string v15, "reply_count"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 60
    const-string v15, "reply_count"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setReplyCount(Ljava/lang/String;)V

    .line 62
    :cond_2
    const-string v15, "event_title"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setEventTitle(Ljava/lang/String;)V

    .line 63
    const-string v15, "event_address"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 64
    const-string v15, "event_address"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setActivitySite(Ljava/lang/String;)V

    .line 66
    :cond_3
    const-string v15, "event_date"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 67
    const-string v15, "event_date"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setActivityTime(Ljava/lang/String;)V

    .line 69
    :cond_4
    const-string v15, "event_time"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 70
    const-string v15, "event_time"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setActivityTime(Ljava/lang/String;)V

    .line 72
    :cond_5
    const-string v15, "qrcode"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 73
    const-string v15, "qrcode"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 74
    .local v11, "qrcode":Ljava/lang/String;
    invoke-virtual {v4, v11}, Lcom/lzx/iteam/bean/EventListData;->setQrcode(Ljava/lang/String;)V

    .line 75
    invoke-static {v11}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 76
    const-string v15, "0"

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setIsQrcode(Ljava/lang/String;)V

    .line 81
    .end local v11    # "qrcode":Ljava/lang/String;
    :cond_6
    :goto_0
    const-string v15, "member_count"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 82
    const-string v15, "member_count"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setMemberCount(Ljava/lang/String;)V

    .line 84
    :cond_7
    const-string v15, "attachment"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 85
    const-string v15, "attachment"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 86
    .local v5, "image":Lorg/json/JSONArray;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v12, "thumbSb":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v10, "oriSb":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lt v9, v15, :cond_e

    .line 100
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_8

    .line 101
    const/4 v15, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setThumbImage(Ljava/lang/String;)V

    .line 103
    :cond_8
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_9

    .line 104
    const/4 v15, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setOriImage(Ljava/lang/String;)V

    .line 109
    .end local v5    # "image":Lorg/json/JSONArray;
    .end local v9    # "k":I
    .end local v10    # "oriSb":Ljava/lang/StringBuilder;
    .end local v12    # "thumbSb":Ljava/lang/StringBuilder;
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/net/CreateEventMsg;->mEventType:Ljava/lang/String;

    const-string v16, "7"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/net/CreateEventMsg;->mEventType:Ljava/lang/String;

    const-string v16, "9"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 110
    :cond_a
    const-string v15, "event_content"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v7    # "item":Lorg/json/JSONObject;
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/net/CreateEventMsg;->mmCallback:Landroid/os/Message;

    if-eqz v15, :cond_c

    .line 156
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/net/CreateEventMsg;->mmCallback:Landroid/os/Message;

    iput-object v4, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 157
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/net/CreateEventMsg;->mmCallback:Landroid/os/Message;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/os/Message;->arg1:I

    .line 158
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/net/CreateEventMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 162
    :cond_c
    return-void

    .line 78
    .restart local v7    # "item":Lorg/json/JSONObject;
    .restart local v11    # "qrcode":Ljava/lang/String;
    :cond_d
    :try_start_1
    const-string v15, "1"

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setIsQrcode(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 150
    .end local v7    # "item":Lorg/json/JSONObject;
    .end local v11    # "qrcode":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 151
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 89
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v5    # "image":Lorg/json/JSONArray;
    .restart local v7    # "item":Lorg/json/JSONObject;
    .restart local v9    # "k":I
    .restart local v10    # "oriSb":Ljava/lang/StringBuilder;
    .restart local v12    # "thumbSb":Ljava/lang/StringBuilder;
    :cond_e
    :try_start_2
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 91
    .local v6, "imageObject":Lorg/json/JSONObject;
    const-string v15, "thumb"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 94
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "thumb"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_f
    const-string v15, "ori"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 97
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "ori"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 111
    .end local v5    # "image":Lorg/json/JSONArray;
    .end local v6    # "imageObject":Lorg/json/JSONObject;
    .end local v9    # "k":I
    .end local v10    # "oriSb":Ljava/lang/StringBuilder;
    .end local v12    # "thumbSb":Ljava/lang/StringBuilder;
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/net/CreateEventMsg;->mEventType:Ljava/lang/String;

    const-string v16, "8"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 112
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v14, "votes":Ljava/lang/StringBuilder;
    new-instance v1, Lorg/json/JSONArray;

    const-string v15, "event_content"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v15}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, "array":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lt v8, v15, :cond_12

    .line 118
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 115
    :cond_12
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "content"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 116
    .local v13, "vote":Ljava/lang/String;
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 120
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v8    # "j":I
    .end local v13    # "vote":Ljava/lang/String;
    .end local v14    # "votes":Ljava/lang/StringBuilder;
    :cond_13
    const-string v15, "event_content"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 121
    .local v3, "eventContent":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_14

    .line 122
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "content"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    .line 123
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "init_title"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V

    .line 125
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "content"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setContent2(Ljava/lang/String;)V

    .line 126
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "init_title"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle2(Ljava/lang/String;)V

    .line 128
    const/4 v15, 0x2

    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "content"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setContent3(Ljava/lang/String;)V

    .line 129
    const/4 v15, 0x2

    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "init_title"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle3(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 131
    :cond_14
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_15

    .line 133
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "content"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    .line 134
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "init_title"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V

    .line 136
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "content"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setContent2(Ljava/lang/String;)V

    .line 137
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "init_title"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle2(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 139
    :cond_15
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 141
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "content"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    .line 142
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "init_title"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 143
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "init_title"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method
