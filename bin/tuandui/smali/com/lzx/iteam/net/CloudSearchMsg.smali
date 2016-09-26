.class public Lcom/lzx/iteam/net/CloudSearchMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "CloudSearchMsg.java"


# instance fields
.field private mmCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Message;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lzx/iteam/net/CloudSearchMsg;->mmCallback:Landroid/os/Message;

    .line 25
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 92
    const/4 v2, 0x0

    .line 94
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 102
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/CloudSearchMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 103
    iget-object v4, p0, Lcom/lzx/iteam/net/CloudSearchMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 104
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 105
    iget-object v4, p0, Lcom/lzx/iteam/net/CloudSearchMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/CloudSearchMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 111
    :cond_1
    return-void

    .line 96
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 98
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/CloudSearchMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 96
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
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v1, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudContact;>;"
    const-string v7, "data"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 33
    .local v6, "jData":Lorg/json/JSONObject;
    const-string v7, "result"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 34
    .local v5, "jContactList":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v3, v7, :cond_1

    .line 67
    sget v7, Lcom/lzx/iteam/CloudDialerActivity;->sCloudSearch:I

    const/16 v8, 0x65

    if-ne v7, v8, :cond_3

    .line 86
    .end local v1    # "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudContact;>;"
    .end local v3    # "i":I
    .end local v5    # "jContactList":Lorg/json/JSONArray;
    .end local v6    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 35
    .restart local v1    # "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudContact;>;"
    .restart local v3    # "i":I
    .restart local v5    # "jContactList":Lorg/json/JSONArray;
    .restart local v6    # "jData":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 37
    .local v4, "jContact":Lorg/json/JSONObject;
    new-instance v0, Lcom/lzx/iteam/bean/CloudContact;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/CloudContact;-><init>()V

    .line 38
    .local v0, "contact":Lcom/lzx/iteam/bean/CloudContact;
    const-string v7, "group_id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 39
    const-string v7, "group_id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/lzx/iteam/bean/CloudContact;->groupId:Ljava/lang/String;

    .line 42
    :cond_2
    const-string v7, "key_startLocation"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 41
    iput v7, v0, Lcom/lzx/iteam/bean/CloudContact;->keyStartLocation:I

    .line 43
    const-string v7, "key_count"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/lzx/iteam/bean/CloudContact;->keyCount:I

    .line 44
    const-string v7, "key_type"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/lzx/iteam/bean/CloudContact;->keyType:I

    .line 45
    const-string v7, "user_id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    .line 46
    const-string v7, "contact_name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/lzx/iteam/bean/CloudContact;->contactName:Ljava/lang/String;

    .line 49
    const-string v7, "contact_id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    .line 51
    const-string v7, "contact_image"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/lzx/iteam/bean/CloudContact;->contact_image:Ljava/lang/String;

    .line 64
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "contact":Lcom/lzx/iteam/bean/CloudContact;
    .end local v4    # "jContact":Lorg/json/JSONObject;
    :cond_3
    const/16 v7, 0x64

    sput v7, Lcom/lzx/iteam/CloudDialerActivity;->sCloudSearch:I

    .line 73
    iget-object v7, p0, Lcom/lzx/iteam/net/CloudSearchMsg;->mmCallback:Landroid/os/Message;

    if-eqz v7, :cond_4

    .line 74
    iget-object v7, p0, Lcom/lzx/iteam/net/CloudSearchMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    iget-object v7, p0, Lcom/lzx/iteam/net/CloudSearchMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 78
    .end local v1    # "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudContact;>;"
    .end local v3    # "i":I
    .end local v5    # "jContactList":Lorg/json/JSONArray;
    .end local v6    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 82
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_4
    iget-object v7, p0, Lcom/lzx/iteam/net/CloudSearchMsg;->mmCallback:Landroid/os/Message;

    if-eqz v7, :cond_0

    .line 83
    iget-object v7, p0, Lcom/lzx/iteam/net/CloudSearchMsg;->mmCallback:Landroid/os/Message;

    const/4 v8, -0x1

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 84
    iget-object v7, p0, Lcom/lzx/iteam/net/CloudSearchMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method
