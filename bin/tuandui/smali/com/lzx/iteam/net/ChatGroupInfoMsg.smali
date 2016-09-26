.class public Lcom/lzx/iteam/net/ChatGroupInfoMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "ChatGroupInfoMsg.java"


# instance fields
.field private cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mmCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/content/Context;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;->mmCallback:Landroid/os/Message;

    .line 26
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p2}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 28
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
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

    .line 85
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 86
    iget-object v4, p0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 87
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 88
    iget-object v4, p0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 92
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 94
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

    .line 90
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;->mmCallback:Landroid/os/Message;

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
    .locals 9
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 32
    new-instance v2, Lcom/lzx/iteam/bean/ChatGroup;

    invoke-direct {v2}, Lcom/lzx/iteam/bean/ChatGroup;-><init>()V

    .line 34
    .local v2, "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    :try_start_0
    const-string v7, "data"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 35
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string v7, "name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/lzx/iteam/bean/ChatGroup;->name:Ljava/lang/String;

    .line 36
    const-string v7, "user_type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/lzx/iteam/bean/ChatGroup;->userType:Ljava/lang/String;

    .line 37
    const-string v7, "is_note"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/lzx/iteam/bean/ChatGroup;->isNote:Ljava/lang/String;

    .line 38
    const-string v7, "image"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/lzx/iteam/bean/ChatGroup;->img:Ljava/lang/String;

    .line 39
    const-string v7, "type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/lzx/iteam/bean/ChatGroup;->type:Ljava/lang/String;

    .line 40
    const-string v7, "members"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    iput-object v7, v2, Lcom/lzx/iteam/bean/ChatGroup;->members:Lorg/json/JSONArray;

    .line 41
    iget-object v7, v2, Lcom/lzx/iteam/bean/ChatGroup;->members:Lorg/json/JSONArray;

    if-eqz v7, :cond_0

    iget-object v7, v2, Lcom/lzx/iteam/bean/ChatGroup;->members:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 42
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v7, v2, Lcom/lzx/iteam/bean/ChatGroup;->members:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-lt v4, v7, :cond_2

    .line 63
    .end local v4    # "i":I
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;->mmCallback:Landroid/os/Message;

    if-eqz v7, :cond_1

    .line 64
    iget-object v7, p0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;->mmCallback:Landroid/os/Message;

    iput-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    iget-object v7, p0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;->mmCallback:Landroid/os/Message;

    const/4 v8, 0x0

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 66
    iget-object v7, p0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 70
    :cond_1
    return-void

    .line 43
    .restart local v4    # "i":I
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    iget-object v7, v2, Lcom/lzx/iteam/bean/ChatGroup;->members:Lorg/json/JSONArray;

    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 44
    .local v5, "info":Lorg/json/JSONObject;
    new-instance v0, Lcom/lzx/iteam/bean/ChatContact;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/ChatContact;-><init>()V

    .line 45
    .local v0, "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    const-string v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/lzx/iteam/bean/ChatContact;->userName:Ljava/lang/String;

    .line 46
    const-string v7, "image"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/lzx/iteam/bean/ChatContact;->userImg:Ljava/lang/String;

    .line 47
    const-string v7, "uid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/lzx/iteam/bean/ChatContact;->userId:Ljava/lang/String;

    .line 48
    iget-object v7, p0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v8, v0, Lcom/lzx/iteam/bean/ChatContact;->userId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/provider/CloudDBOperation;->findUserMsgById(Ljava/lang/String;)Lcom/lzx/iteam/bean/ChatContact;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/bean/ChatContact;->userId:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 49
    iget-object v7, p0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-virtual {v7, v0}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertUserMsg(Lcom/lzx/iteam/bean/ChatContact;)J

    .line 42
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51
    :cond_4
    iget-object v7, p0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v8, v0, Lcom/lzx/iteam/bean/ChatContact;->userId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/provider/CloudDBOperation;->findUserMsgById(Ljava/lang/String;)Lcom/lzx/iteam/bean/ChatContact;

    move-result-object v1

    .line 52
    .local v1, "chatContact1":Lcom/lzx/iteam/bean/ChatContact;
    iget-object v7, v1, Lcom/lzx/iteam/bean/ChatContact;->userImg:Ljava/lang/String;

    iget-object v8, v0, Lcom/lzx/iteam/bean/ChatContact;->userImg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v1, Lcom/lzx/iteam/bean/ChatContact;->userName:Ljava/lang/String;

    iget-object v8, v0, Lcom/lzx/iteam/bean/ChatContact;->userName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 53
    :cond_5
    iget-object v7, p0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v8, v0, Lcom/lzx/iteam/bean/ChatContact;->userId:Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->updataUserMsg(Ljava/lang/String;Lcom/lzx/iteam/bean/ChatContact;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 59
    .end local v0    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    .end local v1    # "chatContact1":Lcom/lzx/iteam/bean/ChatContact;
    .end local v4    # "i":I
    .end local v5    # "info":Lorg/json/JSONObject;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 60
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
