.class public Lcom/lzx/iteam/net/GetContactListMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetContactListMsg.java"


# instance fields
.field private mmCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Message;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/lzx/iteam/net/GetContactListMsg;->mmCallback:Landroid/os/Message;

    .line 30
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 118
    const/4 v2, 0x0

    .line 120
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 128
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/GetContactListMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 129
    iget-object v4, p0, Lcom/lzx/iteam/net/GetContactListMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 130
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 131
    iget-object v4, p0, Lcom/lzx/iteam/net/GetContactListMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetContactListMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 138
    :cond_1
    return-void

    .line 122
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 124
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/GetContactListMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 122
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 17
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v2, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudContact;>;"
    :try_start_0
    const-string v5, ""

    .line 37
    .local v5, "groupid":Ljava/lang/String;
    const-string v13, ""

    .line 39
    .local v13, "tagid":Ljava/lang/String;
    const-string v14, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 40
    .local v8, "jContactList":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v6, v14, :cond_2

    .line 79
    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 80
    sget-object v14, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    iput-object v2, v14, Lcom/lzx/iteam/CloudDialerActivity;->rootcontactList:Ljava/util/ArrayList;

    .line 86
    :cond_0
    :goto_1
    sget-object v14, Lcom/lzx/iteam/DialerApp;->mContext:Landroid/content/Context;

    const-string v15, "structure"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 87
    .local v12, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 88
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "groupid"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "tagid"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "groupid"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "tagid"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "tag"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v4, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/net/GetContactListMsg;->mmCallback:Landroid/os/Message;

    if-eqz v14, :cond_1

    .line 98
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/net/GetContactListMsg;->mmCallback:Landroid/os/Message;

    const/4 v15, 0x1

    iput v15, v14, Landroid/os/Message;->arg1:I

    .line 99
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/net/GetContactListMsg;->mmCallback:Landroid/os/Message;

    iput-object v2, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/net/GetContactListMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .line 112
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "groupid":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v8    # "jContactList":Lorg/json/JSONArray;
    .end local v12    # "sp":Landroid/content/SharedPreferences;
    .end local v13    # "tagid":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 41
    .restart local v5    # "groupid":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v8    # "jContactList":Lorg/json/JSONArray;
    .restart local v13    # "tagid":Ljava/lang/String;
    :cond_2
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 42
    .local v7, "jContact":Lorg/json/JSONObject;
    new-instance v1, Lcom/lzx/iteam/bean/CloudContact;

    invoke-direct {v1}, Lcom/lzx/iteam/bean/CloudContact;-><init>()V

    .line 43
    .local v1, "contact":Lcom/lzx/iteam/bean/CloudContact;
    const-string v14, "group_id"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lcom/lzx/iteam/bean/CloudContact;->groupId:Ljava/lang/String;

    .line 44
    const-string v14, "user_id"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    .line 45
    const-string v14, "contact_name"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lcom/lzx/iteam/bean/CloudContact;->contactName:Ljava/lang/String;

    .line 46
    const-string v14, ""

    iput-object v14, v1, Lcom/lzx/iteam/bean/CloudContact;->contactWork:Ljava/lang/String;

    .line 47
    const-string v14, "jobtitle"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 48
    const-string v14, "jobtitle"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lcom/lzx/iteam/bean/CloudContact;->contactWork:Ljava/lang/String;

    .line 51
    :cond_3
    const-string v14, "contact_image"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lcom/lzx/iteam/bean/CloudContact;->contact_image:Ljava/lang/String;

    .line 54
    const-string v14, "contact_phoneNumber"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 55
    .local v10, "jNumListStr":Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcom/lzx/iteam/bean/CloudContact;->contactPhoneNum:Ljava/util/ArrayList;

    .line 56
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "contact_phoneNumber"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 57
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 64
    .local v9, "jNumListArr":Lorg/json/JSONArray;
    new-instance v11, Lcom/lzx/iteam/bean/PhoneNumItem;

    invoke-direct {v11}, Lcom/lzx/iteam/bean/PhoneNumItem;-><init>()V

    .line 65
    .local v11, "phoneItem":Lcom/lzx/iteam/bean/PhoneNumItem;
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/lzx/iteam/bean/PhoneNumItem;->label:Ljava/lang/String;

    .line 66
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/lzx/iteam/util/PhoneNumberUtils;->cutPlus86Formatter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/lzx/iteam/bean/PhoneNumItem;->phoneNum:Ljava/lang/String;

    .line 67
    iget-object v14, v1, Lcom/lzx/iteam/bean/CloudContact;->contactPhoneNum:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v9    # "jNumListArr":Lorg/json/JSONArray;
    .end local v11    # "phoneItem":Lcom/lzx/iteam/bean/PhoneNumItem;
    :cond_4
    const-string v14, "contact_id"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    .line 72
    const-string v14, "user_type"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lcom/lzx/iteam/bean/CloudContact;->userType:Ljava/lang/String;

    .line 73
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v5, v1, Lcom/lzx/iteam/bean/CloudContact;->groupId:Ljava/lang/String;

    .line 76
    const-string v14, "tag_id"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 40
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 81
    .end local v1    # "contact":Lcom/lzx/iteam/bean/CloudContact;
    .end local v7    # "jContact":Lorg/json/JSONObject;
    .end local v10    # "jNumListStr":Ljava/lang/String;
    :cond_5
    sget-object v14, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v14, v14, Lcom/lzx/iteam/CloudDialerActivity;->chooseelement:Lcom/lzx/iteam/treeview/Element;

    if-eqz v14, :cond_0

    .line 82
    sget-object v14, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v14, v14, Lcom/lzx/iteam/CloudDialerActivity;->chooseelement:Lcom/lzx/iteam/treeview/Element;

    iput-object v2, v14, Lcom/lzx/iteam/treeview/Element;->contactList:Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 103
    .end local v5    # "groupid":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v8    # "jContactList":Lorg/json/JSONArray;
    .end local v13    # "tagid":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 104
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2
.end method
