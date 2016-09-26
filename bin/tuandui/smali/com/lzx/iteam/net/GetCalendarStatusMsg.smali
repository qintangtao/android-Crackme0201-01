.class public Lcom/lzx/iteam/net/GetCalendarStatusMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetCalendarStatusMsg.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mmCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/content/Context;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/lzx/iteam/net/GetCalendarStatusMsg;->mmCallback:Landroid/os/Message;

    .line 22
    iput-object p2, p0, Lcom/lzx/iteam/net/GetCalendarStatusMsg;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 58
    const/4 v2, 0x0

    .line 60
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 68
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/GetCalendarStatusMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 69
    iget-object v4, p0, Lcom/lzx/iteam/net/GetCalendarStatusMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 70
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 71
    iget-object v4, p0, Lcom/lzx/iteam/net/GetCalendarStatusMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetCalendarStatusMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 77
    :cond_1
    return-void

    .line 62
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 64
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/GetCalendarStatusMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 62
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
    .line 27
    const/4 v2, 0x0

    .line 30
    .local v2, "newMsg":I
    :try_start_0
    const-string v3, "calendar_status"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 31
    const-string v3, "calendar_status"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 32
    iget-object v3, p0, Lcom/lzx/iteam/net/GetCalendarStatusMsg;->mmCallback:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 33
    iget-object v3, p0, Lcom/lzx/iteam/net/GetCalendarStatusMsg;->mmCallback:Landroid/os/Message;

    const/4 v4, 0x0

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 42
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lzx/iteam/net/GetCalendarStatusMsg;->mmCallback:Landroid/os/Message;

    if-eqz v3, :cond_1

    .line 43
    iget-object v3, p0, Lcom/lzx/iteam/net/GetCalendarStatusMsg;->mmCallback:Landroid/os/Message;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 44
    iget-object v3, p0, Lcom/lzx/iteam/net/GetCalendarStatusMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 52
    :cond_1
    :goto_1
    return-void

    .line 35
    :cond_2
    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 37
    .local v1, "item":Lorg/json/JSONObject;
    const-string v3, "count"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 38
    iget-object v3, p0, Lcom/lzx/iteam/net/GetCalendarStatusMsg;->mmCallback:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 39
    iget-object v3, p0, Lcom/lzx/iteam/net/GetCalendarStatusMsg;->mmCallback:Landroid/os/Message;

    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    .end local v1    # "item":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "calendar_status"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
