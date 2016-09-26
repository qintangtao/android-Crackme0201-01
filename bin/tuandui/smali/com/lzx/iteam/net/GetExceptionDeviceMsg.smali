.class public Lcom/lzx/iteam/net/GetExceptionDeviceMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetExceptionDeviceMsg.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetExceptionDeviceMsg"


# instance fields
.field private deviceMsgDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/DeviceMsgData;",
            ">;"
        }
    .end annotation
.end field

.field private mmCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/Message;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/net/GetExceptionDeviceMsg;->deviceMsgDatas:Ljava/util/ArrayList;

    .line 25
    iput-object p1, p0, Lcom/lzx/iteam/net/GetExceptionDeviceMsg;->mmCallback:Landroid/os/Message;

    .line 26
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 64
    const-string v4, "GetExceptionDeviceMsg"

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

    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 67
    const/4 v2, 0x0

    .line 69
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 77
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/GetExceptionDeviceMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 78
    iget-object v4, p0, Lcom/lzx/iteam/net/GetExceptionDeviceMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 79
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 80
    iget-object v4, p0, Lcom/lzx/iteam/net/GetExceptionDeviceMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 84
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetExceptionDeviceMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 86
    :cond_1
    return-void

    .line 71
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 73
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/GetExceptionDeviceMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 71
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
    .line 30
    const/4 v3, 0x0

    .line 32
    .local v3, "isOpen":I
    :try_start_0
    const-string v7, "data"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 33
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string v7, "devices"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 34
    const-string v7, "devices"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 35
    .local v5, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-lt v2, v7, :cond_2

    .line 52
    .end local v2    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/lzx/iteam/net/GetExceptionDeviceMsg;->mmCallback:Landroid/os/Message;

    if-eqz v7, :cond_1

    .line 53
    iget-object v7, p0, Lcom/lzx/iteam/net/GetExceptionDeviceMsg;->mmCallback:Landroid/os/Message;

    iget-object v8, p0, Lcom/lzx/iteam/net/GetExceptionDeviceMsg;->deviceMsgDatas:Ljava/util/ArrayList;

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 54
    iget-object v7, p0, Lcom/lzx/iteam/net/GetExceptionDeviceMsg;->mmCallback:Landroid/os/Message;

    iput v3, v7, Landroid/os/Message;->arg2:I

    .line 55
    iget-object v7, p0, Lcom/lzx/iteam/net/GetExceptionDeviceMsg;->mmCallback:Landroid/os/Message;

    const/4 v8, 0x0

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 56
    iget-object v7, p0, Lcom/lzx/iteam/net/GetExceptionDeviceMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 60
    :cond_1
    return-void

    .line 36
    .restart local v2    # "i":I
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    new-instance v0, Lcom/lzx/iteam/bean/DeviceMsgData;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/DeviceMsgData;-><init>()V

    .line 37
    .local v0, "deviceMsgData":Lcom/lzx/iteam/bean/DeviceMsgData;
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 38
    .local v4, "item":Lorg/json/JSONObject;
    const-string v7, "id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lzx/iteam/bean/DeviceMsgData;->setId(Ljava/lang/String;)V

    .line 39
    const-string v7, "device_name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lzx/iteam/bean/DeviceMsgData;->setDeviceName(Ljava/lang/String;)V

    .line 40
    const-string v7, "device_type"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lzx/iteam/bean/DeviceMsgData;->setDeviceType(Ljava/lang/String;)V

    .line 41
    const-string v7, "device_number"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lzx/iteam/bean/DeviceMsgData;->setDeviceId(Ljava/lang/String;)V

    .line 42
    const-string v7, "is_default"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lzx/iteam/bean/DeviceMsgData;->setGroupDefault(Ljava/lang/String;)V

    .line 43
    iget-object v7, p0, Lcom/lzx/iteam/net/GetExceptionDeviceMsg;->deviceMsgDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "deviceMsgData":Lcom/lzx/iteam/bean/DeviceMsgData;
    .end local v2    # "i":I
    .end local v4    # "item":Lorg/json/JSONObject;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
