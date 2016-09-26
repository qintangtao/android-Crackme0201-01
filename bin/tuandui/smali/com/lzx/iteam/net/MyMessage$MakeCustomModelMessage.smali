.class public Lcom/lzx/iteam/net/MyMessage$MakeCustomModelMessage;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "MyMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/net/MyMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MakeCustomModelMessage"
.end annotation


# instance fields
.field private mmCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .locals 0
    .param p1, "mmCallback"    # Landroid/os/Message;

    .prologue
    .line 572
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 573
    iput-object p1, p0, Lcom/lzx/iteam/net/MyMessage$MakeCustomModelMessage;->mmCallback:Landroid/os/Message;

    .line 574
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 596
    const/4 v1, 0x0

    .line 597
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 598
    const/4 v2, 0x0

    .line 600
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 608
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/MyMessage$MakeCustomModelMessage;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 609
    iget-object v4, p0, Lcom/lzx/iteam/net/MyMessage$MakeCustomModelMessage;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 610
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 611
    iget-object v4, p0, Lcom/lzx/iteam/net/MyMessage$MakeCustomModelMessage;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 615
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/MyMessage$MakeCustomModelMessage;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 617
    :cond_1
    return-void

    .line 602
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 604
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 613
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/MyMessage$MakeCustomModelMessage;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 602
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 578
    const/4 v1, 0x0

    .line 580
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 586
    :goto_0
    iget-object v2, p0, Lcom/lzx/iteam/net/MyMessage$MakeCustomModelMessage;->mmCallback:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 587
    iget-object v2, p0, Lcom/lzx/iteam/net/MyMessage$MakeCustomModelMessage;->mmCallback:Landroid/os/Message;

    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 588
    iget-object v2, p0, Lcom/lzx/iteam/net/MyMessage$MakeCustomModelMessage;->mmCallback:Landroid/os/Message;

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 589
    iget-object v2, p0, Lcom/lzx/iteam/net/MyMessage$MakeCustomModelMessage;->mmCallback:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 592
    :cond_0
    return-void

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
