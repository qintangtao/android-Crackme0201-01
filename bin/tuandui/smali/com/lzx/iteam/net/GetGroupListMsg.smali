.class public Lcom/lzx/iteam/net/GetGroupListMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetGroupListMsg.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private localIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mUid:Ljava/lang/String;

.field private mmCallback:Landroid/os/Message;

.field private newIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 26
    const-string v0, "GetGroupListMsg"

    iput-object v0, p0, Lcom/lzx/iteam/net/GetGroupListMsg;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p1}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/GetGroupListMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 43
    invoke-static {p1}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/GetGroupListMsg;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/net/GetGroupListMsg;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "useid"

    const-string v2, "\uff0d1"

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/GetGroupListMsg;->mUid:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Message;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/os/Message;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 26
    const-string v0, "GetGroupListMsg"

    iput-object v0, p0, Lcom/lzx/iteam/net/GetGroupListMsg;->TAG:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/lzx/iteam/net/GetGroupListMsg;->mmCallback:Landroid/os/Message;

    .line 36
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p1}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/GetGroupListMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 37
    invoke-static {p1}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/GetGroupListMsg;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 39
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 154
    iget-object v4, p0, Lcom/lzx/iteam/net/GetGroupListMsg;->TAG:Ljava/lang/String;

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

    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 157
    const/4 v2, 0x0

    .line 159
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 167
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/GetGroupListMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 168
    iget-object v4, p0, Lcom/lzx/iteam/net/GetGroupListMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 169
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 170
    iget-object v4, p0, Lcom/lzx/iteam/net/GetGroupListMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetGroupListMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 176
    :cond_1
    return-void

    .line 161
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 163
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 172
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/GetGroupListMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 161
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 24
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 52
    .local v18, "start":J
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v7, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudGroup;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/net/GetGroupListMsg;->newIdList:Ljava/util/ArrayList;

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    move-object/from16 v20, v0

    const-string v21, "local_group_id"

    invoke-virtual/range {v20 .. v21}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/net/GetGroupListMsg;->localIdList:Ljava/util/ArrayList;

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->localIdList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 57
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/net/GetGroupListMsg;->localIdList:Ljava/util/ArrayList;

    .line 59
    :cond_0
    const-string v20, "GetGroupListMsg"

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->localIdList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1
    const-string v20, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 62
    .local v5, "groupData":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteAllGroup()Z

    .line 63
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-lt v9, v0, :cond_3

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    move-object/from16 v20, v0

    const-string v21, "local_group_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->newIdList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/lzx/iteam/util/PreferenceUtil;->saveCloudContact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 127
    .local v16, "over":J
    const-string v20, "GetGroupListMsg"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, " \u8017\u65f6\uff1a "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v22, v16, v18

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v5    # "groupData":Lorg/json/JSONArray;
    .end local v7    # "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudGroup;>;"
    .end local v9    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 64
    .end local v16    # "over":J
    .restart local v5    # "groupData":Lorg/json/JSONArray;
    .restart local v7    # "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudGroup;>;"
    .restart local v9    # "i":I
    :cond_3
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 65
    .local v11, "item":Lorg/json/JSONObject;
    new-instance v8, Lcom/lzx/iteam/bean/CloudGroup;

    invoke-direct {v8}, Lcom/lzx/iteam/bean/CloudGroup;-><init>()V

    .line 66
    .local v8, "groupitem":Lcom/lzx/iteam/bean/CloudGroup;
    const-string v20, "group_id"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v8, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    .line 67
    const-string v20, "group_name"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v8, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    .line 68
    const-string v20, "contact_id"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v8, Lcom/lzx/iteam/bean/CloudGroup;->contactId:Ljava/lang/String;

    .line 69
    const-string v20, "group_type"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    iput v0, v8, Lcom/lzx/iteam/bean/CloudGroup;->groupType:I

    .line 70
    const-string v20, "user_type"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v8, Lcom/lzx/iteam/bean/CloudGroup;->userType:Ljava/lang/String;

    .line 71
    const-string v20, "contact_count"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    iput v0, v8, Lcom/lzx/iteam/bean/CloudGroup;->contactCount:I

    .line 72
    const-string v20, "member_count"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    iput v0, v8, Lcom/lzx/iteam/bean/CloudGroup;->memberCount:I

    .line 73
    const-string v20, "update_time"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/DateUtil;->jsonTime2Mills(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v8, Lcom/lzx/iteam/bean/CloudGroup;->updateTime:J

    .line 74
    const-string v20, "group_img"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v8, Lcom/lzx/iteam/bean/CloudGroup;->groupImg:Ljava/lang/String;

    .line 75
    const-string v20, "is_new"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v8, Lcom/lzx/iteam/bean/CloudGroup;->isNew:Ljava/lang/String;

    .line 76
    const-string v20, "has_tags"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v8, Lcom/lzx/iteam/bean/CloudGroup;->hasTags:Ljava/lang/String;

    .line 77
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertCloudGroup(Lcom/lzx/iteam/bean/CloudGroup;)J

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->newIdList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    iget-wide v0, v8, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->localIdList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_7

    .line 89
    :cond_5
    :goto_2
    iget-object v0, v8, Lcom/lzx/iteam/bean/CloudGroup;->hasTags:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "1"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 91
    const-string v20, "tags"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 93
    .local v12, "jsonArray":Lorg/json/JSONArray;
    if-eqz v12, :cond_6

    .line 96
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 97
    .local v14, "object":Lorg/json/JSONObject;
    const-string v20, "type"

    iget-object v0, v8, Lcom/lzx/iteam/bean/CloudGroup;->userType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v20, "tags"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 102
    .local v13, "jsonObject":Lorg/json/JSONObject;
    const-string v20, "data"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v14}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    sget-object v20, Lcom/lzx/iteam/DialerApp;->mContext:Landroid/content/Context;

    const-string v21, "structure"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 106
    .local v15, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 107
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v20, Ljava/lang/StringBuilder;

    iget-wide v0, v8, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    new-instance v20, Ljava/lang/StringBuilder;

    iget-wide v0, v8, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "tag"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "jsonArray":Lorg/json/JSONArray;
    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "object":Lorg/json/JSONObject;
    .end local v15    # "sp":Landroid/content/SharedPreferences;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 82
    :cond_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 83
    .local v6, "groupId":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    iget-wide v0, v8, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->localIdList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 139
    .end local v5    # "groupData":Lorg/json/JSONArray;
    .end local v6    # "groupId":Ljava/lang/String;
    .end local v7    # "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudGroup;>;"
    .end local v8    # "groupitem":Lcom/lzx/iteam/bean/CloudGroup;
    .end local v9    # "i":I
    .end local v11    # "item":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 143
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_8
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 144
    .restart local v16    # "over":J
    const-string v20, "GetGroupListMsg"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, " \u8017\u65f6\uff1anull  "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v22, v16, v18

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 131
    .end local v16    # "over":J
    .restart local v5    # "groupData":Lorg/json/JSONArray;
    .restart local v7    # "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudGroup;>;"
    .restart local v9    # "i":I
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->localIdList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mUid:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "-1"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->localIdList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_a

    .line 136
    const-string v20, "GetGroupListMsg"

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->newIdList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 132
    :cond_a
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 133
    .local v10, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mUid:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteContactByGroupId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 134
    .local v4, "flag":Z
    const-string v21, "GetGroupListMsg"

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mUid:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method
