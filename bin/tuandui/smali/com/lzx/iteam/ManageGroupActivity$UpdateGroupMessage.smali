.class Lcom/lzx/iteam/ManageGroupActivity$UpdateGroupMessage;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "ManageGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ManageGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateGroupMessage"
.end annotation


# instance fields
.field private mmCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Message;

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 666
    iput-object p1, p0, Lcom/lzx/iteam/ManageGroupActivity$UpdateGroupMessage;->mmCallback:Landroid/os/Message;

    .line 667
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 688
    const/4 v1, 0x0

    .line 689
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 690
    const/4 v2, 0x0

    .line 692
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 699
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity$UpdateGroupMessage;->mmCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 700
    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity$UpdateGroupMessage;->mmCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 701
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 702
    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity$UpdateGroupMessage;->mmCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 706
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity$UpdateGroupMessage;->mmCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 708
    :cond_1
    return-void

    .line 694
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 696
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 704
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/ManageGroupActivity$UpdateGroupMessage;->mmCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 694
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
    .line 672
    :try_start_0
    const-string v6, "data"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 673
    .local v1, "groupData":Lorg/json/JSONObject;
    const-string v6, "group_name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 674
    .local v3, "groupName":Ljava/lang/String;
    const-string v6, "group_type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 675
    .local v4, "groypType":Ljava/lang/String;
    const-string v6, "group_img"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 676
    .local v2, "groupImg":Ljava/lang/String;
    new-instance v5, Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;

    invoke-direct {v5, v3, v4, v2}, Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    .local v5, "info":Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;
    iget-object v6, p0, Lcom/lzx/iteam/ManageGroupActivity$UpdateGroupMessage;->mmCallback:Landroid/os/Message;

    if-eqz v6, :cond_0

    .line 678
    iget-object v6, p0, Lcom/lzx/iteam/ManageGroupActivity$UpdateGroupMessage;->mmCallback:Landroid/os/Message;

    iput-object v5, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 679
    iget-object v6, p0, Lcom/lzx/iteam/ManageGroupActivity$UpdateGroupMessage;->mmCallback:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    .end local v1    # "groupData":Lorg/json/JSONObject;
    .end local v2    # "groupImg":Ljava/lang/String;
    .end local v3    # "groupName":Ljava/lang/String;
    .end local v4    # "groypType":Ljava/lang/String;
    .end local v5    # "info":Lcom/lzx/iteam/ManageGroupActivity$GroupInfo;
    :cond_0
    :goto_0
    return-void

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
