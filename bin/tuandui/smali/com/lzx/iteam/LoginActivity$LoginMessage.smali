.class public Lcom/lzx/iteam/LoginActivity$LoginMessage;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginMessage"
.end annotation


# instance fields
.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mmCallback:Landroid/os/Message;

.field private mmContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/lzx/iteam/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/LoginActivity;Landroid/content/Context;Landroid/os/Message;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Landroid/os/Message;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/lzx/iteam/LoginActivity$LoginMessage;->this$0:Lcom/lzx/iteam/LoginActivity;

    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 284
    iput-object p3, p0, Lcom/lzx/iteam/LoginActivity$LoginMessage;->mmCallback:Landroid/os/Message;

    .line 285
    iput-object p2, p0, Lcom/lzx/iteam/LoginActivity$LoginMessage;->mmContext:Landroid/content/Context;

    .line 286
    iget-object v0, p0, Lcom/lzx/iteam/LoginActivity$LoginMessage;->mmContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/LoginActivity$LoginMessage;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 287
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 334
    const/4 v1, 0x0

    .line 335
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 336
    const/4 v2, 0x0

    .line 338
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 346
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/LoginActivity$LoginMessage;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 347
    iget-object v4, p0, Lcom/lzx/iteam/LoginActivity$LoginMessage;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 348
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 349
    iget-object v4, p0, Lcom/lzx/iteam/LoginActivity$LoginMessage;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 353
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/LoginActivity$LoginMessage;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 355
    :cond_1
    return-void

    .line 340
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 342
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 351
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/LoginActivity$LoginMessage;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 340
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 294
    :try_start_0
    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 295
    .local v0, "result":Lorg/json/JSONObject;
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v3

    const-string v4, "sid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    .line 296
    const-string v3, "user_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "useId":Ljava/lang/String;
    const-string v3, "my_useid"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "uid ===   "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    sid == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$LoginMessage;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v4, "useid"

    invoke-virtual {v3, v4, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 311
    const-string v3, "login"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RegistrationID="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lzx/iteam/LoginActivity$LoginMessage;->mmContext:Landroid/content/Context;

    invoke-static {v5}, Lcn/jpush/android/api/JPushInterface;->getRegistrationID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$LoginMessage;->this$0:Lcom/lzx/iteam/LoginActivity;

    iget-object v4, p0, Lcom/lzx/iteam/LoginActivity$LoginMessage;->mmContext:Landroid/content/Context;

    invoke-static {v4}, Lcn/jpush/android/api/JPushInterface;->getRegistrationID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lzx/iteam/LoginActivity;->setRegistrationId(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/lzx/iteam/LoginActivity;->access$8(Lcom/lzx/iteam/LoginActivity;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/net/LocalLogin;->mPhoneNum:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 315
    new-instance v1, Lcom/lzx/iteam/net/StorageData;

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/net/LocalLogin;->mPhoneNum:Ljava/lang/String;

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lcom/lzx/iteam/net/StorageData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .local v1, "storageData":Lcom/lzx/iteam/net/StorageData;
    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$LoginMessage;->mmContext:Landroid/content/Context;

    const-string v4, "key.obj"

    invoke-virtual {v1, v3, v4}, Lcom/lzx/iteam/net/StorageData;->writeIn(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v0    # "result":Lorg/json/JSONObject;
    .end local v1    # "storageData":Lcom/lzx/iteam/net/StorageData;
    .end local v2    # "useId":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$LoginMessage;->mmCallback:Landroid/os/Message;

    if-eqz v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$LoginMessage;->mmCallback:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 329
    :cond_1
    return-void

    .line 318
    .restart local v0    # "result":Lorg/json/JSONObject;
    .restart local v2    # "useId":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$LoginMessage;->mmCallback:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 319
    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$LoginMessage;->mmCallback:Landroid/os/Message;

    const/16 v4, 0x7d2

    iput v4, v3, Landroid/os/Message;->arg1:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 323
    .end local v0    # "result":Lorg/json/JSONObject;
    .end local v2    # "useId":Ljava/lang/String;
    :catch_0
    move-exception v3

    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$LoginMessage;->mmCallback:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 324
    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity$LoginMessage;->mmCallback:Landroid/os/Message;

    const/16 v4, 0x7d1

    iput v4, v3, Landroid/os/Message;->arg1:I

    goto :goto_0
.end method
