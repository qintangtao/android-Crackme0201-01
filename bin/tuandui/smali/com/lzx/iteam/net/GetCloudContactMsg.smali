.class public Lcom/lzx/iteam/net/GetCloudContactMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetCloudContactMsg.java"


# instance fields
.field private mPhoneNumberArea:Lcom/lzx/iteam/util/PhoneNumberArea;

.field private mmCallback:Landroid/os/Message;

.field private mmContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Message;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/lzx/iteam/net/GetCloudContactMsg;->mmContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/lzx/iteam/net/GetCloudContactMsg;->mmCallback:Landroid/os/Message;

    .line 27
    iget-object v0, p0, Lcom/lzx/iteam/net/GetCloudContactMsg;->mmContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberArea;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PhoneNumberArea;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/GetCloudContactMsg;->mPhoneNumberArea:Lcom/lzx/iteam/util/PhoneNumberArea;

    .line 28
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 108
    const/4 v2, 0x0

    .line 110
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 118
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/GetCloudContactMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 119
    iget-object v4, p0, Lcom/lzx/iteam/net/GetCloudContactMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 120
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 121
    iget-object v4, p0, Lcom/lzx/iteam/net/GetCloudContactMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 125
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetCloudContactMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 128
    :cond_1
    return-void

    .line 112
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 114
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 123
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/GetCloudContactMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 112
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
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 32
    new-instance v1, Lcom/lzx/iteam/bean/CloudContact;

    invoke-direct {v1}, Lcom/lzx/iteam/bean/CloudContact;-><init>()V

    .line 34
    .local v1, "contact":Lcom/lzx/iteam/bean/CloudContact;
    :try_start_0
    const-string v5, "data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 35
    .local v4, "jContact":Lorg/json/JSONObject;
    const-string v5, "group_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/lzx/iteam/bean/CloudContact;->groupId:Ljava/lang/String;

    .line 36
    const-string v5, "user_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    .line 37
    const-string v5, "user_type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/lzx/iteam/bean/CloudContact;->userType:Ljava/lang/String;

    .line 38
    const-string v5, "contact_name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/lzx/iteam/bean/CloudContact;->contactName:Ljava/lang/String;

    .line 39
    const-string v5, "contact_image"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/lzx/iteam/bean/CloudContact;->contact_image:Ljava/lang/String;

    .line 40
    const-string v5, "contact_namecard"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/lzx/iteam/bean/CloudContact;->contact_card:Ljava/lang/String;

    .line 41
    const-string v5, "contact_remarks"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/lzx/iteam/bean/CloudContact;->contactRemarks:Ljava/lang/String;

    .line 42
    const-string v5, "sex"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/lzx/iteam/bean/CloudContact;->contact_sex:I

    .line 43
    const-string v5, "phone_purview"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 44
    const-string v5, "phone_purview"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/lzx/iteam/bean/CloudContact;->phone_purview:Ljava/lang/String;

    .line 48
    :goto_0
    const-string v5, "calendar_purview"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 49
    const-string v5, "calendar_purview"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/lzx/iteam/bean/CloudContact;->calendar_purview:Ljava/lang/String;

    .line 54
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/lzx/iteam/bean/CloudContact;->contactPhoneNum:Ljava/util/ArrayList;

    .line 66
    const-string v5, "contact_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    .line 67
    const-string v5, "contact_phone"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/lzx/iteam/bean/CloudContact;->contact_phone:Ljava/lang/String;

    .line 70
    iget-object v5, v1, Lcom/lzx/iteam/bean/CloudContact;->contact_phone:Ljava/lang/String;

    invoke-static {v5}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 71
    new-instance v3, Lcom/lzx/iteam/bean/PhoneNumItem;

    invoke-direct {v3}, Lcom/lzx/iteam/bean/PhoneNumItem;-><init>()V

    .line 72
    .local v3, "item":Lcom/lzx/iteam/bean/PhoneNumItem;
    iget-object v5, v1, Lcom/lzx/iteam/bean/CloudContact;->contact_phone:Ljava/lang/String;

    iput-object v5, v3, Lcom/lzx/iteam/bean/PhoneNumItem;->phoneNum:Ljava/lang/String;

    .line 73
    iget-object v5, p0, Lcom/lzx/iteam/net/GetCloudContactMsg;->mPhoneNumberArea:Lcom/lzx/iteam/util/PhoneNumberArea;

    iget-object v6, v1, Lcom/lzx/iteam/bean/CloudContact;->contact_phone:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/lzx/iteam/util/PhoneNumberArea;->getArea(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "area":Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 75
    iput-object v0, v3, Lcom/lzx/iteam/bean/PhoneNumItem;->label:Ljava/lang/String;

    .line 79
    :goto_2
    iget-object v5, v1, Lcom/lzx/iteam/bean/CloudContact;->contactPhoneNum:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0    # "area":Ljava/lang/String;
    .end local v3    # "item":Lcom/lzx/iteam/bean/PhoneNumItem;
    .end local v4    # "jContact":Lorg/json/JSONObject;
    :cond_0
    :goto_3
    iget-object v5, p0, Lcom/lzx/iteam/net/GetCloudContactMsg;->mmCallback:Landroid/os/Message;

    if-eqz v5, :cond_1

    .line 98
    iget-object v5, p0, Lcom/lzx/iteam/net/GetCloudContactMsg;->mmCallback:Landroid/os/Message;

    const/4 v6, 0x0

    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 99
    iget-object v5, p0, Lcom/lzx/iteam/net/GetCloudContactMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    iget-object v5, p0, Lcom/lzx/iteam/net/GetCloudContactMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 102
    :cond_1
    return-void

    .line 46
    .restart local v4    # "jContact":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string v5, "1"

    iput-object v5, v1, Lcom/lzx/iteam/bean/CloudContact;->phone_purview:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 94
    .end local v4    # "jContact":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 51
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v4    # "jContact":Lorg/json/JSONObject;
    :cond_3
    :try_start_2
    const-string v5, "0"

    iput-object v5, v1, Lcom/lzx/iteam/bean/CloudContact;->calendar_purview:Ljava/lang/String;

    goto :goto_1

    .line 77
    .restart local v0    # "area":Ljava/lang/String;
    .restart local v3    # "item":Lcom/lzx/iteam/bean/PhoneNumItem;
    :cond_4
    const-string v5, "\u672a\u77e5"

    iput-object v5, v3, Lcom/lzx/iteam/bean/PhoneNumItem;->label:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method
