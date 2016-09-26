.class public Lcom/lzx/iteam/net/GetChatGroupMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetChatGroupMsg.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetChatGroupMsg"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mmCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/content/Context;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/lzx/iteam/net/GetChatGroupMsg;->mmCallback:Landroid/os/Message;

    .line 28
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 73
    const-string v4, "GetChatGroupMsg"

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

    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 76
    const/4 v2, 0x0

    .line 78
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 86
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/GetChatGroupMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 87
    iget-object v4, p0, Lcom/lzx/iteam/net/GetChatGroupMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 88
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 89
    iget-object v4, p0, Lcom/lzx/iteam/net/GetChatGroupMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 93
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetChatGroupMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 96
    :cond_1
    return-void

    .line 80
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 82
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/GetChatGroupMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 80
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 33
    :try_start_0
    const-string v4, "data"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 34
    .local v2, "jsonObject":Lorg/json/JSONObject;
    new-instance v0, Lcom/lzx/iteam/bean/ChatGroup;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/ChatGroup;-><init>()V

    .line 35
    .local v0, "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    const-string v4, "chat_group_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    const-string v4, "chat_group_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/lzx/iteam/bean/ChatGroup;->id:Ljava/lang/String;

    .line 38
    :cond_0
    const-string v4, "chat_group_img"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 39
    const-string v4, "chat_group_img"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/lzx/iteam/bean/ChatGroup;->img:Ljava/lang/String;

    .line 41
    :cond_1
    const-string v4, "chat_group_name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 42
    const-string v4, "chat_group_name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/lzx/iteam/bean/ChatGroup;->name:Ljava/lang/String;

    .line 44
    :cond_2
    const-string v4, "ctime"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 45
    const-string v4, "ctime"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/lzx/iteam/bean/ChatGroup;->lastUpdateTime:Ljava/lang/String;

    .line 47
    :cond_3
    const-string v4, "count"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 48
    const-string v4, "count"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/lzx/iteam/bean/ChatGroup;->memberCount:Ljava/lang/String;

    .line 50
    :cond_4
    iget-object v4, p0, Lcom/lzx/iteam/net/GetChatGroupMsg;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v4

    const-string v5, "contact_name_card"

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 51
    .local v3, "nameCard":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/lzx/iteam/bean/ChatGroup;->lastMsgName:Ljava/lang/String;

    .line 52
    const-string v4, "\u53d1\u8d77\u4e86\u804a\u5929"

    iput-object v4, v0, Lcom/lzx/iteam/bean/ChatGroup;->lastMsgContent:Ljava/lang/String;

    .line 53
    const-string v4, "2"

    iput-object v4, v0, Lcom/lzx/iteam/bean/ChatGroup;->userType:Ljava/lang/String;

    .line 55
    iget-object v4, p0, Lcom/lzx/iteam/net/GetChatGroupMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_6

    .line 56
    const-string v4, ""

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    .line 57
    :cond_5
    iget-object v4, p0, Lcom/lzx/iteam/net/GetChatGroupMsg;->mmCallback:Landroid/os/Message;

    const/4 v5, 0x1

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 62
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/GetChatGroupMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 69
    .end local v0    # "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "nameCard":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :goto_1
    return-void

    .line 59
    .restart local v0    # "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "nameCard":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    iget-object v4, p0, Lcom/lzx/iteam/net/GetChatGroupMsg;->mmCallback:Landroid/os/Message;

    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 60
    iget-object v4, p0, Lcom/lzx/iteam/net/GetChatGroupMsg;->mmCallback:Landroid/os/Message;

    const/4 v5, 0x0

    iput v5, v4, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    .end local v0    # "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "nameCard":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
