.class public Lcom/lzx/iteam/net/GetGroupInfoMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetGroupInfoMsg.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mCallBack:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "GetGroupInfoMsg"

    sput-object v0, Lcom/lzx/iteam/net/GetGroupInfoMsg;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Message;)V
    .locals 0
    .param p1, "callBack"    # Landroid/os/Message;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/lzx/iteam/net/GetGroupInfoMsg;->mCallBack:Landroid/os/Message;

    .line 22
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 54
    sget-object v4, Lcom/lzx/iteam/net/GetGroupInfoMsg;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OnErrorCode ---> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 57
    const/4 v2, 0x0

    .line 59
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 66
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/GetGroupInfoMsg;->mCallBack:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 67
    iget-object v4, p0, Lcom/lzx/iteam/net/GetGroupInfoMsg;->mCallBack:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 68
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 69
    iget-object v4, p0, Lcom/lzx/iteam/net/GetGroupInfoMsg;->mCallBack:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetGroupInfoMsg;->mCallBack:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 75
    :cond_1
    return-void

    .line 61
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 63
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/GetGroupInfoMsg;->mCallBack:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 61
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
    .line 26
    sget-object v6, Lcom/lzx/iteam/net/GetGroupInfoMsg;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "OnRecive --->"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v6, p0, Lcom/lzx/iteam/net/GetGroupInfoMsg;->mCallBack:Landroid/os/Message;

    if-eqz v6, :cond_0

    .line 28
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/GroupManageCreate;>;"
    :try_start_0
    const-string v6, "data"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 31
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "members"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 32
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lt v3, v6, :cond_1

    .line 47
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    iget-object v6, p0, Lcom/lzx/iteam/net/GetGroupInfoMsg;->mCallBack:Landroid/os/Message;

    iput-object v5, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    iget-object v6, p0, Lcom/lzx/iteam/net/GetGroupInfoMsg;->mCallBack:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 50
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/GroupManageCreate;>;"
    :cond_0
    return-void

    .line 33
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v3    # "i":I
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/GroupManageCreate;>;"
    :cond_1
    :try_start_1
    new-instance v1, Lcom/lzx/iteam/bean/GroupManageCreate;

    invoke-direct {v1}, Lcom/lzx/iteam/bean/GroupManageCreate;-><init>()V

    .line 34
    .local v1, "bean":Lcom/lzx/iteam/bean/GroupManageCreate;
    const-string v6, "group_img"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lzx/iteam/bean/GroupManageCreate;->setGroupImg(Ljava/lang/String;)V

    .line 35
    const-string v6, "group_type"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lzx/iteam/bean/GroupManageCreate;->setGroupType(Ljava/lang/String;)V

    .line 36
    const-string v6, "group_name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lzx/iteam/bean/GroupManageCreate;->setGroupName(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "contact_name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lzx/iteam/bean/GroupManageCreate;->setContactName(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "contact_id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lzx/iteam/bean/GroupManageCreate;->setContactId(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "contact_image"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lzx/iteam/bean/GroupManageCreate;->setContactImage(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "user_id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lzx/iteam/bean/GroupManageCreate;->setUserId(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "user_type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/lzx/iteam/bean/GroupManageCreate;->setUserType(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "bean":Lcom/lzx/iteam/bean/GroupManageCreate;
    .end local v3    # "i":I
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
