.class public Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "MyMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/net/MyMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetReplyMessage"
.end annotation


# instance fields
.field private mCount:I

.field private mEventId:Ljava/lang/String;

.field private mEventType:Ljava/lang/String;

.field private mMsgDB:Lcom/lzx/iteam/provider/EventsMsgDB;

.field private mmCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;Lcom/lzx/iteam/provider/EventsMsgDB;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mmCallback"    # Landroid/os/Message;
    .param p2, "mMsgDB"    # Lcom/lzx/iteam/provider/EventsMsgDB;
    .param p3, "mEventId"    # Ljava/lang/String;
    .param p4, "mEventType"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mmCallback:Landroid/os/Message;

    .line 98
    iput-object p2, p0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mMsgDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    .line 99
    iput-object p3, p0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mEventId:Ljava/lang/String;

    .line 100
    iput-object p4, p0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mEventType:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/os/Message;Lcom/lzx/iteam/provider/EventsMsgDB;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "mmCallback"    # Landroid/os/Message;
    .param p2, "mMsgDB"    # Lcom/lzx/iteam/provider/EventsMsgDB;
    .param p3, "mEventId"    # Ljava/lang/String;
    .param p4, "mEventType"    # Ljava/lang/String;
    .param p5, "count"    # I

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mmCallback:Landroid/os/Message;

    .line 105
    iput-object p2, p0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mMsgDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    .line 106
    iput-object p3, p0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mEventId:Ljava/lang/String;

    .line 107
    iput-object p4, p0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mEventType:Ljava/lang/String;

    .line 108
    iput p5, p0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mCount:I

    .line 109
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 209
    const/4 v2, 0x0

    .line 211
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 219
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 220
    iget-object v4, p0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 221
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 222
    iget-object v4, p0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 226
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 228
    :cond_1
    return-void

    .line 213
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 215
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 224
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 213
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 16
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 113
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/aidl/EventReplyNewData;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v12, "voteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventVoteBean;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mEventType:Ljava/lang/String;

    const-string v14, "7"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 118
    const-string v13, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 119
    .local v9, "object":Lorg/json/JSONObject;
    new-instance v6, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;

    invoke-direct {v6}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;-><init>()V

    .line 120
    .local v6, "eventReplyNewData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    const-string v13, "member_count"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setMemberCount(Ljava/lang/String;)V

    .line 121
    const-string v13, "join_count"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setJoinCount(Ljava/lang/String;)V

    .line 122
    const-string v13, "join_members"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 123
    .local v3, "detail":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v4, "detailBeans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lt v7, v13, :cond_2

    .line 133
    invoke-virtual {v6, v4}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setActiveDetailBeans(Ljava/util/ArrayList;)V

    .line 134
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v3    # "detail":Lorg/json/JSONArray;
    .end local v4    # "detailBeans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;>;"
    .end local v6    # "eventReplyNewData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    .end local v7    # "i":I
    .end local v9    # "object":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mmCallback:Landroid/os/Message;

    if-eqz v13, :cond_1

    .line 192
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mEventType:Ljava/lang/String;

    const-string v14, "8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 193
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mmCallback:Landroid/os/Message;

    iput-object v12, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 199
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mmCallback:Landroid/os/Message;

    const/4 v14, 0x0

    iput v14, v13, Landroid/os/Message;->arg1:I

    .line 200
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mmCallback:Landroid/os/Message;

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 203
    :cond_1
    return-void

    .line 125
    .restart local v3    # "detail":Lorg/json/JSONArray;
    .restart local v4    # "detailBeans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;>;"
    .restart local v6    # "eventReplyNewData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    .restart local v7    # "i":I
    .restart local v9    # "object":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 126
    .local v10, "object1":Lorg/json/JSONObject;
    new-instance v2, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;

    invoke-direct {v2}, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;-><init>()V

    .line 127
    .local v2, "bean":Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;
    const-string v13, "user_image"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;->setImage(Ljava/lang/String;)V

    .line 128
    const-string v13, "user_name"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;->setName(Ljava/lang/String;)V

    .line 129
    const-string v13, "user_phone"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;->setPhone(Ljava/lang/String;)V

    .line 130
    const-string v13, "user_id"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;->setUid(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 135
    .end local v2    # "bean":Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;
    .end local v3    # "detail":Lorg/json/JSONArray;
    .end local v4    # "detailBeans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;>;"
    .end local v6    # "eventReplyNewData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    .end local v7    # "i":I
    .end local v9    # "object":Lorg/json/JSONObject;
    .end local v10    # "object1":Lorg/json/JSONObject;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mEventType:Ljava/lang/String;

    const-string v14, "8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 137
    const-string v13, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 138
    .restart local v9    # "object":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mCount:I

    if-ge v7, v13, :cond_0

    .line 139
    new-instance v2, Lcom/lzx/iteam/bean/EventVoteBean;

    invoke-direct {v2}, Lcom/lzx/iteam/bean/EventVoteBean;-><init>()V

    .line 141
    .local v2, "bean":Lcom/lzx/iteam/bean/EventVoteBean;
    new-instance v13, Ljava/lang/StringBuilder;

    add-int/lit8 v14, v7, 0x41

    int-to-char v14, v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/lzx/iteam/bean/EventVoteBean;->setCount(I)V

    .line 142
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 145
    .end local v2    # "bean":Lcom/lzx/iteam/bean/EventVoteBean;
    .end local v7    # "i":I
    .end local v9    # "object":Lorg/json/JSONObject;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mEventType:Ljava/lang/String;

    const-string v14, "9"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 149
    const-string v13, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 161
    .local v1, "array":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mMsgDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mEventId:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/lzx/iteam/provider/EventsMsgDB;->deleteMessagesByEventID(Ljava/lang/String;)I

    move-result v11

    .line 162
    .local v11, "r":I
    const-string v13, "delete_data"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\u5220\u9664"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v7, v13, :cond_0

    .line 164
    new-instance v6, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;

    invoke-direct {v6}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;-><init>()V

    .line 165
    .restart local v6    # "eventReplyNewData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 166
    .restart local v9    # "object":Lorg/json/JSONObject;
    const-string v13, "user_name"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setUserName(Ljava/lang/String;)V

    .line 167
    const-string v13, "create_time"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setUpdateTime(Ljava/lang/String;)V

    .line 168
    const-string v13, "content"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setContent(Ljava/lang/String;)V

    .line 169
    const-string v13, "user_id"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setUserId(Ljava/lang/String;)V

    .line 170
    const-string v13, "user_image"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setAvatar(Ljava/lang/String;)V

    .line 171
    const-string v13, "event_id"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 172
    const-string v13, "event_id"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setEventId(Ljava/lang/String;)V

    .line 174
    :cond_5
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setIsReaded(Z)V

    .line 175
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mMsgDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    invoke-virtual {v13, v6}, Lcom/lzx/iteam/provider/EventsMsgDB;->insertEventReply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 187
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v6    # "eventReplyNewData":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    .end local v7    # "i":I
    .end local v9    # "object":Lorg/json/JSONObject;
    .end local v11    # "r":I
    :catch_0
    move-exception v5

    .line 188
    .local v5, "e":Lorg/json/JSONException;
    const-string v13, "get_reply_error"

    invoke-virtual {v5}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 194
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mEventType:Ljava/lang/String;

    const-string v14, "9"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 195
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mmCallback:Landroid/os/Message;

    move-object/from16 v0, p1

    iput-object v0, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_2

    .line 197
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mmCallback:Landroid/os/Message;

    iput-object v8, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_2
.end method
