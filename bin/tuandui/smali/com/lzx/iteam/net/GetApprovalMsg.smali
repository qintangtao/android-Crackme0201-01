.class public Lcom/lzx/iteam/net/GetApprovalMsg;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "GetApprovalMsg.java"


# instance fields
.field private mCallback:Landroid/os/Message;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mContext:Landroid/content/Context;

.field private mGroupId:Ljava/lang/String;

.field private mListType:I

.field private mUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Message;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "groupId"    # Ljava/lang/String;
    .param p3, "listType"    # I
    .param p4, "mUid"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mCallback:Landroid/os/Message;

    .line 31
    iput-object p2, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mGroupId:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mListType:I

    .line 33
    iput-object p4, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mUid:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mContext:Landroid/content/Context;

    .line 35
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v1, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 36
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 6
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 93
    const/4 v2, 0x0

    .line 95
    .local v2, "jData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v2    # "jData":Lorg/json/JSONObject;
    .local v3, "jData":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 103
    .end local v3    # "jData":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 104
    iget-object v4, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mCallback:Landroid/os/Message;

    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 105
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 106
    iget-object v4, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mCallback:Landroid/os/Message;

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mCallback:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 112
    :cond_1
    return-void

    .line 97
    .restart local v2    # "jData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u89e3\u6790\u5931\u8d25!"

    .line 99
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jData":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mCallback:Landroid/os/Message;

    sget-object v5, Lcom/lzx/iteam/util/Constants;->NETWORK_WRROR:Ljava/lang/String;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 97
    .restart local v3    # "jData":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jData":Lorg/json/JSONObject;
    .restart local v2    # "jData":Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 41
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v6, "mListData":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/ApprovalData;>;"
    :try_start_0
    const-string v7, "data"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 44
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string v7, "attendances"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 45
    .local v4, "jsonArray":Lorg/json/JSONArray;
    iget-object v7, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v8, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mUid:Ljava/lang/String;

    iget v9, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mListType:I

    iget-object v10, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mGroupId:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteAllApproval(Ljava/lang/String;ILjava/lang/String;)I

    .line 46
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v3, v7, :cond_1

    .line 77
    iget-object v7, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mCallback:Landroid/os/Message;

    if-eqz v7, :cond_0

    .line 78
    iget-object v7, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mCallback:Landroid/os/Message;

    const/4 v8, 0x0

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 79
    iget-object v7, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mCallback:Landroid/os/Message;

    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    iget-object v7, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mCallback:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 87
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 47
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    new-instance v1, Lcom/lzx/iteam/bean/ApprovalData;

    invoke-direct {v1}, Lcom/lzx/iteam/bean/ApprovalData;-><init>()V

    .line 48
    .local v1, "approvalData":Lcom/lzx/iteam/bean/ApprovalData;
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 49
    .local v0, "approval":Lorg/json/JSONObject;
    const-string v7, "user_id"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/lzx/iteam/bean/ApprovalData;->setUser_id(Ljava/lang/String;)V

    .line 50
    const-string v7, "user_name"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/lzx/iteam/bean/ApprovalData;->setUser_name(Ljava/lang/String;)V

    .line 51
    const-string v7, "user_image"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/lzx/iteam/bean/ApprovalData;->setUser_image(Ljava/lang/String;)V

    .line 52
    const-string v7, "_id"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_id(Ljava/lang/String;)V

    .line 53
    const-string v7, "approval_group_id"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_group_id(Ljava/lang/String;)V

    .line 54
    const-string v7, "approval_type"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_type(I)V

    .line 55
    const-string v7, "approval_leave_type"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_leave_type(I)V

    .line 56
    const-string v7, "approval_address"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 57
    const-string v7, "approval_address"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_address(Ljava/lang/String;)V

    .line 59
    :cond_2
    const-string v7, "approval_start_time"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_start_time(Ljava/lang/String;)V

    .line 60
    const-string v7, "approval_end_time"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_end_time(Ljava/lang/String;)V

    .line 61
    const-string v7, "approval_start_part"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_start_part(I)V

    .line 62
    const-string v7, "approval_end_part"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_end_part(I)V

    .line 63
    const-string v7, "approval_day"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_day(F)V

    .line 64
    const-string v7, "approval_reason"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_reason(Ljava/lang/String;)V

    .line 65
    const-string v7, "approve_admin"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/lzx/iteam/bean/ApprovalData;->setApprove_admin(Ljava/lang/String;)V

    .line 66
    const-string v7, "approve_admin_name"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/lzx/iteam/bean/ApprovalData;->setApprove_admin_name(Ljava/lang/String;)V

    .line 67
    const-string v7, "approve_admin_image"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/lzx/iteam/bean/ApprovalData;->setApprove_admin_image(Ljava/lang/String;)V

    .line 68
    const-string v7, "approval_done_time"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 69
    const-string v7, "approval_done_time"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_done_time(Ljava/lang/String;)V

    .line 71
    :cond_3
    const-string v7, "approval_time"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_time(Ljava/lang/String;)V

    .line 72
    const-string v7, "approval_status"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_status(I)V

    .line 73
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v7, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    iget v8, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mListType:I

    iget-object v9, p0, Lcom/lzx/iteam/net/GetApprovalMsg;->mUid:Ljava/lang/String;

    invoke-virtual {v7, v1, v8, v9}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertApprovalListData(Lcom/lzx/iteam/bean/ApprovalData;ILjava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 82
    .end local v0    # "approval":Lorg/json/JSONObject;
    .end local v1    # "approvalData":Lcom/lzx/iteam/bean/ApprovalData;
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "All_Exception"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "GetApprovalMsg == "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
