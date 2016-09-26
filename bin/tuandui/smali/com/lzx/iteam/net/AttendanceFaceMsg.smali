.class public Lcom/lzx/iteam/net/AttendanceFaceMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "AttendanceFaceMsg.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AttendanceFaceMsg"


# instance fields
.field private attendanceDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/AttendanceData;",
            ">;"
        }
    .end annotation
.end field

.field private cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mContext:Landroid/content/Context;

.field private mmCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/content/Context;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/lzx/iteam/net/AttendanceFaceMsg;->mmCallback:Landroid/os/Message;

    .line 30
    iput-object p2, p0, Lcom/lzx/iteam/net/AttendanceFaceMsg;->mContext:Landroid/content/Context;

    .line 31
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v1, p0, Lcom/lzx/iteam/net/AttendanceFaceMsg;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/AttendanceFaceMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 32
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 82
    const-string v4, "AttendanceFaceMsg"

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

    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 85
    const/4 v2, 0x0

    .line 87
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 95
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/AttendanceFaceMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 96
    iget-object v4, p0, Lcom/lzx/iteam/net/AttendanceFaceMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 97
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 98
    iget-object v4, p0, Lcom/lzx/iteam/net/AttendanceFaceMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/AttendanceFaceMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 105
    :cond_1
    return-void

    .line 89
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 91
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/AttendanceFaceMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 89
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
    .line 36
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/lzx/iteam/net/AttendanceFaceMsg;->attendanceDatas:Ljava/util/ArrayList;

    .line 38
    :try_start_0
    const-string v6, "data"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 39
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "attendances"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 40
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lt v2, v6, :cond_1

    .line 69
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    iget-object v6, p0, Lcom/lzx/iteam/net/AttendanceFaceMsg;->mmCallback:Landroid/os/Message;

    if-eqz v6, :cond_0

    .line 72
    iget-object v6, p0, Lcom/lzx/iteam/net/AttendanceFaceMsg;->mmCallback:Landroid/os/Message;

    iget-object v7, p0, Lcom/lzx/iteam/net/AttendanceFaceMsg;->attendanceDatas:Ljava/util/ArrayList;

    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    iget-object v6, p0, Lcom/lzx/iteam/net/AttendanceFaceMsg;->mmCallback:Landroid/os/Message;

    const/4 v7, 0x0

    iput v7, v6, Landroid/os/Message;->arg1:I

    .line 74
    iget-object v6, p0, Lcom/lzx/iteam/net/AttendanceFaceMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 78
    :cond_0
    return-void

    .line 41
    .restart local v2    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    new-instance v0, Lcom/lzx/iteam/bean/AttendanceData;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/AttendanceData;-><init>()V

    .line 42
    .local v0, "attendanceData":Lcom/lzx/iteam/bean/AttendanceData;
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 43
    .local v3, "item":Lorg/json/JSONObject;
    const-string v6, "deviation"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setDeviation(Ljava/lang/String;)V

    .line 44
    const-string v6, "name"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setName(Ljava/lang/String;)V

    .line 45
    const-string v6, "member_count"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setMemberCount(Ljava/lang/String;)V

    .line 46
    const-string v6, "end_work_time"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setEndWorkTime(Ljava/lang/String;)V

    .line 47
    const-string v6, "start_work_time"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setStartWorkTime(Ljava/lang/String;)V

    .line 48
    const-string v6, "longitude"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setLongitude(Ljava/lang/String;)V

    .line 49
    const-string v6, "latitude"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setLatitude(Ljava/lang/String;)V

    .line 50
    const-string v6, "address"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setAddress(Ljava/lang/String;)V

    .line 51
    const-string v6, "group_id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setGroupId(Ljava/lang/String;)V

    .line 52
    const-string v6, "group_name"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setGroupName(Ljava/lang/String;)V

    .line 53
    const-string v6, "work_date"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setWorkDate(Ljava/lang/String;)V

    .line 54
    const-string v6, "form_id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceData;->set_id(Ljava/lang/String;)V

    .line 55
    const-string v6, "is_alert"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setIsAlert(Ljava/lang/String;)V

    .line 56
    const-string v6, "sign_in"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setSignIn(Ljava/lang/String;)V

    .line 57
    const-string v6, "sign_out"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setSignOut(Ljava/lang/String;)V

    .line 58
    const-string v6, "sign_in_time"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setSignInTime(Ljava/lang/String;)V

    .line 59
    const-string v6, "sign_out_time"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setSignOutTime(Ljava/lang/String;)V

    .line 60
    const-string v6, "is_admin"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setIsAdmin(Ljava/lang/String;)V

    .line 61
    const-string v6, "todo_count"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setTodoCount(I)V

    .line 62
    iget-object v6, p0, Lcom/lzx/iteam/net/AttendanceFaceMsg;->attendanceDatas:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 64
    .end local v0    # "attendanceData":Lcom/lzx/iteam/bean/AttendanceData;
    .end local v2    # "i":I
    .end local v3    # "item":Lorg/json/JSONObject;
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Lorg/json/JSONException;
    const-string v6, "AttendanceFaceMsg"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "JSONException : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method
