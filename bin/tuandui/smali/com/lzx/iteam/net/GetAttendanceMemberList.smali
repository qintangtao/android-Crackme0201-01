.class public Lcom/lzx/iteam/net/GetAttendanceMemberList;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetAttendanceMemberList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetAttendanceList"


# instance fields
.field private cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mContext:Landroid/content/Context;

.field managers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ScheduleManager;",
            ">;"
        }
    .end annotation
.end field

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
    iput-object p1, p0, Lcom/lzx/iteam/net/GetAttendanceMemberList;->mmCallback:Landroid/os/Message;

    .line 31
    iput-object p2, p0, Lcom/lzx/iteam/net/GetAttendanceMemberList;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v1, p0, Lcom/lzx/iteam/net/GetAttendanceMemberList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/GetAttendanceMemberList;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 33
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 67
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

    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 70
    const/4 v2, 0x0

    .line 72
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 80
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceMemberList;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 81
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceMemberList;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 82
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 83
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceMemberList;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 87
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceMemberList;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 90
    :cond_1
    return-void

    .line 74
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 76
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/GetAttendanceMemberList;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 74
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
    .line 37
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/lzx/iteam/net/GetAttendanceMemberList;->managers:Ljava/util/ArrayList;

    .line 39
    :try_start_0
    const-string v6, "data"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 40
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "members"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 41
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lt v1, v6, :cond_1

    .line 54
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    iget-object v6, p0, Lcom/lzx/iteam/net/GetAttendanceMemberList;->mmCallback:Landroid/os/Message;

    if-eqz v6, :cond_0

    .line 57
    iget-object v6, p0, Lcom/lzx/iteam/net/GetAttendanceMemberList;->mmCallback:Landroid/os/Message;

    iget-object v7, p0, Lcom/lzx/iteam/net/GetAttendanceMemberList;->managers:Ljava/util/ArrayList;

    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    iget-object v6, p0, Lcom/lzx/iteam/net/GetAttendanceMemberList;->mmCallback:Landroid/os/Message;

    const/4 v7, 0x0

    iput v7, v6, Landroid/os/Message;->arg1:I

    .line 59
    iget-object v6, p0, Lcom/lzx/iteam/net/GetAttendanceMemberList;->mmCallback:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 63
    :cond_0
    return-void

    .line 42
    .restart local v1    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    new-instance v5, Lcom/lzx/iteam/bean/ScheduleManager;

    invoke-direct {v5}, Lcom/lzx/iteam/bean/ScheduleManager;-><init>()V

    .line 43
    .local v5, "manager":Lcom/lzx/iteam/bean/ScheduleManager;
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 44
    .local v2, "item":Lorg/json/JSONObject;
    const-string v6, "user_id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/bean/ScheduleManager;->setUserId(Ljava/lang/String;)V

    .line 45
    const-string v6, "user_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/bean/ScheduleManager;->setUserName(Ljava/lang/String;)V

    .line 46
    const-string v6, "user_image"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/bean/ScheduleManager;->setAvatar(Ljava/lang/String;)V

    .line 47
    iget-object v6, p0, Lcom/lzx/iteam/net/GetAttendanceMemberList;->managers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v1    # "i":I
    .end local v2    # "item":Lorg/json/JSONObject;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "manager":Lcom/lzx/iteam/bean/ScheduleManager;
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
