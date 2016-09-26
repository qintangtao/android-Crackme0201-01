.class public Lcom/lzx/iteam/net/ChatGroupListMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "ChatGroupListMsg.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChatGroupListMsg"


# instance fields
.field private cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mContext:Landroid/content/Context;

.field private mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

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
    iput-object p1, p0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mmCallback:Landroid/os/Message;

    .line 31
    iput-object p2, p0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v1, p0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/ChatGroupListMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 33
    new-instance v0, Lcom/lzx/iteam/provider/MessageDB;

    iget-object v1, p0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/provider/MessageDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    .line 34
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 99
    const-string v4, "ChatGroupListMsg"

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

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 102
    const/4 v2, 0x0

    .line 104
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 112
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 113
    iget-object v4, p0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 114
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 115
    iget-object v4, p0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 122
    :cond_1
    return-void

    .line 106
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 108
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 117
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 106
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 18
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 38
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v5, "chatGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatGroup;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lzx/iteam/net/ChatGroupListMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-virtual {v11}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteAllChatGroup()Z

    .line 41
    const-string v11, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 52
    .local v10, "jsonArray":Lorg/json/JSONArray;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 53
    .local v2, "begin":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 54
    .local v12, "over":J
    const-string v11, "delete_time"

    new-instance v14, Ljava/lang/StringBuilder;

    sub-long v16, v12, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-lt v8, v11, :cond_1

    .line 86
    .end local v2    # "begin":J
    .end local v8    # "i":I
    .end local v10    # "jsonArray":Lorg/json/JSONArray;
    .end local v12    # "over":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mmCallback:Landroid/os/Message;

    if-eqz v11, :cond_0

    .line 89
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mmCallback:Landroid/os/Message;

    iput-object v5, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mmCallback:Landroid/os/Message;

    const/4 v14, 0x0

    iput v14, v11, Landroid/os/Message;->arg1:I

    .line 91
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 95
    :cond_0
    return-void

    .line 56
    .restart local v2    # "begin":J
    .restart local v8    # "i":I
    .restart local v10    # "jsonArray":Lorg/json/JSONArray;
    .restart local v12    # "over":J
    :cond_1
    :try_start_1
    invoke-virtual {v10, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 57
    .local v9, "item":Lorg/json/JSONObject;
    new-instance v4, Lcom/lzx/iteam/bean/ChatGroup;

    invoke-direct {v4}, Lcom/lzx/iteam/bean/ChatGroup;-><init>()V

    .line 58
    .local v4, "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    const-string v11, "name"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/lzx/iteam/bean/ChatGroup;->name:Ljava/lang/String;

    .line 59
    const-string v11, "image"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/lzx/iteam/bean/ChatGroup;->img:Ljava/lang/String;

    .line 60
    const-string v11, "count"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/lzx/iteam/bean/ChatGroup;->memberCount:Ljava/lang/String;

    .line 61
    const-string v11, "last_msg_time"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/lzx/iteam/bean/ChatGroup;->lastUpdateTime:Ljava/lang/String;

    .line 62
    const-string v11, "id"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/lzx/iteam/bean/ChatGroup;->id:Ljava/lang/String;

    .line 63
    const-string v11, "last_msg_name"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/lzx/iteam/bean/ChatGroup;->lastMsgName:Ljava/lang/String;

    .line 64
    const-string v11, "last_msg_content"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/lzx/iteam/bean/ChatGroup;->lastMsgContent:Ljava/lang/String;

    .line 65
    const-string v11, "user_type"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/lzx/iteam/bean/ChatGroup;->userType:Ljava/lang/String;

    .line 66
    const-string v11, "is_new"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/lzx/iteam/bean/ChatGroup;->isNew:Ljava/lang/String;

    .line 67
    const-string v11, "type"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/lzx/iteam/bean/ChatGroup;->type:Ljava/lang/String;

    .line 68
    const-string v11, "is_active"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/lzx/iteam/bean/ChatGroup;->isActive:Ljava/lang/String;

    .line 70
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    const-string v14, "id"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/lzx/iteam/provider/MessageDB;->getUnReadCountOfOneGroup(Ljava/lang/String;)I

    move-result v6

    .line 72
    .local v6, "count":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/lzx/iteam/bean/ChatGroup;->unreadCount:Ljava/lang/String;

    .line 73
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lzx/iteam/net/ChatGroupListMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-virtual {v11, v4}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertChatGroup(Lcom/lzx/iteam/bean/ChatGroup;)J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 82
    .end local v2    # "begin":J
    .end local v4    # "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    .end local v6    # "count":I
    .end local v8    # "i":I
    .end local v9    # "item":Lorg/json/JSONObject;
    .end local v10    # "jsonArray":Lorg/json/JSONArray;
    .end local v12    # "over":J
    :catch_0
    move-exception v7

    .line 83
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method
