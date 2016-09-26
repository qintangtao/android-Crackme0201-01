.class public Lcom/lzx/iteam/net/GetContactNameCardMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetContactNameCardMsg.java"


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
    .line 27
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/lzx/iteam/net/GetContactNameCardMsg;->mmContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/lzx/iteam/net/GetContactNameCardMsg;->mmCallback:Landroid/os/Message;

    .line 30
    iget-object v0, p0, Lcom/lzx/iteam/net/GetContactNameCardMsg;->mmContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lzx/iteam/util/PhoneNumberArea;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PhoneNumberArea;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/GetContactNameCardMsg;->mPhoneNumberArea:Lcom/lzx/iteam/util/PhoneNumberArea;

    .line 32
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 117
    const/4 v2, 0x0

    .line 119
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 127
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/GetContactNameCardMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 128
    iget-object v4, p0, Lcom/lzx/iteam/net/GetContactNameCardMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 129
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 130
    iget-object v4, p0, Lcom/lzx/iteam/net/GetContactNameCardMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 134
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetContactNameCardMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 137
    :cond_1
    return-void

    .line 121
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 123
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/GetContactNameCardMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 121
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 13
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 36
    new-instance v2, Lcom/lzx/iteam/bean/ContactNameCard;

    invoke-direct {v2}, Lcom/lzx/iteam/bean/ContactNameCard;-><init>()V

    .line 38
    .local v2, "contactNameCard":Lcom/lzx/iteam/bean/ContactNameCard;
    :try_start_0
    const-string v10, "data"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 39
    .local v8, "jsonObject1":Lorg/json/JSONObject;
    const-string v10, "user_info"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 40
    .local v9, "userInfo":Lorg/json/JSONObject;
    const-string v10, "user_name"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/lzx/iteam/bean/ContactNameCard;->userName:Ljava/lang/String;

    .line 41
    const-string v10, "avatar"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/lzx/iteam/bean/ContactNameCard;->avatar:Ljava/lang/String;

    .line 42
    const-string v10, "sex"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v2, Lcom/lzx/iteam/bean/ContactNameCard;->sex:I

    .line 43
    const-string v10, "groups"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 44
    .local v7, "jsonArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-lt v4, v10, :cond_1

    .line 106
    .end local v4    # "i":I
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "jsonObject1":Lorg/json/JSONObject;
    .end local v9    # "userInfo":Lorg/json/JSONObject;
    :goto_1
    iget-object v10, p0, Lcom/lzx/iteam/net/GetContactNameCardMsg;->mmCallback:Landroid/os/Message;

    if-eqz v10, :cond_0

    .line 107
    iget-object v10, p0, Lcom/lzx/iteam/net/GetContactNameCardMsg;->mmCallback:Landroid/os/Message;

    const/4 v11, 0x0

    iput v11, v10, Landroid/os/Message;->arg1:I

    .line 108
    iget-object v10, p0, Lcom/lzx/iteam/net/GetContactNameCardMsg;->mmCallback:Landroid/os/Message;

    iput-object v2, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    iget-object v10, p0, Lcom/lzx/iteam/net/GetContactNameCardMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 111
    :cond_0
    return-void

    .line 45
    .restart local v4    # "i":I
    .restart local v7    # "jsonArray":Lorg/json/JSONArray;
    .restart local v8    # "jsonObject1":Lorg/json/JSONObject;
    .restart local v9    # "userInfo":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/lzx/iteam/bean/CloudContact;

    invoke-direct {v1}, Lcom/lzx/iteam/bean/CloudContact;-><init>()V

    .line 46
    .local v1, "contact":Lcom/lzx/iteam/bean/CloudContact;
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 47
    .local v6, "jContact":Lorg/json/JSONObject;
    const-string v10, "contact_id"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    .line 48
    const-string v10, "group_id"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/lzx/iteam/bean/CloudContact;->groupId:Ljava/lang/String;

    .line 49
    const-string v10, "group_name"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/lzx/iteam/bean/CloudContact;->groupName:Ljava/lang/String;

    .line 50
    const-string v10, "contact_name"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/lzx/iteam/bean/CloudContact;->contactName:Ljava/lang/String;

    .line 51
    const-string v10, "contact_phone"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 52
    const-string v10, "contact_phone"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/lzx/iteam/util/PhoneNumberUtils;->cutPlus86Formatter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/lzx/iteam/bean/CloudContact;->contact_phone:Ljava/lang/String;

    .line 53
    :cond_2
    const-string v10, "contact_namecard"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/lzx/iteam/bean/CloudContact;->contact_card:Ljava/lang/String;

    .line 59
    const-string v10, "phone_purview"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 60
    const-string v10, "phone_purview"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/lzx/iteam/bean/CloudContact;->phone_purview:Ljava/lang/String;

    .line 64
    :goto_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v1, Lcom/lzx/iteam/bean/CloudContact;->contactPhoneNum:Ljava/util/ArrayList;

    .line 78
    iget-object v10, v1, Lcom/lzx/iteam/bean/CloudContact;->contact_phone:Ljava/lang/String;

    invoke-static {v10}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 79
    new-instance v5, Lcom/lzx/iteam/bean/PhoneNumItem;

    invoke-direct {v5}, Lcom/lzx/iteam/bean/PhoneNumItem;-><init>()V

    .line 80
    .local v5, "item":Lcom/lzx/iteam/bean/PhoneNumItem;
    iget-object v10, v1, Lcom/lzx/iteam/bean/CloudContact;->contact_phone:Ljava/lang/String;

    iput-object v10, v5, Lcom/lzx/iteam/bean/PhoneNumItem;->phoneNum:Ljava/lang/String;

    .line 81
    iget-object v10, p0, Lcom/lzx/iteam/net/GetContactNameCardMsg;->mPhoneNumberArea:Lcom/lzx/iteam/util/PhoneNumberArea;

    iget-object v11, v1, Lcom/lzx/iteam/bean/CloudContact;->contact_phone:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/lzx/iteam/util/PhoneNumberArea;->getArea(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "area":Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 83
    iput-object v0, v5, Lcom/lzx/iteam/bean/PhoneNumItem;->label:Ljava/lang/String;

    .line 87
    :goto_3
    iget-object v10, v1, Lcom/lzx/iteam/bean/CloudContact;->contactPhoneNum:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v0    # "area":Ljava/lang/String;
    .end local v5    # "item":Lcom/lzx/iteam/bean/PhoneNumItem;
    :cond_3
    iget-object v10, v2, Lcom/lzx/iteam/bean/ContactNameCard;->groups:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 62
    :cond_4
    const-string v10, "1"

    iput-object v10, v1, Lcom/lzx/iteam/bean/CloudContact;->phone_purview:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 103
    .end local v1    # "contact":Lcom/lzx/iteam/bean/CloudContact;
    .end local v4    # "i":I
    .end local v6    # "jContact":Lorg/json/JSONObject;
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "jsonObject1":Lorg/json/JSONObject;
    .end local v9    # "userInfo":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 104
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 85
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v0    # "area":Ljava/lang/String;
    .restart local v1    # "contact":Lcom/lzx/iteam/bean/CloudContact;
    .restart local v4    # "i":I
    .restart local v5    # "item":Lcom/lzx/iteam/bean/PhoneNumItem;
    .restart local v6    # "jContact":Lorg/json/JSONObject;
    .restart local v7    # "jsonArray":Lorg/json/JSONArray;
    .restart local v8    # "jsonObject1":Lorg/json/JSONObject;
    .restart local v9    # "userInfo":Lorg/json/JSONObject;
    :cond_5
    :try_start_2
    const-string v10, "\u672a\u77e5"

    iput-object v10, v5, Lcom/lzx/iteam/bean/PhoneNumItem;->label:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method
