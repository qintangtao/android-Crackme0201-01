.class public Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "MyMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/net/MyMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetNewEventListMessage"
.end annotation


# instance fields
.field private cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mContext:Landroid/content/Context;

.field private mMsgDB:Lcom/lzx/iteam/provider/EventsMsgDB;

.field private mmCallback:Landroid/os/Message;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "mCallback"    # Landroid/os/Message;
    .param p2, "mContext"    # Landroid/content/Context;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;->mmCallback:Landroid/os/Message;

    .line 242
    iput-object p2, p0, Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;->mContext:Landroid/content/Context;

    .line 243
    iput-object p3, p0, Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;->type:Ljava/lang/String;

    .line 244
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p2}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 245
    new-instance v0, Lcom/lzx/iteam/provider/EventsMsgDB;

    invoke-direct {v0, p2}, Lcom/lzx/iteam/provider/EventsMsgDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;->mMsgDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    .line 246
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 419
    const/4 v1, 0x0

    .line 420
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 421
    const/4 v2, 0x0

    .line 423
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 431
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 432
    iget-object v4, p0, Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 433
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 434
    iget-object v4, p0, Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 438
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 440
    :cond_1
    return-void

    .line 425
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 427
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 436
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 425
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 29
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 250
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v18, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventListData;>;"
    :try_start_0
    const-string v26, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 253
    .local v13, "item":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    move/from16 v0, v26

    if-lt v10, v0, :cond_1

    .line 409
    .end local v10    # "i":I
    .end local v13    # "item":Lorg/json/JSONArray;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;->mmCallback:Landroid/os/Message;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;->mmCallback:Landroid/os/Message;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;->mmCallback:Landroid/os/Message;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;->mmCallback:Landroid/os/Message;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    .line 415
    :cond_0
    return-void

    .line 254
    .restart local v10    # "i":I
    .restart local v13    # "item":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    invoke-virtual {v13, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    .line 255
    .local v20, "object":Lorg/json/JSONObject;
    new-instance v19, Lcom/lzx/iteam/bean/EventListData;

    invoke-direct/range {v19 .. v19}, Lcom/lzx/iteam/bean/EventListData;-><init>()V

    .line 258
    .local v19, "listData":Lcom/lzx/iteam/bean/EventListData;
    const-string v26, "user_type"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setUserType(Ljava/lang/String;)V

    .line 259
    const-string v26, "has_read"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setHasRead(Ljava/lang/String;)V

    .line 260
    const-string v26, "has_join"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 261
    const-string v26, "has_join"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setHasJoin(Ljava/lang/String;)V

    .line 263
    :cond_2
    const-string v26, "_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 264
    const-string v26, "_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setId(Ljava/lang/String;)V

    .line 266
    :cond_3
    const-string v26, "reply"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_4

    const-string v26, "reply"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONObject;->length()I

    move-result v26

    if-lez v26, :cond_4

    .line 267
    const-string v26, "reply"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 268
    .local v22, "reply":Lorg/json/JSONObject;
    const-string v26, "uname"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setReplyLastName(Ljava/lang/String;)V

    .line 269
    const-string v26, "reply"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setReplyLastContent(Ljava/lang/String;)V

    .line 271
    .end local v22    # "reply":Lorg/json/JSONObject;
    :cond_4
    const-string v26, "event"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 272
    .local v9, "event":Lorg/json/JSONObject;
    const-string v26, "update_time"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setUpdateTime(Ljava/lang/String;)V

    .line 273
    const-string v26, "event_type"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 274
    const-string v26, "_id"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventId(Ljava/lang/String;)V

    .line 275
    const-string v26, "user_id"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setUserId(Ljava/lang/String;)V

    .line 276
    const-string v26, "user_name"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setUserName(Ljava/lang/String;)V

    .line 277
    const-string v26, "user_img"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 278
    const-string v26, "user_img"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventAvatar(Ljava/lang/String;)V

    .line 280
    :cond_5
    const-string v26, "create_time"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 281
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "create_time"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 282
    .local v7, "createTime":Ljava/lang/String;
    const-string v26, "."

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 283
    const/16 v26, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x3

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 285
    :cond_6
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/lzx/iteam/bean/EventListData;->setCreateTime(Ljava/lang/String;)V

    .line 287
    .end local v7    # "createTime":Ljava/lang/String;
    :cond_7
    const-string v26, "member_count"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setMemberCount(Ljava/lang/String;)V

    .line 288
    const-string v26, "event_title"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventTitle(Ljava/lang/String;)V

    .line 289
    const-string v26, "has_read_count"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 290
    const-string v26, "has_read_count"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setHasReadCount(Ljava/lang/String;)V

    .line 292
    :cond_8
    const-string v26, "reply_count"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 293
    const-string v26, "reply_count"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setReplyCount(Ljava/lang/String;)V

    .line 295
    :cond_9
    const-string v26, "author"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 296
    const-string v26, "author"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setAuthor(Ljava/lang/String;)V

    .line 298
    :cond_a
    const-string v26, "attachment"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 299
    const-string v26, "attachment"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 300
    .local v11, "image":Lorg/json/JSONArray;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .local v23, "thumbSb":Ljava/lang/StringBuilder;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v21, "oriSb":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-lt v15, v0, :cond_16

    .line 312
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v26

    if-lez v26, :cond_b

    .line 313
    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setThumbImage(Ljava/lang/String;)V

    .line 315
    :cond_b
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v26

    if-lez v26, :cond_c

    .line 316
    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setOriImage(Ljava/lang/String;)V

    .line 319
    .end local v11    # "image":Lorg/json/JSONArray;
    .end local v15    # "k":I
    .end local v21    # "oriSb":Ljava/lang/StringBuilder;
    .end local v23    # "thumbSb":Ljava/lang/StringBuilder;
    :cond_c
    const-string v26, "join_count"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 320
    const-string v26, "join_count"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setJoinCount(Ljava/lang/String;)V

    .line 322
    :cond_d
    const-string v26, "event_address"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 323
    const-string v26, "event_address"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setActivitySite(Ljava/lang/String;)V

    .line 325
    :cond_e
    const-string v26, "event_date"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 326
    const-string v26, "event_date"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setActivityTime(Ljava/lang/String;)V

    .line 328
    :cond_f
    const-string v26, "event_time"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 329
    const-string v26, "event_time"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setActivityTime(Ljava/lang/String;)V

    .line 331
    :cond_10
    const-string v26, "qrcode"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 332
    const-string v26, "qrcode"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setQrcode(Ljava/lang/String;)V

    .line 334
    :cond_11
    const-string v26, "event_templ_name"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 335
    const-string v26, "event_templ_name"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 340
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;->mMsgDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    move-object/from16 v26, v0

    const-string v27, "_id"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/lzx/iteam/provider/EventsMsgDB;->getUnReadCountOfOneEvent(Ljava/lang/String;)I

    move-result v6

    .line 341
    .local v6, "count":I
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setUnReadCount(Ljava/lang/String;)V

    .line 342
    const-string v26, "event_type"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "7"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_12

    const-string v26, "event_type"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "9"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 343
    :cond_12
    const-string v26, "event_content"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    .line 390
    :cond_13
    :goto_4
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    const-string v26, "0"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;->type:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_14

    const-string v26, "-1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;->type:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 399
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertEvent(Lcom/lzx/iteam/bean/EventListData;)J

    move-result-wide v16

    .line 400
    .local v16, "l":J
    const-string v26, "EventList"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "--\u6dfb\u52a0result--"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v16    # "l":J
    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 303
    .end local v6    # "count":I
    .restart local v11    # "image":Lorg/json/JSONArray;
    .restart local v15    # "k":I
    .restart local v21    # "oriSb":Ljava/lang/StringBuilder;
    .restart local v23    # "thumbSb":Ljava/lang/StringBuilder;
    :cond_16
    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 305
    .local v12, "imageObject":Lorg/json/JSONObject;
    const-string v26, "thumb"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 306
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "thumb"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_17
    const-string v26, "ori"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_18

    .line 309
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "ori"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_18
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 337
    .end local v11    # "image":Lorg/json/JSONArray;
    .end local v12    # "imageObject":Lorg/json/JSONObject;
    .end local v15    # "k":I
    .end local v21    # "oriSb":Ljava/lang/StringBuilder;
    .end local v23    # "thumbSb":Ljava/lang/StringBuilder;
    :cond_19
    const-string v26, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 404
    .end local v9    # "event":Lorg/json/JSONObject;
    .end local v10    # "i":I
    .end local v13    # "item":Lorg/json/JSONArray;
    .end local v19    # "listData":Lcom/lzx/iteam/bean/EventListData;
    .end local v20    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 405
    .local v8, "e":Lorg/json/JSONException;
    const-string v26, "new_event"

    invoke-virtual {v8}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 344
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v6    # "count":I
    .restart local v9    # "event":Lorg/json/JSONObject;
    .restart local v10    # "i":I
    .restart local v13    # "item":Lorg/json/JSONArray;
    .restart local v19    # "listData":Lcom/lzx/iteam/bean/EventListData;
    .restart local v20    # "object":Lorg/json/JSONObject;
    :cond_1a
    :try_start_2
    const-string v26, "event_type"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "8"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1c

    .line 345
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .local v25, "votes":Ljava/lang/StringBuilder;
    new-instance v4, Lorg/json/JSONArray;

    const-string v26, "event_content"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 347
    .local v4, "array":Lorg/json/JSONArray;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-lt v14, v0, :cond_1b

    .line 351
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 348
    :cond_1b
    invoke-virtual {v4, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "content"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 349
    .local v24, "vote":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 353
    .end local v4    # "array":Lorg/json/JSONArray;
    .end local v14    # "j":I
    .end local v24    # "vote":Ljava/lang/String;
    .end local v25    # "votes":Ljava/lang/StringBuilder;
    :cond_1c
    const-string v26, "event_content"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 354
    .local v5, "content":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v26

    packed-switch v26, :pswitch_data_0

    goto/16 :goto_4

    .line 377
    :cond_1d
    :goto_6
    :pswitch_0
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "content"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1e

    .line 378
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "content"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    .line 380
    :cond_1e
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "init_title"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1f

    .line 381
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "init_title"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V

    .line 383
    :cond_1f
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "url"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 384
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "url"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setUrl1(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 356
    :pswitch_1
    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "content"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_20

    .line 357
    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "content"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent3(Ljava/lang/String;)V

    .line 359
    :cond_20
    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "init_title"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_21

    .line 360
    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "init_title"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle3(Ljava/lang/String;)V

    .line 362
    :cond_21
    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "url"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_22

    .line 363
    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "url"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setUrl3(Ljava/lang/String;)V

    .line 366
    :cond_22
    :pswitch_2
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "content"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_23

    .line 367
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "content"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setContent2(Ljava/lang/String;)V

    .line 369
    :cond_23
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "init_title"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_24

    .line 370
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "init_title"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle2(Ljava/lang/String;)V

    .line 372
    :cond_24
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "url"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 373
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "url"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setUrl2(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
