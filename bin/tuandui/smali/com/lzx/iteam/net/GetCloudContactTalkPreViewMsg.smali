.class public Lcom/lzx/iteam/net/GetCloudContactTalkPreViewMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetCloudContactTalkPreViewMsg.java"


# instance fields
.field private mmCallback:Landroid/os/Message;

.field private mmContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Message;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/lzx/iteam/net/GetCloudContactTalkPreViewMsg;->mmContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/lzx/iteam/net/GetCloudContactTalkPreViewMsg;->mmCallback:Landroid/os/Message;

    .line 21
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/net/GetCloudContactTalkPreViewMsg;->mmCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/lzx/iteam/net/GetCloudContactTalkPreViewMsg;->mmCallback:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/net/GetCloudContactTalkPreViewMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 48
    :cond_0
    return-void
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    const-string v4, "data"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 28
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lt v1, v4, :cond_1

    .line 35
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetCloudContactTalkPreViewMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_0

    .line 36
    iget-object v4, p0, Lcom/lzx/iteam/net/GetCloudContactTalkPreViewMsg;->mmCallback:Landroid/os/Message;

    const/4 v5, 0x0

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 37
    iget-object v4, p0, Lcom/lzx/iteam/net/GetCloudContactTalkPreViewMsg;->mmCallback:Landroid/os/Message;

    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 38
    iget-object v4, p0, Lcom/lzx/iteam/net/GetCloudContactTalkPreViewMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 40
    :cond_0
    return-void

    .line 29
    .restart local v1    # "i":I
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
