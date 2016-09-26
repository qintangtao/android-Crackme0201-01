.class public Lcom/lzx/iteam/net/GetAttendanceList;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetAttendanceList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetAttendanceList"


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
    .line 27
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/lzx/iteam/net/GetAttendanceList;->mmCallback:Landroid/os/Message;

    .line 29
    iput-object p2, p0, Lcom/lzx/iteam/net/GetAttendanceList;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v1, p0, Lcom/lzx/iteam/net/GetAttendanceList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/GetAttendanceList;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 31
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 72
    const-string v4, "GetAttendanceList"

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

    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 75
    const/4 v2, 0x0

    .line 77
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 85
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceList;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 86
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceList;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 87
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 88
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceList;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 92
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceList;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 95
    :cond_1
    return-void

    .line 79
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 81
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceList;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 79
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
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v1, "attendanceDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/AttendanceData;>;"
    :try_start_0
    const-string v7, "data"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 38
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string v7, "attendances"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 39
    .local v5, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-lt v3, v7, :cond_1

    .line 59
    .end local v3    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    iget-object v7, p0, Lcom/lzx/iteam/net/GetAttendanceList;->mmCallback:Landroid/os/Message;

    if-eqz v7, :cond_0

    .line 62
    iget-object v7, p0, Lcom/lzx/iteam/net/GetAttendanceList;->mmCallback:Landroid/os/Message;

    iput-object v1, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 63
    iget-object v7, p0, Lcom/lzx/iteam/net/GetAttendanceList;->mmCallback:Landroid/os/Message;

    const/4 v8, 0x0

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 64
    iget-object v7, p0, Lcom/lzx/iteam/net/GetAttendanceList;->mmCallback:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 68
    :cond_0
    return-void

    .line 40
    .restart local v3    # "i":I
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    new-instance v0, Lcom/lzx/iteam/bean/AttendanceData;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/AttendanceData;-><init>()V

    .line 41
    .local v0, "attendanceData":Lcom/lzx/iteam/bean/AttendanceData;
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 42
    .local v4, "item":Lorg/json/JSONObject;
    const-string v7, "_id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lzx/iteam/bean/AttendanceData;->set_id(Ljava/lang/String;)V

    .line 43
    const-string v7, "deviation"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lzx/iteam/bean/AttendanceData;->setDeviation(Ljava/lang/String;)V

    .line 44
    const-string v7, "name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lzx/iteam/bean/AttendanceData;->setName(Ljava/lang/String;)V

    .line 45
    const-string v7, "member_count"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lzx/iteam/bean/AttendanceData;->setMemberCount(Ljava/lang/String;)V

    .line 46
    const-string v7, "end_work_time"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lzx/iteam/bean/AttendanceData;->setEndWorkTime(Ljava/lang/String;)V

    .line 47
    const-string v7, "start_work_time"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lzx/iteam/bean/AttendanceData;->setStartWorkTime(Ljava/lang/String;)V

    .line 48
    const-string v7, "longitude"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lzx/iteam/bean/AttendanceData;->setLongitude(Ljava/lang/String;)V

    .line 49
    const-string v7, "latitude"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lzx/iteam/bean/AttendanceData;->setLatitude(Ljava/lang/String;)V

    .line 50
    const-string v7, "address"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lzx/iteam/bean/AttendanceData;->setAddress(Ljava/lang/String;)V

    .line 51
    const-string v7, "work_date"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lzx/iteam/bean/AttendanceData;->setWorkDate(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 55
    .end local v0    # "attendanceData":Lcom/lzx/iteam/bean/AttendanceData;
    .end local v3    # "i":I
    .end local v4    # "item":Lorg/json/JSONObject;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method
