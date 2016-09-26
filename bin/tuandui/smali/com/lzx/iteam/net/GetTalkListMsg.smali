.class public Lcom/lzx/iteam/net/GetTalkListMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetTalkListMsg.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mmCallback:Landroid/os/Message;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/content/Context;)V
    .locals 3
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/lzx/iteam/net/GetTalkListMsg;->mmCallback:Landroid/os/Message;

    .line 31
    iput-object p2, p0, Lcom/lzx/iteam/net/GetTalkListMsg;->mContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/lzx/iteam/net/GetTalkListMsg;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/GetTalkListMsg;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 33
    iget-object v0, p0, Lcom/lzx/iteam/net/GetTalkListMsg;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "useid"

    const-string v2, "\uff0d1"

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/GetTalkListMsg;->userId:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 139
    const/4 v2, 0x0

    .line 141
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 149
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/GetTalkListMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 150
    iget-object v4, p0, Lcom/lzx/iteam/net/GetTalkListMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 151
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 152
    iget-object v4, p0, Lcom/lzx/iteam/net/GetTalkListMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 156
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetTalkListMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 158
    :cond_1
    return-void

    .line 143
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 145
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 154
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/GetTalkListMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 143
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 25
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 38
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v19, "talkListDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/TalkListData;>;"
    :try_start_0
    const-string v22, "data"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 41
    .local v13, "jsonObject":Lorg/json/JSONObject;
    const-string v22, "talks"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 42
    .local v12, "jsonArray":Lorg/json/JSONArray;
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    move/from16 v0, v22

    if-lt v14, v0, :cond_1

    .line 126
    .end local v12    # "jsonArray":Lorg/json/JSONArray;
    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "k":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetTalkListMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetTalkListMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetTalkListMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetTalkListMsg;->mmCallback:Landroid/os/Message;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    .line 133
    :cond_0
    return-void

    .line 43
    .restart local v12    # "jsonArray":Lorg/json/JSONArray;
    .restart local v13    # "jsonObject":Lorg/json/JSONObject;
    .restart local v14    # "k":I
    :cond_1
    :try_start_1
    new-instance v18, Lcom/lzx/iteam/bean/TalkListData;

    invoke-direct/range {v18 .. v18}, Lcom/lzx/iteam/bean/TalkListData;-><init>()V

    .line 44
    .local v18, "talkListData":Lcom/lzx/iteam/bean/TalkListData;
    const-string v22, "counts"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/lzx/iteam/bean/TalkListData;->allCounts:Ljava/lang/String;

    .line 45
    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 46
    .local v10, "item":Lorg/json/JSONObject;
    const-string v22, "talk_id"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    .line 47
    const-string v22, "uname"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/lzx/iteam/bean/TalkListData;->uName:Ljava/lang/String;

    .line 48
    const-string v22, "uid"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/lzx/iteam/bean/TalkListData;->uId:Ljava/lang/String;

    .line 49
    const-string v22, "uimg"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/lzx/iteam/bean/TalkListData;->uImage:Ljava/lang/String;

    .line 50
    const-string v22, "0"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/lzx/iteam/bean/TalkListData;->isPraise:Ljava/lang/String;

    .line 51
    const-string v22, "talk"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 52
    const-string v22, "talk"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 53
    .local v17, "talk":Lorg/json/JSONObject;
    const-string v22, "text"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/lzx/iteam/bean/TalkListData;->text:Ljava/lang/String;

    .line 54
    const-string v22, "update_time"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/lzx/iteam/bean/TalkListData;->updateTime:Ljava/lang/String;

    .line 55
    const-string v22, "create_time"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/lzx/iteam/bean/TalkListData;->createTime:Ljava/lang/String;

    .line 56
    const-string v22, "content"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 57
    const-string v22, "content"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 58
    .local v8, "image":Lorg/json/JSONArray;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v21, "thumbSb":Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v15, "oriSb":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-lt v7, v0, :cond_5

    .line 69
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    if-lez v22, :cond_2

    .line 70
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/lzx/iteam/bean/TalkListData;->thumbImage:Ljava/lang/String;

    .line 72
    :cond_2
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    if-lez v22, :cond_3

    .line 73
    const/16 v22, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/lzx/iteam/bean/TalkListData;->oriImage:Ljava/lang/String;

    .line 78
    .end local v7    # "i":I
    .end local v8    # "image":Lorg/json/JSONArray;
    .end local v15    # "oriSb":Ljava/lang/StringBuilder;
    .end local v17    # "talk":Lorg/json/JSONObject;
    .end local v21    # "thumbSb":Ljava/lang/StringBuilder;
    :cond_3
    const-string v22, "comments"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 79
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v16, "praiseDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v3, "commentDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v22, "comments"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 82
    .local v5, "comments":Lorg/json/JSONArray;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-lt v11, v0, :cond_8

    .line 112
    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/lzx/iteam/bean/TalkListData;->comments:Ljava/util/ArrayList;

    .line 113
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    .line 115
    .end local v3    # "commentDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v5    # "comments":Lorg/json/JSONArray;
    .end local v11    # "j":I
    .end local v16    # "praiseDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_4
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 61
    .restart local v7    # "i":I
    .restart local v8    # "image":Lorg/json/JSONArray;
    .restart local v15    # "oriSb":Ljava/lang/StringBuilder;
    .restart local v17    # "talk":Lorg/json/JSONObject;
    .restart local v21    # "thumbSb":Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 62
    .local v9, "imageObject":Lorg/json/JSONObject;
    const-string v22, "thumb"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 63
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "thumb"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_6
    const-string v22, "ori"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 66
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ori"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 83
    .end local v7    # "i":I
    .end local v8    # "image":Lorg/json/JSONArray;
    .end local v9    # "imageObject":Lorg/json/JSONObject;
    .end local v15    # "oriSb":Ljava/lang/StringBuilder;
    .end local v17    # "talk":Lorg/json/JSONObject;
    .end local v21    # "thumbSb":Ljava/lang/StringBuilder;
    .restart local v3    # "commentDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v5    # "comments":Lorg/json/JSONArray;
    .restart local v11    # "j":I
    .restart local v16    # "praiseDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_8
    invoke-virtual {v5, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 84
    .local v4, "commentObject":Lorg/json/JSONObject;
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v20, "talkUserData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v22, "talk_id"

    const-string v23, "talk_id"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v22, "talk_about_id"

    const-string v23, "_id"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v22, "talk_user_id"

    const-string v23, "user_id"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v22, "talk_user_name"

    const-string v23, "user_name"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v22, "talk_user_img"

    const-string v23, "user_img"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v22, "reply_uid"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 92
    const-string v22, "talk_reply_id"

    const-string v23, "reply_uid"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_9
    const-string v22, "reply_name"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 95
    const-string v22, "talk_reply_name"

    const-string v23, "reply_name"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_a
    const-string v22, "talk_type"

    const-string v23, "type"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v22, "comment"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 99
    const-string v22, "talk_comment"

    const-string v23, "comment"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_b
    const-string v22, "talk_create_time"

    const-string v23, "create_time"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v22, "1"

    const-string v23, "type"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 103
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v22, "talk_user_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/net/GetTalkListMsg;->userId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 105
    const-string v22, "1"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/lzx/iteam/bean/TalkListData;->isPraise:Ljava/lang/String;

    .line 106
    const-string v22, "get_talk_list_msg"

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "    &&&&   "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->isPraise:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_c
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 109
    :cond_d
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 120
    .end local v3    # "commentDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "commentObject":Lorg/json/JSONObject;
    .end local v5    # "comments":Lorg/json/JSONArray;
    .end local v10    # "item":Lorg/json/JSONObject;
    .end local v11    # "j":I
    .end local v12    # "jsonArray":Lorg/json/JSONArray;
    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "k":I
    .end local v16    # "praiseDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v18    # "talkListData":Lcom/lzx/iteam/bean/TalkListData;
    .end local v20    # "talkUserData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    .line 121
    .local v6, "e":Lorg/json/JSONException;
    const-string v22, "JSONException"

    invoke-virtual {v6}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method
