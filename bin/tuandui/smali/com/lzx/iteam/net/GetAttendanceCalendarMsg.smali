.class public Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetAttendanceCalendarMsg.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetAttendanceCalendarMsg"


# instance fields
.field private mAttendanceCalendarDB:Lcom/lzx/iteam/provider/AttendanceCalendarDB;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mContext:Landroid/content/Context;

.field private mDate:Ljava/lang/String;

.field private mDay:Ljava/lang/String;

.field private mGroupId:Ljava/lang/String;

.field private mMonth:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private mYear:Ljava/lang/String;

.field private mmCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "mContext"    # Landroid/content/Context;
    .param p3, "year"    # Ljava/lang/String;
    .param p4, "month"    # Ljava/lang/String;
    .param p5, "day"    # Ljava/lang/String;
    .param p6, "boss"    # Ljava/lang/String;
    .param p7, "groupId"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mmCallback:Landroid/os/Message;

    .line 38
    iput-object p2, p0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mContext:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mYear:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mMonth:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mDay:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mUserId:Ljava/lang/String;

    .line 43
    iput-object p7, p0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mGroupId:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/lzx/iteam/provider/AttendanceCalendarDB;

    invoke-direct {v0, p2}, Lcom/lzx/iteam/provider/AttendanceCalendarDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mAttendanceCalendarDB:Lcom/lzx/iteam/provider/AttendanceCalendarDB;

    .line 45
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p2}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mYear:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mMonth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mDate:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 150
    const-string v4, "GetAttendanceCalendarMsg"

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

    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 153
    const/4 v2, 0x0

    .line 155
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 163
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 164
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 165
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 166
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 170
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 172
    :cond_1
    return-void

    .line 157
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 159
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 157
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 22
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 53
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v4, "attendanceCalendarDatas":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/AttendanceCalendarData;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v6, "attendanceCalendarMsgDatas":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mUserId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mYear:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mMonth:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mGroupId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v17 .. v21}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteAttendanceCalendarByDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mAttendanceCalendarDB:Lcom/lzx/iteam/provider/AttendanceCalendarDB;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mDate:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mUserId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mGroupId:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Lcom/lzx/iteam/provider/AttendanceCalendarDB;->deleteAttendanceByDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v17, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 59
    const-string v17, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 60
    .local v15, "jsonObject":Lorg/json/JSONObject;
    const-string v17, "attendance_calendars"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 61
    .local v14, "jsonArray":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v10, v0, :cond_2

    .line 131
    .end local v10    # "i":I
    .end local v14    # "jsonArray":Lorg/json/JSONArray;
    .end local v15    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 132
    .local v16, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v17, "calendar"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v17, "attendance"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    .line 145
    .end local v16    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_1
    return-void

    .line 62
    .restart local v10    # "i":I
    .restart local v14    # "jsonArray":Lorg/json/JSONArray;
    .restart local v15    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    new-instance v3, Lcom/lzx/iteam/bean/AttendanceCalendarData;

    invoke-direct {v3}, Lcom/lzx/iteam/bean/AttendanceCalendarData;-><init>()V

    .line 63
    .local v3, "attendanceCalendarData":Lcom/lzx/iteam/bean/AttendanceCalendarData;
    invoke-virtual {v14, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 64
    .local v11, "item":Lorg/json/JSONObject;
    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->setStatus(Ljava/lang/String;)V

    .line 65
    const-string v17, "cheat"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 66
    const-string v17, "cheat"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->setCheat(Ljava/lang/String;)V

    .line 68
    :cond_3
    const-string v17, "day"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->setDay(Ljava/lang/String;)V

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mYear:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->setYear(Ljava/lang/String;)V

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mMonth:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->setMonth(Ljava/lang/String;)V

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mUserId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->setUserId(Ljava/lang/String;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mGroupId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->setGroupId(Ljava/lang/String;)V

    .line 73
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertAttendanceCalendarListData(Lcom/lzx/iteam/bean/AttendanceCalendarData;)J

    .line 76
    const-string v17, "items"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 77
    const-string v17, "items"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 78
    .local v12, "items":Lorg/json/JSONArray;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-lez v17, :cond_4

    .line 79
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v13, v0, :cond_5

    .line 61
    .end local v12    # "items":Lorg/json/JSONArray;
    .end local v13    # "j":I
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 80
    .restart local v12    # "items":Lorg/json/JSONArray;
    .restart local v13    # "j":I
    :cond_5
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 81
    .local v8, "details":Lorg/json/JSONObject;
    new-instance v5, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;

    invoke-direct {v5}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;-><init>()V

    .line 82
    .local v5, "attendanceCalendarMsgData":Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setType(Ljava/lang/String;)V

    .line 83
    const-string v17, "day"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setDay(Ljava/lang/String;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mGroupId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setGroup_id(Ljava/lang/String;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mUserId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setUser_id(Ljava/lang/String;)V

    .line 86
    const-string v17, "part"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 87
    const-string v17, "part"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setPart(Ljava/lang/String;)V

    .line 89
    :cond_6
    const-string v17, "detail"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 90
    .local v7, "detail":Lorg/json/JSONObject;
    const-string v17, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->set_id(Ljava/lang/String;)V

    .line 91
    const-string v17, "1"

    const-string v18, "type"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 92
    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setStatus(Ljava/lang/String;)V

    .line 93
    const-string v17, "form_id"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setForm_id(Ljava/lang/String;)V

    .line 94
    const-string v17, "longitude"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setLongitude(Ljava/lang/String;)V

    .line 95
    const-string v17, "latitude"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setLatitude(Ljava/lang/String;)V

    .line 96
    const-string v17, "date"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setDate(Ljava/lang/String;)V

    .line 97
    const-string v17, "part"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setPart(Ljava/lang/String;)V

    .line 98
    const-string v17, "time"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setTime(Ljava/lang/String;)V

    .line 99
    const-string v17, "cheat"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 100
    const-string v17, "cheat"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setCheat(Ljava/lang/String;)V

    .line 102
    :cond_7
    const-string v17, "cheat_device_id"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 103
    const-string v17, "cheat_device_id"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setCheat_device_id(Ljava/lang/String;)V

    .line 122
    :cond_8
    :goto_3
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mAttendanceCalendarDB:Lcom/lzx/iteam/provider/AttendanceCalendarDB;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mDate:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "day"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v5}, Lcom/lzx/iteam/provider/AttendanceCalendarDB;->addAttendanceCalendar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 106
    :cond_9
    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setStatus(Ljava/lang/String;)V

    .line 107
    const-string v17, "approval_end_part"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setApproval_end_part(Ljava/lang/String;)V

    .line 108
    const-string v17, "approval_end_time"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setApproval_end_time(Ljava/lang/String;)V

    .line 109
    const-string v17, "approval_status"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setApproval_status(Ljava/lang/String;)V

    .line 110
    const-string v17, "approval_reason"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setApproval_reason(Ljava/lang/String;)V

    .line 111
    const-string v17, "approval_type"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setApproval_type(Ljava/lang/String;)V

    .line 112
    const-string v17, "approval_done_time"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setApproval_done_time(Ljava/lang/String;)V

    .line 113
    const-string v17, "approval_address"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setApproval_address(Ljava/lang/String;)V

    .line 114
    const-string v17, "approval_form_id"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setForm_id(Ljava/lang/String;)V

    .line 115
    const-string v17, "approval_leave_type"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setApproval_leave_type(Ljava/lang/String;)V

    .line 116
    const-string v17, "approve_admin"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setApprove_admin(Ljava/lang/String;)V

    .line 117
    const-string v17, "approval_day"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setApproval_day(Ljava/lang/String;)V

    .line 118
    const-string v17, "approval_start_time"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setApproval_start_time(Ljava/lang/String;)V

    .line 119
    const-string v17, "approval_time"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setApproval_time(Ljava/lang/String;)V

    .line 120
    const-string v17, "approval_start_part"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setApproval_start_part(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 141
    .end local v3    # "attendanceCalendarData":Lcom/lzx/iteam/bean/AttendanceCalendarData;
    .end local v5    # "attendanceCalendarMsgData":Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;
    .end local v7    # "detail":Lorg/json/JSONObject;
    .end local v8    # "details":Lorg/json/JSONObject;
    .end local v10    # "i":I
    .end local v11    # "item":Lorg/json/JSONObject;
    .end local v12    # "items":Lorg/json/JSONArray;
    .end local v13    # "j":I
    .end local v14    # "jsonArray":Lorg/json/JSONArray;
    .end local v15    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    .line 142
    .local v9, "e":Ljava/lang/Exception;
    const-string v17, "GetAttendanceCalendarMsg"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "error:   "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method
