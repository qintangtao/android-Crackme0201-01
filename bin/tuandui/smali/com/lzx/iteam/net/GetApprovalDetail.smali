.class public Lcom/lzx/iteam/net/GetApprovalDetail;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetApprovalDetail.java"


# instance fields
.field private mCallback:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/Message;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/lzx/iteam/net/GetApprovalDetail;->mCallback:Landroid/os/Message;

    .line 24
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 73
    const/4 v2, 0x0

    .line 75
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 83
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/GetApprovalDetail;->mCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 84
    iget-object v4, p0, Lcom/lzx/iteam/net/GetApprovalDetail;->mCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 85
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 86
    iget-object v4, p0, Lcom/lzx/iteam/net/GetApprovalDetail;->mCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetApprovalDetail;->mCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 92
    :cond_1
    return-void

    .line 77
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 79
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/GetApprovalDetail;->mCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 77
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
    .line 30
    :try_start_0
    const-string v4, "data"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 31
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "approval"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 32
    .local v0, "approval":Lorg/json/JSONObject;
    new-instance v1, Lcom/lzx/iteam/bean/ApprovalData;

    invoke-direct {v1}, Lcom/lzx/iteam/bean/ApprovalData;-><init>()V

    .line 33
    .local v1, "approvalData":Lcom/lzx/iteam/bean/ApprovalData;
    const-string v4, "user_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lzx/iteam/bean/ApprovalData;->setUser_id(Ljava/lang/String;)V

    .line 34
    const-string v4, "user_name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lzx/iteam/bean/ApprovalData;->setUser_name(Ljava/lang/String;)V

    .line 35
    const-string v4, "user_image"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lzx/iteam/bean/ApprovalData;->setUser_image(Ljava/lang/String;)V

    .line 36
    const-string v4, "_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_id(Ljava/lang/String;)V

    .line 37
    const-string v4, "approval_group_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_group_id(Ljava/lang/String;)V

    .line 38
    const-string v4, "approval_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_type(I)V

    .line 39
    const-string v4, "approval_leave_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_leave_type(I)V

    .line 40
    const-string v4, "approval_address"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    const-string v4, "approval_address"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_address(Ljava/lang/String;)V

    .line 43
    :cond_0
    const-string v4, "approval_start_time"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_start_time(Ljava/lang/String;)V

    .line 44
    const-string v4, "approval_end_time"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_end_time(Ljava/lang/String;)V

    .line 45
    const-string v4, "approval_start_part"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_start_part(I)V

    .line 46
    const-string v4, "approval_end_part"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_end_part(I)V

    .line 47
    const-string v4, "approval_day"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_day(F)V

    .line 48
    const-string v4, "approval_reason"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_reason(Ljava/lang/String;)V

    .line 49
    const-string v4, "approve_admin"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lzx/iteam/bean/ApprovalData;->setApprove_admin(Ljava/lang/String;)V

    .line 50
    const-string v4, "approve_admin_name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lzx/iteam/bean/ApprovalData;->setApprove_admin_name(Ljava/lang/String;)V

    .line 51
    const-string v4, "approve_admin_image"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lzx/iteam/bean/ApprovalData;->setApprove_admin_image(Ljava/lang/String;)V

    .line 52
    const-string v4, "approval_done_time"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    const-string v4, "approval_done_time"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_done_time(Ljava/lang/String;)V

    .line 55
    :cond_1
    const-string v4, "approval_time"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_time(Ljava/lang/String;)V

    .line 56
    const-string v4, "approval_status"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_status(I)V

    .line 57
    iget-object v4, p0, Lcom/lzx/iteam/net/GetApprovalDetail;->mCallback:Landroid/os/Message;

    if-eqz v4, :cond_2

    .line 58
    iget-object v4, p0, Lcom/lzx/iteam/net/GetApprovalDetail;->mCallback:Landroid/os/Message;

    const/4 v5, 0x0

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 59
    iget-object v4, p0, Lcom/lzx/iteam/net/GetApprovalDetail;->mCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 60
    iget-object v4, p0, Lcom/lzx/iteam/net/GetApprovalDetail;->mCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "approval":Lorg/json/JSONObject;
    .end local v1    # "approvalData":Lcom/lzx/iteam/bean/ApprovalData;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "All_Exception"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GetApprovalMsg == "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
