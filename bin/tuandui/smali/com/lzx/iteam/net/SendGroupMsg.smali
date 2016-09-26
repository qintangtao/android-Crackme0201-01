.class public Lcom/lzx/iteam/net/SendGroupMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "SendGroupMsg.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mmCallback:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "SendGroupMsg"

    sput-object v0, Lcom/lzx/iteam/net/SendGroupMsg;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Message;Landroid/content/Context;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/lzx/iteam/net/SendGroupMsg;->mmCallback:Landroid/os/Message;

    .line 20
    iput-object p2, p0, Lcom/lzx/iteam/net/SendGroupMsg;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 49
    sget-object v4, Lcom/lzx/iteam/net/SendGroupMsg;->TAG:Ljava/lang/String;

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

    .line 50
    iget-object v4, p0, Lcom/lzx/iteam/net/SendGroupMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_0

    .line 51
    iget-object v4, p0, Lcom/lzx/iteam/net/SendGroupMsg;->mmCallback:Landroid/os/Message;

    const/4 v5, -0x1

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 52
    iget-object v4, p0, Lcom/lzx/iteam/net/SendGroupMsg;->mmCallback:Landroid/os/Message;

    iput-object p2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 53
    iget-object v4, p0, Lcom/lzx/iteam/net/SendGroupMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 55
    :cond_0
    const/4 v1, 0x0

    .line 56
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 57
    const/4 v2, 0x0

    .line 59
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 67
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/SendGroupMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_2

    .line 68
    iget-object v4, p0, Lcom/lzx/iteam/net/SendGroupMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 69
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 70
    iget-object v4, p0, Lcom/lzx/iteam/net/SendGroupMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/SendGroupMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 76
    :cond_2
    return-void

    .line 61
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 63
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_3
    iget-object v4, p0, Lcom/lzx/iteam/net/SendGroupMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 61
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
    .line 25
    sget-object v4, Lcom/lzx/iteam/net/SendGroupMsg;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onReceive --> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 v1, 0x0

    .line 28
    .local v1, "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    :try_start_0
    const-string v4, "data"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 29
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "ids"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    iget-object v4, p0, Lcom/lzx/iteam/net/SendGroupMsg;->mmCallback:Landroid/os/Message;

    iget-object v4, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    move-object v1, v0

    .line 31
    const-string v4, "ids"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->setMsgID(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/SendGroupMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 41
    iget-object v4, p0, Lcom/lzx/iteam/net/SendGroupMsg;->mmCallback:Landroid/os/Message;

    const/4 v5, 0x0

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 42
    iget-object v4, p0, Lcom/lzx/iteam/net/SendGroupMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 43
    iget-object v4, p0, Lcom/lzx/iteam/net/SendGroupMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 45
    :cond_1
    return-void

    .line 37
    :catch_0
    move-exception v2

    .line 38
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
