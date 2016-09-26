.class Lcom/lzx/iteam/ApprovalDetailActivity$1;
.super Landroid/os/Handler;
.source "ApprovalDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ApprovalDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ApprovalDetailActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ApprovalDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ApprovalDetailActivity$1;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    .line 97
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v5, 0x1

    .line 100
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 101
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity$1;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    # invokes: Lcom/lzx/iteam/ApprovalDetailActivity;->httpReqDlgDismiss()V
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$0(Lcom/lzx/iteam/ApprovalDetailActivity;)V

    .line 104
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_2

    .line 105
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 106
    .local v0, "action":I
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity$1;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    # getter for: Lcom/lzx/iteam/ApprovalDetailActivity;->mTvStatus:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$1(Lcom/lzx/iteam/ApprovalDetailActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u6211\u5df2\u5ba1\u6279"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    if-ne v0, v5, :cond_1

    .line 108
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity$1;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    # getter for: Lcom/lzx/iteam/ApprovalDetailActivity;->mIvStatus:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$2(Lcom/lzx/iteam/ApprovalDetailActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f02002f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity$1;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    # getter for: Lcom/lzx/iteam/ApprovalDetailActivity;->mDataList:Ljava/util/List;
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$3(Lcom/lzx/iteam/ApprovalDetailActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/ApprovalBean;

    const-string v4, "\u5df2\u540c\u610f"

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/bean/ApprovalBean;->setStatus(Ljava/lang/String;)V

    .line 114
    :goto_1
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity$1;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    # getter for: Lcom/lzx/iteam/ApprovalDetailActivity;->mDataList:Ljava/util/List;
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$3(Lcom/lzx/iteam/ApprovalDetailActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/ApprovalBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/bean/ApprovalBean;->setTime(J)V

    .line 115
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity$1;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    # getter for: Lcom/lzx/iteam/ApprovalDetailActivity;->mAdapter:Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$4(Lcom/lzx/iteam/ApprovalDetailActivity;)Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;->notifyDataSetChanged()V

    .line 116
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity$1;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    # getter for: Lcom/lzx/iteam/ApprovalDetailActivity;->mLayoutAction:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$5(Lcom/lzx/iteam/ApprovalDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity$1;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    # getter for: Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$6(Lcom/lzx/iteam/ApprovalDetailActivity;)Lcom/lzx/iteam/bean/ApprovalData;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_status(I)V

    .line 119
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity$1;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    # getter for: Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$6(Lcom/lzx/iteam/ApprovalDetailActivity;)Lcom/lzx/iteam/bean/ApprovalData;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_done_time(Ljava/lang/String;)V

    .line 120
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity$1;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    # getter for: Lcom/lzx/iteam/ApprovalDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$7(Lcom/lzx/iteam/ApprovalDetailActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v3

    const-string v4, "useid"

    const-string v5, "\uff0d1"

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "mUid":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity$1;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    # getter for: Lcom/lzx/iteam/ApprovalDetailActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$8(Lcom/lzx/iteam/ApprovalDetailActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/ApprovalDetailActivity$1;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    # getter for: Lcom/lzx/iteam/ApprovalDetailActivity;->mListType:I
    invoke-static {v4}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$9(Lcom/lzx/iteam/ApprovalDetailActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/lzx/iteam/ApprovalDetailActivity$1;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    # getter for: Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;
    invoke-static {v5}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$6(Lcom/lzx/iteam/ApprovalDetailActivity;)Lcom/lzx/iteam/bean/ApprovalData;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lcom/lzx/iteam/provider/CloudDBOperation;->upDateOneApproval(Ljava/lang/String;ILcom/lzx/iteam/bean/ApprovalData;)I

    goto/16 :goto_0

    .line 111
    .end local v1    # "mUid":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity$1;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    # getter for: Lcom/lzx/iteam/ApprovalDetailActivity;->mIvStatus:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$2(Lcom/lzx/iteam/ApprovalDetailActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f020030

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity$1;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    # getter for: Lcom/lzx/iteam/ApprovalDetailActivity;->mDataList:Ljava/util/List;
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$3(Lcom/lzx/iteam/ApprovalDetailActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/ApprovalBean;

    const-string v4, "\u5df2\u62d2\u7edd"

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/bean/ApprovalBean;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 124
    .end local v0    # "action":I
    :cond_2
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity$1;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    # getter for: Lcom/lzx/iteam/ApprovalDetailActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$10(Lcom/lzx/iteam/ApprovalDetailActivity;)Landroid/app/Activity;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 128
    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_0

    .line 129
    iget-object v4, p0, Lcom/lzx/iteam/ApprovalDetailActivity$1;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/lzx/iteam/bean/ApprovalData;

    invoke-static {v4, v3}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$11(Lcom/lzx/iteam/ApprovalDetailActivity;Lcom/lzx/iteam/bean/ApprovalData;)V

    .line 130
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity$1;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    # getter for: Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$6(Lcom/lzx/iteam/ApprovalDetailActivity;)Lcom/lzx/iteam/bean/ApprovalData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_status()I

    move-result v2

    .line 131
    .local v2, "status":I
    if-nez v2, :cond_3

    .line 132
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity$1;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$12(Lcom/lzx/iteam/ApprovalDetailActivity;I)V

    .line 136
    :goto_2
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity$1;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    # invokes: Lcom/lzx/iteam/ApprovalDetailActivity;->setData()V
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$13(Lcom/lzx/iteam/ApprovalDetailActivity;)V

    goto/16 :goto_0

    .line 134
    :cond_3
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity$1;->this$0:Lcom/lzx/iteam/ApprovalDetailActivity;

    invoke-static {v3, v5}, Lcom/lzx/iteam/ApprovalDetailActivity;->access$12(Lcom/lzx/iteam/ApprovalDetailActivity;I)V

    goto :goto_2

    .line 101
    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
