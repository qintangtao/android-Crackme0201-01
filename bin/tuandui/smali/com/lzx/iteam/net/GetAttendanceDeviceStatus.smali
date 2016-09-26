.class public Lcom/lzx/iteam/net/GetAttendanceDeviceStatus;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetAttendanceDeviceStatus.java"


# instance fields
.field private mCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Message;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/lzx/iteam/net/GetAttendanceDeviceStatus;->mCallback:Landroid/os/Message;

    .line 18
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 46
    const/4 v2, 0x0

    .line 48
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 56
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceDeviceStatus;->mCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 57
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceDeviceStatus;->mCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 58
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 59
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceDeviceStatus;->mCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 63
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceDeviceStatus;->mCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 65
    :cond_1
    return-void

    .line 50
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 52
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceDeviceStatus;->mCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 50
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 23
    :try_start_0
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    if-eqz p1, :cond_1

    .line 29
    iget-object v1, p0, Lcom/lzx/iteam/net/GetAttendanceDeviceStatus;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/lzx/iteam/net/GetAttendanceDeviceStatus;->mCallback:Landroid/os/Message;

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 31
    iget-object v1, p0, Lcom/lzx/iteam/net/GetAttendanceDeviceStatus;->mCallback:Landroid/os/Message;

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    iget-object v1, p0, Lcom/lzx/iteam/net/GetAttendanceDeviceStatus;->mCallback:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 40
    :cond_0
    :goto_1
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 35
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/net/GetAttendanceDeviceStatus;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/lzx/iteam/net/GetAttendanceDeviceStatus;->mCallback:Landroid/os/Message;

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 37
    iget-object v1, p0, Lcom/lzx/iteam/net/GetAttendanceDeviceStatus;->mCallback:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method
