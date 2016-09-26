.class public Lcom/lzx/iteam/net/EventMemberMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "EventMemberMsg.java"


# instance fields
.field private hasRead:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private mEventType:Ljava/lang/String;

.field private mmCallback:Landroid/os/Message;

.field private userId:Ljava/lang/String;

.field private userImg:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private userType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Message;Ljava/lang/String;)V
    .locals 0
    .param p1, "mmCallback"    # Landroid/os/Message;
    .param p2, "mEventType"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lzx/iteam/net/EventMemberMsg;->mmCallback:Landroid/os/Message;

    .line 25
    iput-object p2, p0, Lcom/lzx/iteam/net/EventMemberMsg;->mEventType:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getHasRead()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lzx/iteam/net/EventMemberMsg;->hasRead:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lzx/iteam/net/EventMemberMsg;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMmCallback()Landroid/os/Message;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lzx/iteam/net/EventMemberMsg;->mmCallback:Landroid/os/Message;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lzx/iteam/net/EventMemberMsg;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lzx/iteam/net/EventMemberMsg;->userImg:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lzx/iteam/net/EventMemberMsg;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lzx/iteam/net/EventMemberMsg;->userType:Ljava/lang/String;

    return-object v0
.end method

.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 113
    const/4 v2, 0x0

    .line 115
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 122
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/EventMemberMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 123
    iget-object v4, p0, Lcom/lzx/iteam/net/EventMemberMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 124
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 125
    iget-object v4, p0, Lcom/lzx/iteam/net/EventMemberMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/EventMemberMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 131
    :cond_1
    return-void

    .line 117
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 119
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/EventMemberMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 117
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 34
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v9, "unReadList":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v7, "readedList":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v8, "unJoinList":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v3, "joinList":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/net/EventMemberMsg;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/lzx/iteam/net/EventMemberMsg;>;>;"
    :try_start_0
    const-string v10, "data"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 42
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v2, v10, :cond_2

    .line 83
    iget-object v10, p0, Lcom/lzx/iteam/net/EventMemberMsg;->mEventType:Ljava/lang/String;

    const-string v11, "7"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/lzx/iteam/net/EventMemberMsg;->mEventType:Ljava/lang/String;

    const-string v11, "9"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 84
    :cond_0
    const-string v10, "join"

    invoke-interface {v5, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v10, "unJoin"

    invoke-interface {v5, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :goto_1
    iget-object v10, p0, Lcom/lzx/iteam/net/EventMemberMsg;->mmCallback:Landroid/os/Message;

    if-eqz v10, :cond_1

    .line 97
    iget-object v10, p0, Lcom/lzx/iteam/net/EventMemberMsg;->mmCallback:Landroid/os/Message;

    iput-object v5, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    iget-object v10, p0, Lcom/lzx/iteam/net/EventMemberMsg;->mmCallback:Landroid/os/Message;

    const/4 v11, 0x0

    iput v11, v10, Landroid/os/Message;->arg1:I

    .line 104
    iget-object v10, p0, Lcom/lzx/iteam/net/EventMemberMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 107
    :cond_1
    return-void

    .line 43
    .restart local v2    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_2
    :try_start_1
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 44
    .local v6, "object":Lorg/json/JSONObject;
    new-instance v0, Lcom/lzx/iteam/net/EventMemberMsg;

    invoke-direct {v0}, Lcom/lzx/iteam/net/EventMemberMsg;-><init>()V

    .line 45
    .local v0, "bean":Lcom/lzx/iteam/net/EventMemberMsg;
    const-string v10, "user_id"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/lzx/iteam/net/EventMemberMsg;->setUserId(Ljava/lang/String;)V

    .line 46
    const-string v10, "user_name"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/lzx/iteam/net/EventMemberMsg;->setUserName(Ljava/lang/String;)V

    .line 47
    const-string v10, "user_image"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 48
    const-string v10, "user_image"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/lzx/iteam/net/EventMemberMsg;->setUserImg(Ljava/lang/String;)V

    .line 52
    :goto_2
    const-string v10, "user_type"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/lzx/iteam/net/EventMemberMsg;->setUserType(Ljava/lang/String;)V

    .line 53
    const-string v10, "has_read"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/lzx/iteam/net/EventMemberMsg;->setHasRead(Ljava/lang/String;)V

    .line 54
    const-string v10, "_id"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/lzx/iteam/net/EventMemberMsg;->setId(Ljava/lang/String;)V

    .line 56
    iget-object v10, p0, Lcom/lzx/iteam/net/EventMemberMsg;->mEventType:Ljava/lang/String;

    const-string v11, "7"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 57
    const-string v10, "has_join"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "1"

    const-string v11, "has_join"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 58
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 50
    :cond_3
    const-string v10, ""

    invoke-virtual {v0, v10}, Lcom/lzx/iteam/net/EventMemberMsg;->setUserImg(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 93
    .end local v0    # "bean":Lcom/lzx/iteam/net/EventMemberMsg;
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 60
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "bean":Lcom/lzx/iteam/net/EventMemberMsg;
    .restart local v2    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "object":Lorg/json/JSONObject;
    :cond_4
    :try_start_2
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 62
    :cond_5
    iget-object v10, p0, Lcom/lzx/iteam/net/EventMemberMsg;->mEventType:Ljava/lang/String;

    const-string v11, "8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 63
    const-string v10, "vote"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 64
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 66
    :cond_6
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 68
    :cond_7
    iget-object v10, p0, Lcom/lzx/iteam/net/EventMemberMsg;->mEventType:Ljava/lang/String;

    const-string v11, "9"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 69
    const-string v10, "has_join"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "0"

    const-string v11, "has_join"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 70
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 72
    :cond_8
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 75
    :cond_9
    const-string v10, "1"

    const-string v11, "has_read"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 76
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 78
    :cond_a
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 86
    .end local v0    # "bean":Lcom/lzx/iteam/net/EventMemberMsg;
    .end local v6    # "object":Lorg/json/JSONObject;
    :cond_b
    iget-object v10, p0, Lcom/lzx/iteam/net/EventMemberMsg;->mEventType:Ljava/lang/String;

    const-string v11, "8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 87
    const-string v10, "vote"

    invoke-interface {v5, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v10, "unVote"

    invoke-interface {v5, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 90
    :cond_c
    const-string v10, "unRead"

    invoke-interface {v5, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v10, "readed"

    invoke-interface {v5, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public setHasRead(Ljava/lang/String;)V
    .locals 0
    .param p1, "hasRead"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/lzx/iteam/net/EventMemberMsg;->hasRead:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/lzx/iteam/net/EventMemberMsg;->id:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setMmCallback(Landroid/os/Message;)V
    .locals 0
    .param p1, "mmCallback"    # Landroid/os/Message;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/lzx/iteam/net/EventMemberMsg;->mmCallback:Landroid/os/Message;

    .line 146
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/lzx/iteam/net/EventMemberMsg;->userId:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setUserImg(Ljava/lang/String;)V
    .locals 0
    .param p1, "userImg"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/lzx/iteam/net/EventMemberMsg;->userImg:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/lzx/iteam/net/EventMemberMsg;->userName:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setUserType(Ljava/lang/String;)V
    .locals 0
    .param p1, "userType"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/lzx/iteam/net/EventMemberMsg;->userType:Ljava/lang/String;

    .line 178
    return-void
.end method
