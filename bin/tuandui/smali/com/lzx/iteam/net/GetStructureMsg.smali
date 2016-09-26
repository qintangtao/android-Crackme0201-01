.class public Lcom/lzx/iteam/net/GetStructureMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetStructureMsg.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetStructureMsg"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGid:Ljava/lang/String;

.field private mmCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "mContext"    # Landroid/content/Context;
    .param p3, "mGid"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/lzx/iteam/net/GetStructureMsg;->mmCallback:Landroid/os/Message;

    .line 31
    iput-object p2, p0, Lcom/lzx/iteam/net/GetStructureMsg;->mContext:Landroid/content/Context;

    .line 32
    iput-object p3, p0, Lcom/lzx/iteam/net/GetStructureMsg;->mGid:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static getElementMsg(Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/treeview/Element;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 115
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "data":Lorg/json/JSONObject;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v3, "elementList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v4, "elementListTop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    const-string v10, "data"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 119
    .local v8, "jsonObject":Lorg/json/JSONObject;
    const-string v10, "tags"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 120
    .local v7, "jsonArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v5, v10, :cond_0

    .line 146
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;>;"
    const-string v10, "top"

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v10, "all"

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v3    # "elementList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    .end local v4    # "elementListTop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    .end local v5    # "i":I
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;>;"
    :goto_1
    return-object v9

    .line 121
    .restart local v0    # "data":Lorg/json/JSONObject;
    .restart local v3    # "elementList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    .restart local v4    # "elementListTop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    .restart local v5    # "i":I
    .restart local v7    # "jsonArray":Lorg/json/JSONArray;
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 122
    .local v6, "item":Lorg/json/JSONObject;
    new-instance v2, Lcom/lzx/iteam/treeview/Element;

    invoke-direct {v2}, Lcom/lzx/iteam/treeview/Element;-><init>()V

    .line 123
    .local v2, "elementItem":Lcom/lzx/iteam/treeview/Element;
    const-string v10, "name"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/lzx/iteam/treeview/Element;->contentText:Ljava/lang/String;

    .line 124
    const-string v10, "id"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v2, Lcom/lzx/iteam/treeview/Element;->id:I

    .line 125
    const-string v10, "contact_count"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v2, Lcom/lzx/iteam/treeview/Element;->contactCount:I

    .line 126
    const-string v10, "group_id"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v2, Lcom/lzx/iteam/treeview/Element;->groupId:I

    .line 128
    const-string v10, "type"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/lzx/iteam/treeview/Element;->type:Ljava/lang/String;

    .line 129
    const-string v10, "pid"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    const-string v10, "pid"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "null"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 130
    :cond_1
    const/4 v10, 0x0

    iput v10, v2, Lcom/lzx/iteam/treeview/Element;->parendId:I

    .line 134
    :goto_2
    const-string v10, "path"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    iput v10, v2, Lcom/lzx/iteam/treeview/Element;->level:I

    .line 135
    const-string v10, "child_count"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_4

    .line 136
    const/4 v10, 0x0

    iput-boolean v10, v2, Lcom/lzx/iteam/treeview/Element;->hasChildren:Z

    .line 140
    :goto_3
    const/4 v10, 0x0

    iput-boolean v10, v2, Lcom/lzx/iteam/treeview/Element;->isExpanded:Z

    .line 141
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget v10, v2, Lcom/lzx/iteam/treeview/Element;->level:I

    if-ne v10, v12, :cond_2

    .line 143
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 132
    :cond_3
    const-string v10, "pid"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v2, Lcom/lzx/iteam/treeview/Element;->parendId:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 150
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "elementItem":Lcom/lzx/iteam/treeview/Element;
    .end local v3    # "elementList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    .end local v4    # "elementListTop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    .end local v5    # "i":I
    .end local v6    # "item":Lorg/json/JSONObject;
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 153
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 138
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "data":Lorg/json/JSONObject;
    .restart local v2    # "elementItem":Lcom/lzx/iteam/treeview/Element;
    .restart local v3    # "elementList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    .restart local v4    # "elementListTop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    .restart local v5    # "i":I
    .restart local v6    # "item":Lorg/json/JSONObject;
    .restart local v7    # "jsonArray":Lorg/json/JSONArray;
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    const/4 v10, 0x1

    :try_start_1
    iput-boolean v10, v2, Lcom/lzx/iteam/treeview/Element;->hasChildren:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 158
    const-string v4, "GetStructureMsg"

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

    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 161
    const/4 v2, 0x0

    .line 163
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 170
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/GetStructureMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 171
    iget-object v4, p0, Lcom/lzx/iteam/net/GetStructureMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 172
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 173
    iget-object v4, p0, Lcom/lzx/iteam/net/GetStructureMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetStructureMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 179
    :cond_1
    return-void

    .line 165
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 167
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 175
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/GetStructureMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 165
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
    .line 38
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/net/GetStructureMsg;->mContext:Landroid/content/Context;

    const-string v14, "structure"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 41
    .local v12, "sp":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v4, "elementList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v5, "elementListTop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    const-string v13, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 44
    .local v10, "jsonObject":Lorg/json/JSONObject;
    const-string v13, "tags"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 45
    .local v9, "jsonArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 46
    .local v6, "groupid":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lt v7, v13, :cond_2

    .line 79
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_0

    .line 80
    new-instance v3, Lcom/lzx/iteam/treeview/Element;

    invoke-direct {v3}, Lcom/lzx/iteam/treeview/Element;-><init>()V

    .line 81
    .local v3, "elementItem":Lcom/lzx/iteam/treeview/Element;
    const-string v13, "type"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcom/lzx/iteam/treeview/Element;->type:Ljava/lang/String;

    .line 82
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v3    # "elementItem":Lcom/lzx/iteam/treeview/Element;
    :cond_0
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 86
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/net/GetStructureMsg;->mGid:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "tag"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v2, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/net/GetStructureMsg;->mmCallback:Landroid/os/Message;

    if-eqz v13, :cond_1

    .line 95
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v11, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;>;"
    const-string v13, "top"

    invoke-interface {v11, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v13, "all"

    invoke-interface {v11, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/net/GetStructureMsg;->mmCallback:Landroid/os/Message;

    iput-object v11, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/net/GetStructureMsg;->mmCallback:Landroid/os/Message;

    const/4 v14, 0x0

    iput v14, v13, Landroid/os/Message;->arg1:I

    .line 100
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/net/GetStructureMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 110
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "elementList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    .end local v5    # "elementListTop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    .end local v6    # "groupid":I
    .end local v7    # "i":I
    .end local v9    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    .end local v11    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;>;"
    .end local v12    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    return-void

    .line 47
    .restart local v4    # "elementList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    .restart local v5    # "elementListTop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    .restart local v6    # "groupid":I
    .restart local v7    # "i":I
    .restart local v9    # "jsonArray":Lorg/json/JSONArray;
    .restart local v10    # "jsonObject":Lorg/json/JSONObject;
    .restart local v12    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 48
    .local v8, "item":Lorg/json/JSONObject;
    new-instance v3, Lcom/lzx/iteam/treeview/Element;

    invoke-direct {v3}, Lcom/lzx/iteam/treeview/Element;-><init>()V

    .line 49
    .restart local v3    # "elementItem":Lcom/lzx/iteam/treeview/Element;
    const-string v13, "name"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcom/lzx/iteam/treeview/Element;->contentText:Ljava/lang/String;

    .line 50
    const-string v13, "id"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v3, Lcom/lzx/iteam/treeview/Element;->id:I

    .line 51
    const-string v13, "contact_count"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v3, Lcom/lzx/iteam/treeview/Element;->contactCount:I

    .line 52
    const-string v13, "group_id"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v3, Lcom/lzx/iteam/treeview/Element;->groupId:I

    .line 54
    const-string v13, "type"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcom/lzx/iteam/treeview/Element;->type:Ljava/lang/String;

    .line 56
    const-string v13, "group_id"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 62
    const-string v13, "pid"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    const-string v13, "pid"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "null"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 63
    :cond_3
    const/4 v13, 0x0

    iput v13, v3, Lcom/lzx/iteam/treeview/Element;->parendId:I

    .line 67
    :goto_2
    const-string v13, "path"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    iput v13, v3, Lcom/lzx/iteam/treeview/Element;->level:I

    .line 68
    const-string v13, "child_count"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_6

    .line 69
    const/4 v13, 0x0

    iput-boolean v13, v3, Lcom/lzx/iteam/treeview/Element;->hasChildren:Z

    .line 73
    :goto_3
    const/4 v13, 0x0

    iput-boolean v13, v3, Lcom/lzx/iteam/treeview/Element;->isExpanded:Z

    .line 74
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget v13, v3, Lcom/lzx/iteam/treeview/Element;->level:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 76
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 65
    :cond_5
    const-string v13, "pid"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v3, Lcom/lzx/iteam/treeview/Element;->parendId:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 106
    .end local v3    # "elementItem":Lcom/lzx/iteam/treeview/Element;
    .end local v4    # "elementList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    .end local v5    # "elementListTop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    .end local v6    # "groupid":I
    .end local v7    # "i":I
    .end local v8    # "item":Lorg/json/JSONObject;
    .end local v9    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 71
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v3    # "elementItem":Lcom/lzx/iteam/treeview/Element;
    .restart local v4    # "elementList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    .restart local v5    # "elementListTop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    .restart local v6    # "groupid":I
    .restart local v7    # "i":I
    .restart local v8    # "item":Lorg/json/JSONObject;
    .restart local v9    # "jsonArray":Lorg/json/JSONArray;
    .restart local v10    # "jsonObject":Lorg/json/JSONObject;
    .restart local v12    # "sp":Landroid/content/SharedPreferences;
    :cond_6
    const/4 v13, 0x1

    :try_start_1
    iput-boolean v13, v3, Lcom/lzx/iteam/treeview/Element;->hasChildren:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
