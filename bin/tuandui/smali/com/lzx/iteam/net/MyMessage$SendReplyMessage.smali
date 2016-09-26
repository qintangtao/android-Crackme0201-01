.class public Lcom/lzx/iteam/net/MyMessage$SendReplyMessage;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "MyMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/net/MyMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendReplyMessage"
.end annotation


# instance fields
.field private mMsgDB:Lcom/lzx/iteam/provider/EventsMsgDB;

.field private mmCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/content/Context;)V
    .locals 1
    .param p1, "mmCallback"    # Landroid/os/Message;
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/lzx/iteam/net/MyMessage$SendReplyMessage;->mmCallback:Landroid/os/Message;

    .line 33
    new-instance v0, Lcom/lzx/iteam/provider/EventsMsgDB;

    invoke-direct {v0, p2}, Lcom/lzx/iteam/provider/EventsMsgDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/MyMessage$SendReplyMessage;->mMsgDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    .line 34
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 66
    const/4 v2, 0x0

    .line 68
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 76
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/MyMessage$SendReplyMessage;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 77
    iget-object v4, p0, Lcom/lzx/iteam/net/MyMessage$SendReplyMessage;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 78
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 79
    iget-object v4, p0, Lcom/lzx/iteam/net/MyMessage$SendReplyMessage;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/MyMessage$SendReplyMessage;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 85
    :cond_1
    return-void

    .line 70
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 72
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/MyMessage$SendReplyMessage;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 70
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
    .line 39
    new-instance v2, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;

    invoke-direct {v2}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;-><init>()V

    .line 41
    .local v2, "result":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    :try_start_0
    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 42
    .local v1, "object":Lorg/json/JSONObject;
    const-string v3, "event_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setEventId(Ljava/lang/String;)V

    .line 43
    const-string v3, "user_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setUserId(Ljava/lang/String;)V

    .line 44
    const-string v3, "user_name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setUserName(Ljava/lang/String;)V

    .line 45
    const-string v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setContent(Ljava/lang/String;)V

    .line 46
    const-string v3, "update_time"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setUpdateTime(Ljava/lang/String;)V

    .line 47
    const-string v3, "user_image"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setAvatar(Ljava/lang/String;)V

    .line 48
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setIsReaded(Z)V

    .line 49
    iget-object v3, p0, Lcom/lzx/iteam/net/MyMessage$SendReplyMessage;->mMsgDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    invoke-virtual {v3, v2}, Lcom/lzx/iteam/provider/EventsMsgDB;->insertEventReply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1    # "object":Lorg/json/JSONObject;
    :goto_0
    iget-object v3, p0, Lcom/lzx/iteam/net/MyMessage$SendReplyMessage;->mmCallback:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/lzx/iteam/net/MyMessage$SendReplyMessage;->mmCallback:Landroid/os/Message;

    const/4 v4, 0x0

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 57
    iget-object v3, p0, Lcom/lzx/iteam/net/MyMessage$SendReplyMessage;->mmCallback:Landroid/os/Message;

    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    iget-object v3, p0, Lcom/lzx/iteam/net/MyMessage$SendReplyMessage;->mmCallback:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 60
    :cond_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
