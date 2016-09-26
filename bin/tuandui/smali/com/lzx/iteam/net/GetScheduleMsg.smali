.class public Lcom/lzx/iteam/net/GetScheduleMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetScheduleMsg.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetScheduleMsg"


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
    .line 25
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/lzx/iteam/net/GetScheduleMsg;->mmCallback:Landroid/os/Message;

    .line 27
    iput-object p2, p0, Lcom/lzx/iteam/net/GetScheduleMsg;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v1, p0, Lcom/lzx/iteam/net/GetScheduleMsg;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/GetScheduleMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 29
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 58
    const-string v4, "GetScheduleMsg"

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

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 61
    const/4 v2, 0x0

    .line 63
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 71
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/GetScheduleMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 72
    iget-object v4, p0, Lcom/lzx/iteam/net/GetScheduleMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 73
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 74
    iget-object v4, p0, Lcom/lzx/iteam/net/GetScheduleMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetScheduleMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 81
    :cond_1
    return-void

    .line 65
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 67
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/GetScheduleMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 65
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 33
    new-instance v2, Lcom/lzx/iteam/bean/ScheduleData;

    invoke-direct {v2}, Lcom/lzx/iteam/bean/ScheduleData;-><init>()V

    .line 36
    .local v2, "scheduleData":Lcom/lzx/iteam/bean/ScheduleData;
    :try_start_0
    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 37
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "event_title"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/ScheduleData;->setTitle(Ljava/lang/String;)V

    .line 38
    const-string v3, "event_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/ScheduleData;->setId(Ljava/lang/String;)V

    .line 39
    const-string v3, "published_user_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/ScheduleData;->setPublishedUId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    iget-object v3, p0, Lcom/lzx/iteam/net/GetScheduleMsg;->mmCallback:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 48
    iget-object v3, p0, Lcom/lzx/iteam/net/GetScheduleMsg;->mmCallback:Landroid/os/Message;

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 49
    iget-object v3, p0, Lcom/lzx/iteam/net/GetScheduleMsg;->mmCallback:Landroid/os/Message;

    const/4 v4, 0x0

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 50
    iget-object v3, p0, Lcom/lzx/iteam/net/GetScheduleMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 54
    :cond_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "GetScheduleMsg"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
