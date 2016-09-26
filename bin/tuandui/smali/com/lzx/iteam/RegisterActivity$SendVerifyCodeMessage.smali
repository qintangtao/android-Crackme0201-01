.class Lcom/lzx/iteam/RegisterActivity$SendVerifyCodeMessage;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SendVerifyCodeMessage"
.end annotation


# instance fields
.field private mmCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Message;

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/lzx/iteam/RegisterActivity$SendVerifyCodeMessage;->mmCallback:Landroid/os/Message;

    .line 232
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 256
    const/4 v2, 0x0

    .line 258
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 266
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/RegisterActivity$SendVerifyCodeMessage;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 267
    iget-object v4, p0, Lcom/lzx/iteam/RegisterActivity$SendVerifyCodeMessage;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 268
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 269
    iget-object v4, p0, Lcom/lzx/iteam/RegisterActivity$SendVerifyCodeMessage;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 273
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/RegisterActivity$SendVerifyCodeMessage;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 275
    :cond_1
    return-void

    .line 260
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 262
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 271
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/RegisterActivity$SendVerifyCodeMessage;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 260
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity$SendVerifyCodeMessage;->mmCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity$SendVerifyCodeMessage;->mmCallback:Landroid/os/Message;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 239
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity$SendVerifyCodeMessage;->mmCallback:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity$SendVerifyCodeMessage;->mmCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity$SendVerifyCodeMessage;->mmCallback:Landroid/os/Message;

    const/16 v1, 0x1f42

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 244
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity$SendVerifyCodeMessage;->mmCallback:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
