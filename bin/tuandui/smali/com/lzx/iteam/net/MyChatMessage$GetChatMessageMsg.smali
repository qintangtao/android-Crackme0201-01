.class public Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "MyChatMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/net/MyChatMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetChatMessageMsg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$GetChatGroupInfo;,
        Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;
    }
.end annotation


# instance fields
.field private final MSG_CHAT_GROUP_INFO:I

.field chatGroupId:Ljava/lang/String;

.field chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

.field private cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field private mmCallback:Landroid/os/Message;

.field senderId:Ljava/lang/String;

.field senderImg:Ljava/lang/String;

.field senderName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/content/Context;)V
    .locals 1
    .param p1, "callBack"    # Landroid/os/Message;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 38
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->MSG_CHAT_GROUP_INFO:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->senderName:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->senderImg:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->chatGroupId:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->senderId:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mmCallback:Landroid/os/Message;

    .line 78
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p2}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 79
    iput-object p2, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mContext:Landroid/content/Context;

    .line 80
    new-instance v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;-><init>(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;)V

    invoke-virtual {v0}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$LooperThread;->start()V

    .line 81
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mmCallback:Landroid/os/Message;

    return-object v0
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mmCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mmCallback:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 191
    iget-object v0, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 193
    :cond_0
    return-void
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 39
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 86
    :try_start_0
    const-string v2, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v7, "msg_list"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v36

    .line 87
    .local v36, "jsonArray":Lorg/json/JSONArray;
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_0
    invoke-virtual/range {v36 .. v36}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v34

    if-lt v0, v2, :cond_0

    .line 185
    .end local v34    # "i":I
    .end local v36    # "jsonArray":Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 88
    .restart local v34    # "i":I
    .restart local v36    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lorg/json/JSONObject;

    .line 89
    .local v37, "msgObj":Lorg/json/JSONObject;
    const-string v2, "event_id"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "content"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    new-instance v33, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;

    invoke-direct/range {v33 .. v33}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;-><init>()V

    .line 91
    .local v33, "eventReplyData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    const-string v2, "event_id"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setEventId(Ljava/lang/String;)V

    .line 92
    const-string v2, "user_id"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setUserId(Ljava/lang/String;)V

    .line 93
    const-string v2, "user_name"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setUserName(Ljava/lang/String;)V

    .line 94
    const-string v2, "create_time"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setUpdateTime(Ljava/lang/String;)V

    .line 95
    const-string v2, "content"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setContent(Ljava/lang/String;)V

    .line 96
    const-string v2, "snd_img"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setAvatar(Ljava/lang/String;)V

    .line 98
    const/4 v2, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setIsReaded(Z)V

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mmCallback:Landroid/os/Message;

    if-eqz v2, :cond_5

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mmCallback:Landroid/os/Message;

    const/4 v7, 0x0

    iput v7, v2, Landroid/os/Message;->arg1:I

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v0, v33

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 181
    .end local v33    # "eventReplyData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    .end local v34    # "i":I
    .end local v36    # "jsonArray":Lorg/json/JSONArray;
    .end local v37    # "msgObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v32

    .line 182
    .local v32, "e":Ljava/lang/Exception;
    const-string v2, "GetChatMessageMsg"

    const-string v7, "get chat message exception"

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 106
    .end local v32    # "e":Ljava/lang/Exception;
    .restart local v34    # "i":I
    .restart local v36    # "jsonArray":Lorg/json/JSONArray;
    .restart local v37    # "msgObj":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v2, "type"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 112
    .local v3, "msgType":I
    const-string v2, "id"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 113
    .local v6, "msgId":Ljava/lang/String;
    const-string v2, "snd_id"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->senderId:Ljava/lang/String;

    .line 114
    const-string v2, "chgrp_id"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->chatGroupId:Ljava/lang/String;

    .line 115
    const-string v2, "ct"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "msgContent":Ljava/lang/String;
    const-string v2, "thumbnails"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 117
    .local v38, "msgThumbnails":Ljava/lang/String;
    const-string v2, "time"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, "sendTime":Ljava/lang/String;
    const-string v2, "duration"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x66

    if-ne v3, v2, :cond_2

    .line 119
    const-string v2, "duration"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 120
    .local v31, "duration":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "tuandui@lzx"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 122
    .end local v31    # "duration":Ljava/lang/String;
    :cond_2
    packed-switch v3, :pswitch_data_0

    .line 165
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->senderName:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->senderImg:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 166
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->senderId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/lzx/iteam/provider/CloudDBOperation;->findUserMsgById(Ljava/lang/String;)Lcom/lzx/iteam/bean/ChatContact;

    move-result-object v2

    iget-object v2, v2, Lcom/lzx/iteam/bean/ChatContact;->userId:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->senderId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/provider/CloudDBOperation;->findUserMsgById(Ljava/lang/String;)Lcom/lzx/iteam/bean/ChatContact;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/bean/ChatContact;->userName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->setSenderName(Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->senderId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/lzx/iteam/provider/CloudDBOperation;->findUserMsgById(Ljava/lang/String;)Lcom/lzx/iteam/bean/ChatContact;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/bean/ChatContact;->userImg:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->setSenderImg(Ljava/lang/String;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mmCallback:Landroid/os/Message;

    if-eqz v2, :cond_5

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mmCallback:Landroid/os/Message;

    const/4 v7, 0x0

    iput v7, v2, Landroid/os/Message;->arg1:I

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    iput-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 131
    :pswitch_0
    new-instance v2, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->senderId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->senderName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->senderImg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->chatGroupId:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const/16 v17, 0x1

    move-object v12, v4

    invoke-direct/range {v2 .. v17}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    goto/16 :goto_2

    .line 137
    :pswitch_1
    invoke-static/range {v38 .. v38}, Lcom/lzx/iteam/task/DownloadImageTask;->loadImageFromNetwork(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v35

    .line 138
    .local v35, "imageBitmap":Landroid/graphics/Bitmap;
    const-string v2, "/Yun/Images/Thumbnails/"

    move-object/from16 v0, v35

    invoke-static {v0, v2}, Lcom/lzx/iteam/util/PhotoUtil;->saveBitmaptoSdCard(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 139
    .local v14, "imagePath":Ljava/lang/String;
    new-instance v2, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->senderId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->senderName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->senderImg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->chatGroupId:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, ""

    const-string v15, ""

    const-string v16, ""

    const/16 v17, 0x1

    move-object v13, v4

    invoke-direct/range {v2 .. v17}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    goto/16 :goto_2

    .line 152
    .end local v14    # "imagePath":Ljava/lang/String;
    .end local v35    # "imageBitmap":Landroid/graphics/Bitmap;
    :pswitch_2
    new-instance v15, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->senderId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->senderName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->senderImg:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->chatGroupId:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, ""

    const-string v26, ""

    const-string v27, ""

    const-string v29, ""

    const/16 v30, 0x1

    move/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v28, v4

    invoke-direct/range {v15 .. v30}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    goto/16 :goto_2

    .line 176
    :cond_4
    new-instance v2, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$GetChatGroupInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->chatGroupId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v7, v8}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$GetChatGroupInfo;-><init>(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$GetChatGroupInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    .end local v3    # "msgType":I
    .end local v4    # "msgContent":Ljava/lang/String;
    .end local v5    # "sendTime":Ljava/lang/String;
    .end local v6    # "msgId":Ljava/lang/String;
    .end local v38    # "msgThumbnails":Ljava/lang/String;
    :cond_5
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
