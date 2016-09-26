.class public Lcom/lzx/iteam/net/GetQnTokenMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetQnTokenMsg.java"


# instance fields
.field private chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

.field private file:[B

.field private fileName:Ljava/lang/String;

.field private mCallBack:Landroid/os/Message;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Message;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->mCallBack:Landroid/os/Message;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "chatMsg"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->mCallBack:Landroid/os/Message;

    .line 44
    iput-object p2, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->path:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->fileName:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Message;[BLjava/lang/String;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "file"    # [B
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->mCallBack:Landroid/os/Message;

    .line 27
    iput-object p2, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->file:[B

    .line 28
    iput-object p3, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->fileName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Message;[BLjava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "file"    # [B
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "chatMsg"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->mCallBack:Landroid/os/Message;

    .line 37
    iput-object p2, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->file:[B

    .line 38
    iput-object p3, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->fileName:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 40
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 86
    const/4 v2, 0x0

    .line 88
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 96
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->mCallBack:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 97
    iget-object v4, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->mCallBack:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 98
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 99
    iget-object v4, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->mCallBack:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->mCallBack:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 105
    :cond_1
    return-void

    .line 90
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 92
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->mCallBack:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 90
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 53
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    const-string v5, "data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 56
    .local v1, "item":Lorg/json/JSONObject;
    const-string v5, "token"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 57
    const-string v5, "token"

    const-string v6, "token"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v5, "file"

    iget-object v6, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->file:[B

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v5, "fileName"

    iget-object v6, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->fileName:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v5, "path"

    iget-object v6, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->path:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v5, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    if-eqz v5, :cond_0

    .line 62
    const-string v5, "chatMsg"

    iget-object v6, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "item":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->mCallBack:Landroid/os/Message;

    if-eqz v5, :cond_1

    .line 76
    iget-object v5, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->mCallBack:Landroid/os/Message;

    const/4 v6, 0x0

    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 77
    iget-object v5, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->mCallBack:Landroid/os/Message;

    iput-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    iget-object v5, p0, Lcom/lzx/iteam/net/GetQnTokenMsg;->mCallBack:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 80
    :cond_1
    return-void

    .line 65
    .restart local v1    # "item":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 66
    .local v3, "keys":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 68
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 71
    .end local v1    # "item":Lorg/json/JSONObject;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
