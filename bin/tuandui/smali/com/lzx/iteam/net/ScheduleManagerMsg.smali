.class public Lcom/lzx/iteam/net/ScheduleManagerMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "ScheduleManagerMsg.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScheduleManagerMsg"


# instance fields
.field private cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mContext:Landroid/content/Context;

.field private mMethod:I

.field private mmCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/content/Context;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/lzx/iteam/net/ScheduleManagerMsg;->mmCallback:Landroid/os/Message;

    .line 32
    iput-object p2, p0, Lcom/lzx/iteam/net/ScheduleManagerMsg;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v1, p0, Lcom/lzx/iteam/net/ScheduleManagerMsg;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/ScheduleManagerMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/os/Message;Landroid/content/Context;I)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "method"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/lzx/iteam/net/ScheduleManagerMsg;->mmCallback:Landroid/os/Message;

    .line 38
    iput-object p2, p0, Lcom/lzx/iteam/net/ScheduleManagerMsg;->mContext:Landroid/content/Context;

    .line 39
    iput p3, p0, Lcom/lzx/iteam/net/ScheduleManagerMsg;->mMethod:I

    .line 40
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 92
    const-string v4, "ScheduleManagerMsg"

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

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 95
    const/4 v2, 0x0

    .line 97
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 105
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/ScheduleManagerMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 106
    iget-object v4, p0, Lcom/lzx/iteam/net/ScheduleManagerMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 107
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 108
    iget-object v4, p0, Lcom/lzx/iteam/net/ScheduleManagerMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/ScheduleManagerMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 115
    :cond_1
    return-void

    .line 99
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 101
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 110
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/ScheduleManagerMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 99
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
    .line 44
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v5, "managers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ScheduleManager;>;"
    :try_start_0
    const-string v7, "data"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 47
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 48
    .local v3, "jsonArray":Lorg/json/JSONArray;
    iget v7, p0, Lcom/lzx/iteam/net/ScheduleManagerMsg;->mMethod:I

    if-nez v7, :cond_3

    .line 49
    const-string v7, "managers"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 50
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-lt v1, v7, :cond_2

    .line 79
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/lzx/iteam/net/ScheduleManagerMsg;->mmCallback:Landroid/os/Message;

    if-eqz v7, :cond_1

    .line 82
    iget-object v7, p0, Lcom/lzx/iteam/net/ScheduleManagerMsg;->mmCallback:Landroid/os/Message;

    iput-object v5, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    iget-object v7, p0, Lcom/lzx/iteam/net/ScheduleManagerMsg;->mmCallback:Landroid/os/Message;

    const/4 v8, 0x0

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 84
    iget-object v7, p0, Lcom/lzx/iteam/net/ScheduleManagerMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 88
    :cond_1
    return-void

    .line 51
    .restart local v1    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 52
    .local v2, "item":Lorg/json/JSONObject;
    new-instance v6, Lcom/lzx/iteam/bean/ScheduleManager;

    invoke-direct {v6}, Lcom/lzx/iteam/bean/ScheduleManager;-><init>()V

    .line 53
    .local v6, "scheduleManager":Lcom/lzx/iteam/bean/ScheduleManager;
    const-string v7, "user_name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/bean/ScheduleManager;->setUserName(Ljava/lang/String;)V

    .line 54
    const-string v7, "user_id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/bean/ScheduleManager;->setUserId(Ljava/lang/String;)V

    .line 55
    const-string v7, "avatar"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/bean/ScheduleManager;->setAvatar(Ljava/lang/String;)V

    .line 56
    const-string v7, "job"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/bean/ScheduleManager;->setJob(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "i":I
    .end local v2    # "item":Lorg/json/JSONObject;
    .end local v6    # "scheduleManager":Lcom/lzx/iteam/bean/ScheduleManager;
    :cond_3
    iget v7, p0, Lcom/lzx/iteam/net/ScheduleManagerMsg;->mMethod:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 60
    const-string v7, "approvals"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 61
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 62
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 63
    .restart local v2    # "item":Lorg/json/JSONObject;
    new-instance v6, Lcom/lzx/iteam/bean/ScheduleManager;

    invoke-direct {v6}, Lcom/lzx/iteam/bean/ScheduleManager;-><init>()V

    .line 64
    .restart local v6    # "scheduleManager":Lcom/lzx/iteam/bean/ScheduleManager;
    const-string v7, "contact_id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/bean/ScheduleManager;->setContact_id(Ljava/lang/String;)V

    .line 65
    const-string v7, "contact_name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/bean/ScheduleManager;->setUserName(Ljava/lang/String;)V

    .line 66
    const-string v7, "user_id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/bean/ScheduleManager;->setUserId(Ljava/lang/String;)V

    .line 67
    const-string v7, "contact_image"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/bean/ScheduleManager;->setAvatar(Ljava/lang/String;)V

    .line 68
    const-string v7, "is_attendance"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 69
    const-string v7, "is_attendance"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/bean/ScheduleManager;->setAttendance(Ljava/lang/String;)V

    .line 71
    :cond_4
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 75
    .end local v1    # "i":I
    .end local v2    # "item":Lorg/json/JSONObject;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "scheduleManager":Lcom/lzx/iteam/bean/ScheduleManager;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method
