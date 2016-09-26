.class public Lcom/lzx/iteam/net/GetCloudContactAuthMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetCloudContactAuthMsg.java"


# instance fields
.field private mmCallback:Landroid/os/Message;

.field private mmContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Message;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/lzx/iteam/net/GetCloudContactAuthMsg;->mmContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/lzx/iteam/net/GetCloudContactAuthMsg;->mmCallback:Landroid/os/Message;

    .line 27
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lzx/iteam/net/GetCloudContactAuthMsg;->mmCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/lzx/iteam/net/GetCloudContactAuthMsg;->mmCallback:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 57
    iget-object v0, p0, Lcom/lzx/iteam/net/GetCloudContactAuthMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 59
    :cond_0
    return-void
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 34
    .local v2, "object":Lorg/json/JSONObject;
    const-string v3, "access"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    const-string v3, "access"

    const-string v4, "access"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    const-string v3, "shield"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 38
    const-string v3, "shield"

    const-string v4, "shield"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_1
    const-string v3, "set_type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    const-string v3, "set_type"

    const-string v4, "set_type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v2    # "object":Lorg/json/JSONObject;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/lzx/iteam/net/GetCloudContactAuthMsg;->mmCallback:Landroid/os/Message;

    if-eqz v3, :cond_3

    .line 47
    iget-object v3, p0, Lcom/lzx/iteam/net/GetCloudContactAuthMsg;->mmCallback:Landroid/os/Message;

    const/4 v4, 0x0

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 48
    iget-object v3, p0, Lcom/lzx/iteam/net/GetCloudContactAuthMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 49
    iget-object v3, p0, Lcom/lzx/iteam/net/GetCloudContactAuthMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 51
    :cond_3
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
