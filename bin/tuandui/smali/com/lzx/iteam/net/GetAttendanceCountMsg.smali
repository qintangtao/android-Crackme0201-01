.class public Lcom/lzx/iteam/net/GetAttendanceCountMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetAttendanceCountMsg.java"


# instance fields
.field private attendanceCountDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/AttendanceCountData;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/Message;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/net/GetAttendanceCountMsg;->attendanceCountDatas:Ljava/util/ArrayList;

    .line 23
    iput-object p1, p0, Lcom/lzx/iteam/net/GetAttendanceCountMsg;->mCallback:Landroid/os/Message;

    .line 24
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
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceCountMsg;->mCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 91
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceCountMsg;->mCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 92
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 93
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceCountMsg;->mCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceCountMsg;->mCallback:Landroid/os/Message;

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
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceCountMsg;->mCallback:Landroid/os/Message;

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
    .locals 8
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 29
    :try_start_0
    const-string v6, "data"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 30
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "members"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 31
    .local v5, "members":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lt v2, v6, :cond_1

    .line 62
    .end local v2    # "i":I
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "members":Lorg/json/JSONArray;
    :goto_1
    if-eqz p1, :cond_4

    .line 63
    iget-object v6, p0, Lcom/lzx/iteam/net/GetAttendanceCountMsg;->mCallback:Landroid/os/Message;

    if-eqz v6, :cond_0

    .line 64
    iget-object v6, p0, Lcom/lzx/iteam/net/GetAttendanceCountMsg;->mCallback:Landroid/os/Message;

    const/4 v7, 0x0

    iput v7, v6, Landroid/os/Message;->arg1:I

    .line 65
    iget-object v6, p0, Lcom/lzx/iteam/net/GetAttendanceCountMsg;->mCallback:Landroid/os/Message;

    iget-object v7, p0, Lcom/lzx/iteam/net/GetAttendanceCountMsg;->attendanceCountDatas:Ljava/util/ArrayList;

    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 66
    iget-object v6, p0, Lcom/lzx/iteam/net/GetAttendanceCountMsg;->mCallback:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 74
    :cond_0
    :goto_2
    return-void

    .line 32
    .restart local v2    # "i":I
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "members":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    new-instance v0, Lcom/lzx/iteam/bean/AttendanceCountData;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/AttendanceCountData;-><init>()V

    .line 33
    .local v0, "attendanceCountData":Lcom/lzx/iteam/bean/AttendanceCountData;
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 34
    .local v3, "item":Lorg/json/JSONObject;
    const-string v6, "user_id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceCountData;->setUserId(Ljava/lang/String;)V

    .line 35
    const-string v6, "user_name"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceCountData;->setUserName(Ljava/lang/String;)V

    .line 36
    const-string v6, "user_image"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceCountData;->setUserImage(Ljava/lang/String;)V

    .line 37
    const-string v6, "approval_leave_type_0"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceCountData;->setLeaveType0(Ljava/lang/String;)V

    .line 38
    const-string v6, "approval_leave_type_1"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceCountData;->setLeaveType1(Ljava/lang/String;)V

    .line 39
    const-string v6, "approval_leave_type_2"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceCountData;->setLeaveType2(Ljava/lang/String;)V

    .line 40
    const-string v6, "approval_leave_type_3"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceCountData;->setLeaveType3(Ljava/lang/String;)V

    .line 41
    const-string v6, "approval_leave_type_4"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceCountData;->setLeaveType4(Ljava/lang/String;)V

    .line 42
    const-string v6, "work_be_late"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceCountData;->setWorkBeLateDay(Ljava/lang/String;)V

    .line 43
    const-string v6, "work_be_late_count"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 44
    const-string v6, "work_be_late_count"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceCountData;->setWorkBeLateCount(Ljava/lang/String;)V

    .line 46
    :cond_2
    const-string v6, "work_leave_early"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceCountData;->setWorkLeaveEarlyDay(Ljava/lang/String;)V

    .line 47
    const-string v6, "work_leave_early_count"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 48
    const-string v6, "work_leave_early_count"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceCountData;->setWorkLeaveEarlyCount(Ljava/lang/String;)V

    .line 50
    :cond_3
    const-string v6, "approval_out"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceCountData;->setOutDay(Ljava/lang/String;)V

    .line 51
    const-string v6, "approval_business"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceCountData;->setBusinessDay(Ljava/lang/String;)V

    .line 52
    const-string v6, "work_day"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceCountData;->setWorkDay(Ljava/lang/String;)V

    .line 53
    const-string v6, "approval_leave"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceCountData;->setLeaveDay(Ljava/lang/String;)V

    .line 54
    const-string v6, "total"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceCountData;->setTotal(Ljava/lang/String;)V

    .line 55
    iget-object v6, p0, Lcom/lzx/iteam/net/GetAttendanceCountMsg;->attendanceCountDatas:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 58
    .end local v0    # "attendanceCountData":Lcom/lzx/iteam/bean/AttendanceCountData;
    .end local v2    # "i":I
    .end local v3    # "item":Lorg/json/JSONObject;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "members":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 69
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v6, p0, Lcom/lzx/iteam/net/GetAttendanceCountMsg;->mCallback:Landroid/os/Message;

    if-eqz v6, :cond_0

    .line 70
    iget-object v6, p0, Lcom/lzx/iteam/net/GetAttendanceCountMsg;->mCallback:Landroid/os/Message;

    const/4 v7, 0x2

    iput v7, v6, Landroid/os/Message;->arg1:I

    .line 71
    iget-object v6, p0, Lcom/lzx/iteam/net/GetAttendanceCountMsg;->mCallback:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2
.end method
