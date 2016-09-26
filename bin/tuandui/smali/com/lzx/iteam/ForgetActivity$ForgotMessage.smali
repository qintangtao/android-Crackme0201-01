.class Lcom/lzx/iteam/ForgetActivity$ForgotMessage;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "ForgetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ForgetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ForgotMessage"
.end annotation


# instance fields
.field private mmCallback:Landroid/os/Message;

.field private mmContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/lzx/iteam/ForgetActivity;

.field private useId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/ForgetActivity;Landroid/content/Context;Landroid/os/Message;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Landroid/os/Message;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->this$0:Lcom/lzx/iteam/ForgetActivity;

    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 415
    iput-object p3, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->mmCallback:Landroid/os/Message;

    .line 416
    iput-object p2, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->mmContext:Landroid/content/Context;

    .line 417
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 466
    const/4 v1, 0x0

    .line 467
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 468
    const/4 v2, 0x0

    .line 470
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 478
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 479
    iget-object v4, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 480
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 481
    iget-object v4, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 485
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 487
    :cond_1
    return-void

    .line 472
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 474
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 483
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 472
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
    const/16 v6, 0x3eb

    .line 423
    :try_start_0
    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 424
    .local v1, "result":Lorg/json/JSONObject;
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v3

    const-string v4, "sid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    .line 425
    const-string v3, "user_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->useId:Ljava/lang/String;

    .line 426
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->this$0:Lcom/lzx/iteam/ForgetActivity;

    # getter for: Lcom/lzx/iteam/ForgetActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v3}, Lcom/lzx/iteam/ForgetActivity;->access$3(Lcom/lzx/iteam/ForgetActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v3

    const-string v4, "useid"

    iget-object v5, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->useId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 439
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->this$0:Lcom/lzx/iteam/ForgetActivity;

    iget-object v4, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->mmContext:Landroid/content/Context;

    invoke-static {v4}, Lcn/jpush/android/api/JPushInterface;->getRegistrationID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lzx/iteam/ForgetActivity;->setRegistrationId(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/lzx/iteam/ForgetActivity;->access$8(Lcom/lzx/iteam/ForgetActivity;Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 443
    new-instance v2, Lcom/lzx/iteam/net/StorageData;

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/net/LocalLogin;->mPhoneNum:Ljava/lang/String;

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/lzx/iteam/net/StorageData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .local v2, "storageData":Lcom/lzx/iteam/net/StorageData;
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->mmContext:Landroid/content/Context;

    const-string v4, "key.obj"

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/net/StorageData;->writeIn(Landroid/content/Context;Ljava/lang/String;)V

    .line 445
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->this$0:Lcom/lzx/iteam/ForgetActivity;

    # getter for: Lcom/lzx/iteam/ForgetActivity;->loginer:Lcom/lzx/iteam/net/LocalLogin;
    invoke-static {v3}, Lcom/lzx/iteam/ForgetActivity;->access$9(Lcom/lzx/iteam/ForgetActivity;)Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->this$0:Lcom/lzx/iteam/ForgetActivity;

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/net/LocalLogin;->login(Landroid/content/Context;)Z

    .line 446
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->mmCallback:Landroid/os/Message;

    const/4 v4, 0x0

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 450
    .end local v2    # "storageData":Lcom/lzx/iteam/net/StorageData;
    :goto_0
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->mmCallback:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 451
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->mmCallback:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 461
    .end local v1    # "result":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 448
    .restart local v1    # "result":Lorg/json/JSONObject;
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->mmCallback:Landroid/os/Message;

    const/16 v4, 0x3eb

    iput v4, v3, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    .end local v1    # "result":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "ForgetActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MobileActiveMessage: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->mmCallback:Landroid/os/Message;

    if-eqz v3, :cond_2

    .line 456
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->mmCallback:Landroid/os/Message;

    iput v6, v3, Landroid/os/Message;->arg1:I

    .line 457
    :cond_2
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->mmCallback:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 458
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->mmCallback:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method
