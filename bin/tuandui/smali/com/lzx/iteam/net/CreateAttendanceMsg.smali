.class public Lcom/lzx/iteam/net/CreateAttendanceMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "CreateAttendanceMsg.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CreateAttendanceMsg"


# instance fields
.field private attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

.field private cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mContext:Landroid/content/Context;

.field private mmCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/content/Context;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/lzx/iteam/net/CreateAttendanceMsg;->mmCallback:Landroid/os/Message;

    .line 31
    iput-object p2, p0, Lcom/lzx/iteam/net/CreateAttendanceMsg;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v1, p0, Lcom/lzx/iteam/net/CreateAttendanceMsg;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/CreateAttendanceMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 33
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 9
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    const/16 v8, 0x1389

    .line 56
    const-string v5, "CreateAttendanceMsg"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onError : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ret: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "errorMsg":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v0, "backData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 60
    const/4 v3, 0x0

    .line 62
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v3    # "jData":Lorg/json/JSONObject;
    .local v4, "jData":Lorg/json/JSONObject;
    if-ne p1, v8, :cond_2

    .line 64
    :try_start_1
    const-string v5, "msg"

    const-string v6, "msg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v5, "data"

    const-string v6, "data"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    .end local v4    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/lzx/iteam/net/CreateAttendanceMsg;->mmCallback:Landroid/os/Message;

    if-eqz v5, :cond_1

    .line 76
    iget-object v5, p0, Lcom/lzx/iteam/net/CreateAttendanceMsg;->mmCallback:Landroid/os/Message;

    iput p1, v5, Landroid/os/Message;->arg1:I

    .line 77
    if-ne p1, v8, :cond_3

    .line 78
    iget-object v5, p0, Lcom/lzx/iteam/net/CreateAttendanceMsg;->mmCallback:Landroid/os/Message;

    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    :goto_1
    iget-object v5, p0, Lcom/lzx/iteam/net/CreateAttendanceMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 89
    :cond_1
    return-void

    .line 67
    .restart local v4    # "jData":Lorg/json/JSONObject;
    :cond_2
    :try_start_2
    const-string v5, "msg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_0

    .line 69
    .end local v4    # "jData":Lorg/json/JSONObject;
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Lorg/json/JSONException;
    :goto_2
    const-string v2, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 71
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_3
    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 81
    iget-object v5, p0, Lcom/lzx/iteam/net/CreateAttendanceMsg;->mmCallback:Landroid/os/Message;

    iput-object v2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 83
    :cond_4
    iget-object v5, p0, Lcom/lzx/iteam/net/CreateAttendanceMsg;->mmCallback:Landroid/os/Message;

    sget-object v6, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 69
    .restart local v4    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "jData":Lorg/json/JSONObject;
    .restart local v3    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 37
    new-instance v2, Lcom/lzx/iteam/bean/AttendanceData;

    invoke-direct {v2}, Lcom/lzx/iteam/bean/AttendanceData;-><init>()V

    iput-object v2, p0, Lcom/lzx/iteam/net/CreateAttendanceMsg;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    .line 39
    :try_start_0
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 40
    .local v1, "jsonObject":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/lzx/iteam/net/CreateAttendanceMsg;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    const-string v3, "attendance_form_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/AttendanceData;->set_id(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    iget-object v2, p0, Lcom/lzx/iteam/net/CreateAttendanceMsg;->mmCallback:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/lzx/iteam/net/CreateAttendanceMsg;->mmCallback:Landroid/os/Message;

    iget-object v3, p0, Lcom/lzx/iteam/net/CreateAttendanceMsg;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 47
    iget-object v2, p0, Lcom/lzx/iteam/net/CreateAttendanceMsg;->mmCallback:Landroid/os/Message;

    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 48
    iget-object v2, p0, Lcom/lzx/iteam/net/CreateAttendanceMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 52
    :cond_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
