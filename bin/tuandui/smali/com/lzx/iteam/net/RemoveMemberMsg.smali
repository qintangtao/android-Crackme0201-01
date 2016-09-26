.class public Lcom/lzx/iteam/net/RemoveMemberMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "RemoveMemberMsg.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoveMemberMsg"


# instance fields
.field private mmCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .locals 0
    .param p1, "mmCallback"    # Landroid/os/Message;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lzx/iteam/net/RemoveMemberMsg;->mmCallback:Landroid/os/Message;

    .line 25
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 48
    iget-object v4, p0, Lcom/lzx/iteam/net/RemoveMemberMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_0

    .line 49
    iget-object v4, p0, Lcom/lzx/iteam/net/RemoveMemberMsg;->mmCallback:Landroid/os/Message;

    const/4 v5, -0x1

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 50
    iget-object v4, p0, Lcom/lzx/iteam/net/RemoveMemberMsg;->mmCallback:Landroid/os/Message;

    iput-object p2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    iget-object v4, p0, Lcom/lzx/iteam/net/RemoveMemberMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 53
    :cond_0
    const/4 v1, 0x0

    .line 54
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 55
    const/4 v2, 0x0

    .line 57
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 65
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/RemoveMemberMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_2

    .line 66
    iget-object v4, p0, Lcom/lzx/iteam/net/RemoveMemberMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 67
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 68
    iget-object v4, p0, Lcom/lzx/iteam/net/RemoveMemberMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/RemoveMemberMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 74
    :cond_2
    return-void

    .line 59
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 61
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_3
    iget-object v4, p0, Lcom/lzx/iteam/net/RemoveMemberMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 59
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, "backResult":I
    :try_start_0
    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 32
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "ok"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 38
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    iget-object v3, p0, Lcom/lzx/iteam/net/RemoveMemberMsg;->mmCallback:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 39
    iget-object v3, p0, Lcom/lzx/iteam/net/RemoveMemberMsg;->mmCallback:Landroid/os/Message;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 40
    iget-object v3, p0, Lcom/lzx/iteam/net/RemoveMemberMsg;->mmCallback:Landroid/os/Message;

    const/4 v4, 0x0

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 41
    iget-object v3, p0, Lcom/lzx/iteam/net/RemoveMemberMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 44
    :cond_0
    return-void

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
