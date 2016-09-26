.class Lcom/lzx/iteam/MainActivity$NameCardMessage;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NameCardMessage"
.end annotation


# instance fields
.field private mmCallback:Landroid/os/Message;

.field final synthetic this$0:Lcom/lzx/iteam/MainActivity;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/MainActivity;Landroid/os/Message;)V
    .locals 0
    .param p2, "callback"    # Landroid/os/Message;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/lzx/iteam/MainActivity$NameCardMessage;->this$0:Lcom/lzx/iteam/MainActivity;

    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 504
    iput-object p2, p0, Lcom/lzx/iteam/MainActivity$NameCardMessage;->mmCallback:Landroid/os/Message;

    .line 505
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 541
    const/4 v1, 0x0

    .line 542
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 543
    const/4 v2, 0x0

    .line 545
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 553
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/MainActivity$NameCardMessage;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 554
    iget-object v4, p0, Lcom/lzx/iteam/MainActivity$NameCardMessage;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 555
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 556
    iget-object v4, p0, Lcom/lzx/iteam/MainActivity$NameCardMessage;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 560
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/MainActivity$NameCardMessage;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 562
    :cond_1
    return-void

    .line 547
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 549
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 558
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/MainActivity$NameCardMessage;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 547
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
    .line 510
    :try_start_0
    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 512
    .local v2, "obj":Lorg/json/JSONObject;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .local v0, "cardData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    const-string v3, "landline"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 517
    const-string v3, "landline"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    :goto_0
    const-string v3, "company"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    const-string v3, "job"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    const-string v3, "email"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    const-string v3, "address"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    const-string v3, "avatar"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    const-string v3, "sex"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v3, p0, Lcom/lzx/iteam/MainActivity$NameCardMessage;->this$0:Lcom/lzx/iteam/MainActivity;

    # getter for: Lcom/lzx/iteam/MainActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v3}, Lcom/lzx/iteam/MainActivity;->access$2(Lcom/lzx/iteam/MainActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v3

    const-string v4, "contact_name_card"

    invoke-virtual {v3, v4, v0}, Lcom/lzx/iteam/util/PreferenceUtil;->saveCloudContact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 528
    iget-object v3, p0, Lcom/lzx/iteam/MainActivity$NameCardMessage;->this$0:Lcom/lzx/iteam/MainActivity;

    # getter for: Lcom/lzx/iteam/MainActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v3}, Lcom/lzx/iteam/MainActivity;->access$2(Lcom/lzx/iteam/MainActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v3

    const-string v4, "avatar"

    const-string v5, "avatar"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .end local v0    # "cardData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "obj":Lorg/json/JSONObject;
    :goto_1
    iget-object v3, p0, Lcom/lzx/iteam/MainActivity$NameCardMessage;->mmCallback:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 534
    iget-object v3, p0, Lcom/lzx/iteam/MainActivity$NameCardMessage;->mmCallback:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 537
    :cond_0
    return-void

    .line 519
    .restart local v0    # "cardData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 530
    .end local v0    # "cardData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 531
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
