.class public Lcom/lzx/iteam/net/GetInviteContactMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetInviteContactMsg.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetInviteContactMsg"


# instance fields
.field private mmCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Message;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/lzx/iteam/net/GetInviteContactMsg;->mmCallback:Landroid/os/Message;

    .line 23
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 63
    const-string v4, "GetInviteContactMsg"

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

    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 66
    const/4 v2, 0x0

    .line 68
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 76
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/GetInviteContactMsg;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 77
    iget-object v4, p0, Lcom/lzx/iteam/net/GetInviteContactMsg;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 78
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 79
    iget-object v4, p0, Lcom/lzx/iteam/net/GetInviteContactMsg;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetInviteContactMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 86
    :cond_1
    return-void

    .line 70
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 72
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/GetInviteContactMsg;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 70
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
    .line 28
    :try_start_0
    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 29
    .local v2, "jsonObject":Lorg/json/JSONObject;
    new-instance v0, Lcom/lzx/iteam/bean/CloudContact;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/CloudContact;-><init>()V

    .line 30
    .local v0, "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    const-string v3, "contact_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    const-string v3, "contact_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    .line 33
    :cond_0
    const-string v3, "group_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    const-string v3, "group_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lzx/iteam/bean/CloudContact;->groupId:Ljava/lang/String;

    .line 37
    :cond_1
    const-string v3, "contact_name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 38
    const-string v3, "contact_name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lzx/iteam/bean/CloudContact;->contactName:Ljava/lang/String;

    .line 41
    :cond_2
    const-string v3, "contact_phone"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 42
    const-string v3, "contact_phone"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lzx/iteam/bean/CloudContact;->contact_phone:Ljava/lang/String;

    .line 45
    :cond_3
    iget-object v3, p0, Lcom/lzx/iteam/net/GetInviteContactMsg;->mmCallback:Landroid/os/Message;

    if-eqz v3, :cond_5

    .line 46
    const-string v3, ""

    iget-object v4, v0, Lcom/lzx/iteam/bean/CloudContact;->contact_phone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/lzx/iteam/bean/CloudContact;->contact_phone:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 47
    :cond_4
    iget-object v3, p0, Lcom/lzx/iteam/net/GetInviteContactMsg;->mmCallback:Landroid/os/Message;

    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 52
    :goto_0
    iget-object v3, p0, Lcom/lzx/iteam/net/GetInviteContactMsg;->mmCallback:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 59
    .end local v0    # "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    :goto_1
    return-void

    .line 49
    .restart local v0    # "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_6
    iget-object v3, p0, Lcom/lzx/iteam/net/GetInviteContactMsg;->mmCallback:Landroid/os/Message;

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    iget-object v3, p0, Lcom/lzx/iteam/net/GetInviteContactMsg;->mmCallback:Landroid/os/Message;

    const/4 v4, 0x0

    iput v4, v3, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    .end local v0    # "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
