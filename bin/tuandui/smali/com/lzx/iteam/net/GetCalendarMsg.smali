.class public Lcom/lzx/iteam/net/GetCalendarMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetCalendarMsg.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetCalendarMsg"


# instance fields
.field private bossUid:Ljava/lang/String;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mContext:Landroid/content/Context;

.field private mDate:Ljava/lang/String;

.field private mDay:Ljava/lang/String;

.field private mMonth:Ljava/lang/String;

.field private mScheduleDb:Lcom/lzx/iteam/provider/ScheduleDB;

.field private mYear:Ljava/lang/String;

.field private mmCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "mContext"    # Landroid/content/Context;
    .param p3, "year"    # Ljava/lang/String;
    .param p4, "month"    # Ljava/lang/String;
    .param p5, "day"    # Ljava/lang/String;
    .param p6, "boss"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/lzx/iteam/net/GetCalendarMsg;->mmCallback:Landroid/os/Message;

    .line 45
    iput-object p2, p0, Lcom/lzx/iteam/net/GetCalendarMsg;->mContext:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/lzx/iteam/net/GetCalendarMsg;->mYear:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/lzx/iteam/net/GetCalendarMsg;->mMonth:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/lzx/iteam/net/GetCalendarMsg;->mDay:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/lzx/iteam/net/GetCalendarMsg;->bossUid:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/lzx/iteam/provider/ScheduleDB;

    invoke-direct {v0, p2}, Lcom/lzx/iteam/provider/ScheduleDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/GetCalendarMsg;->mScheduleDb:Lcom/lzx/iteam/provider/ScheduleDB;

    .line 51
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p2}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/GetCalendarMsg;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzx/iteam/net/GetCalendarMsg;->mYear:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/net/GetCalendarMsg;->mMonth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/net/GetCalendarMsg;->mDay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/GetCalendarMsg;->mDate:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 193
    const-string v4, "GetCalendarMsg"

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

    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 196
    const/4 v2, 0x0

    .line 198
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 206
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/GetCalendarMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 207
    iget-object v4, p0, Lcom/lzx/iteam/net/GetCalendarMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 208
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 209
    iget-object v4, p0, Lcom/lzx/iteam/net/GetCalendarMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 213
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetCalendarMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 215
    :cond_1
    return-void

    .line 200
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 202
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 211
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/GetCalendarMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 200
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 25
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 59
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v14, "listData":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/ScheduleListData;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v5, "calendarList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->bossUid:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mYear:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mMonth:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteCalendarByDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mScheduleDb:Lcom/lzx/iteam/provider/ScheduleDB;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mDate:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->bossUid:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/lzx/iteam/provider/ScheduleDB;->deleteScheduleByDate(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v21, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 65
    const-string v21, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 66
    .local v11, "jsonObject":Lorg/json/JSONObject;
    const-string v21, "calendar"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 67
    .local v16, "mdata":Lorg/json/JSONObject;
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 68
    .local v9, "it":Ljava/util/Iterator;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v13, "keyListstr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_3

    .line 73
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_4

    .line 174
    .end local v9    # "it":Ljava/util/Iterator;
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .end local v13    # "keyListstr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "mdata":Lorg/json/JSONObject;
    :cond_1
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 175
    .local v15, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v21, "schedule"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v21, "calendar"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    .line 188
    .end local v15    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    :goto_2
    return-void

    .line 70
    .restart local v9    # "it":Ljava/util/Iterator;
    .restart local v11    # "jsonObject":Lorg/json/JSONObject;
    .restart local v13    # "keyListstr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "mdata":Lorg/json/JSONObject;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    .end local v9    # "it":Ljava/util/Iterator;
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .end local v13    # "keyListstr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "mdata":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 185
    .local v6, "e":Ljava/lang/Exception;
    const-string v21, "GetCalendarMsg"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "error:   "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 73
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v9    # "it":Ljava/util/Iterator;
    .restart local v11    # "jsonObject":Lorg/json/JSONObject;
    .restart local v13    # "keyListstr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "mdata":Lorg/json/JSONObject;
    :cond_4
    :try_start_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 74
    .local v12, "key":Ljava/lang/String;
    new-instance v19, Lcom/lzx/iteam/bean/ScheduleListData;

    invoke-direct/range {v19 .. v19}, Lcom/lzx/iteam/bean/ScheduleListData;-><init>()V

    .line 75
    .local v19, "scheduleListData":Lcom/lzx/iteam/bean/ScheduleListData;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 76
    .local v17, "schedule":Lorg/json/JSONObject;
    const-string v22, "items"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 77
    const-string v22, "items"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 78
    .local v10, "items":Lorg/json/JSONArray;
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v22

    if-lez v22, :cond_5

    .line 79
    const-string v22, "1"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleListData;->setState(Ljava/lang/String;)V

    .line 80
    const-string v22, "status"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleListData;->setStatus(Ljava/lang/String;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mYear:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleListData;->setYear(Ljava/lang/String;)V

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mMonth:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleListData;->setMonth(Ljava/lang/String;)V

    .line 83
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleListData;->setDay(Ljava/lang/String;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->bossUid:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleListData;->setUserId(Ljava/lang/String;)V

    .line 85
    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertCalendarListData(Lcom/lzx/iteam/bean/ScheduleListData;)J

    .line 88
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mDay:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 89
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-lt v8, v0, :cond_6

    .line 168
    const-string v22, "key + day"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, " \u6570\u636e ==== "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 90
    :cond_6
    invoke-virtual {v10, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 91
    .local v4, "calendar":Lorg/json/JSONObject;
    const-string v22, "type"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 92
    .local v20, "type":Ljava/lang/String;
    const-string v22, "1"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 93
    new-instance v18, Lcom/lzx/iteam/bean/ScheduleData;

    invoke-direct/range {v18 .. v18}, Lcom/lzx/iteam/bean/ScheduleData;-><init>()V

    .line 94
    .local v18, "scheduleData":Lcom/lzx/iteam/bean/ScheduleData;
    const-string v22, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setType(Ljava/lang/String;)V

    .line 95
    const-string v22, "hidden"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    const-string v22, "1"

    const-string v23, "hidden"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    const-string v22, "event_title"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 96
    const-string v22, "start_datetime"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setStartTime(Ljava/lang/String;)V

    .line 97
    const-string v22, "end_datetime"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 98
    const-string v22, "end_datetime"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setEndTime(Ljava/lang/String;)V

    .line 100
    :cond_7
    const-string v22, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setHidden(Ljava/lang/String;)V

    .line 101
    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->bossUid:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setBossUid(Ljava/lang/String;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mScheduleDb:Lcom/lzx/iteam/provider/ScheduleDB;

    move-object/from16 v22, v0

    const-string v23, "1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mDate:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/lzx/iteam/provider/ScheduleDB;->addSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    .end local v18    # "scheduleData":Lcom/lzx/iteam/bean/ScheduleData;
    :cond_8
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 105
    .restart local v18    # "scheduleData":Lcom/lzx/iteam/bean/ScheduleData;
    :cond_9
    const-string v22, "hidden"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 106
    const-string v22, "hidden"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setHidden(Ljava/lang/String;)V

    .line 110
    :goto_5
    const-string v22, "ID"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setId(Ljava/lang/String;)V

    .line 111
    const-string v22, "start_datetime"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setStartTime(Ljava/lang/String;)V

    .line 112
    const-string v22, "event_title"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setTitle(Ljava/lang/String;)V

    .line 113
    const-string v22, "delegater_username"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setPublishedUName(Ljava/lang/String;)V

    .line 114
    const-string v22, "alert_datetime"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setAlertTime(Ljava/lang/String;)V

    .line 115
    const-string v22, "done"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 116
    const-string v22, "done"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setDone(Ljava/lang/String;)V

    .line 120
    :goto_6
    const-string v22, "remark"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setRemark(Ljava/lang/String;)V

    .line 121
    const-string v22, "update"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setNotice(Ljava/lang/String;)V

    .line 122
    const-string v22, "update_time"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setUpdateTime(Ljava/lang/String;)V

    .line 123
    const-string v22, "create_time"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setCreateTime(Ljava/lang/String;)V

    .line 124
    const-string v22, "delegate_user"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setPublishedUId(Ljava/lang/String;)V

    .line 125
    const-string v22, "end_datetime"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setEndTime(Ljava/lang/String;)V

    .line 126
    const-string v22, "address"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setAddress(Ljava/lang/String;)V

    .line 127
    const-string v22, "has_read"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setHasRead(Ljava/lang/String;)V

    .line 128
    const-string v22, "user_id"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setBossUid(Ljava/lang/String;)V

    .line 129
    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mScheduleDb:Lcom/lzx/iteam/provider/ScheduleDB;

    move-object/from16 v22, v0

    const-string v23, "1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mDate:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/lzx/iteam/provider/ScheduleDB;->addSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string v22, "0"

    invoke-virtual/range {v18 .. v18}, Lcom/lzx/iteam/bean/ScheduleData;->getAlertTime()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    invoke-virtual/range {v18 .. v18}, Lcom/lzx/iteam/bean/ScheduleData;->getBossUid()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->bossUid:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertAlarmWarnData(Lcom/lzx/iteam/bean/ScheduleData;)J

    goto/16 :goto_4

    .line 108
    :cond_a
    const-string v22, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setHidden(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 118
    :cond_b
    const-string v22, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/ScheduleData;->setDone(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 137
    .end local v18    # "scheduleData":Lcom/lzx/iteam/bean/ScheduleData;
    :cond_c
    new-instance v7, Lcom/lzx/iteam/bean/EventListData;

    invoke-direct {v7}, Lcom/lzx/iteam/bean/EventListData;-><init>()V

    .line 138
    .local v7, "eventListData":Lcom/lzx/iteam/bean/EventListData;
    const-string v22, "ID"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventId(Ljava/lang/String;)V

    .line 139
    const-string v22, "update_time"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setUpdateTime(Ljava/lang/String;)V

    .line 140
    const-string v22, "event_content"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    .line 141
    const-string v22, "user_id"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setUserId(Ljava/lang/String;)V

    .line 142
    const-string v22, "9"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 143
    const-string v22, "member_count"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setMemberCount(Ljava/lang/String;)V

    .line 144
    const-string v22, "user_img"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventAvatar(Ljava/lang/String;)V

    .line 145
    const-string v22, "event_title"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventTitle(Ljava/lang/String;)V

    .line 146
    const-string v22, "event_address"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setActivitySite(Ljava/lang/String;)V

    .line 147
    const-string v22, "event_time"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setActivityTime(Ljava/lang/String;)V

    .line 148
    const-string v22, "user_type"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setUserType(Ljava/lang/String;)V

    .line 149
    const-string v22, "has_read_count"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 150
    const-string v22, "has_read_count"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setHasReadCount(Ljava/lang/String;)V

    .line 152
    :cond_d
    const-string v22, "has_read"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 153
    const-string v22, "has_read"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setHasRead(Ljava/lang/String;)V

    .line 155
    :cond_e
    const-string v22, "create_time"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setCreateTime(Ljava/lang/String;)V

    .line 156
    const-string v22, "is_qrcode"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setIsQrcode(Ljava/lang/String;)V

    .line 157
    const-string v22, "end_datetime"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setEndTime(Ljava/lang/String;)V

    .line 158
    const-string v22, "user_name"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setUserName(Ljava/lang/String;)V

    .line 159
    const-string v22, "qrcode"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 160
    const-string v22, "qrcode"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setQrcode(Ljava/lang/String;)V

    .line 162
    :cond_f
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->bossUid:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/bean/EventListData;->setMyUserId(Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mScheduleDb:Lcom/lzx/iteam/provider/ScheduleDB;

    move-object/from16 v22, v0

    const-string v23, "9"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mDate:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v7}, Lcom/lzx/iteam/provider/ScheduleDB;->addSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method
