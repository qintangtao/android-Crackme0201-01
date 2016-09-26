.class Lcom/lzx/iteam/ApprovalFragment$1;
.super Landroid/os/Handler;
.source "ApprovalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ApprovalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ApprovalFragment;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ApprovalFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    .line 60
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_2

    .line 67
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/lzx/iteam/ApprovalFragment;->access$0(Lcom/lzx/iteam/ApprovalFragment;Ljava/util/ArrayList;)V

    .line 68
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mListData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalFragment;->access$1(Lcom/lzx/iteam/ApprovalFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mLayoutNull:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalFragment;->access$2(Lcom/lzx/iteam/ApprovalFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalFragment;->access$3(Lcom/lzx/iteam/ApprovalFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 75
    :goto_1
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mListType:I
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalFragment;->access$4(Lcom/lzx/iteam/ApprovalFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalFragment;->access$5(Lcom/lzx/iteam/ApprovalFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/ApprovalActivity;

    iget-object v1, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mListData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/ApprovalFragment;->access$1(Lcom/lzx/iteam/ApprovalFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/ApprovalActivity;->setNewMsg(I)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mAdapter:Lcom/lzx/iteam/adapter/ApprovalDataAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalFragment;->access$6(Lcom/lzx/iteam/ApprovalFragment;)Lcom/lzx/iteam/adapter/ApprovalDataAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mListData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/ApprovalFragment;->access$1(Lcom/lzx/iteam/ApprovalFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->bindData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mLayoutNull:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalFragment;->access$2(Lcom/lzx/iteam/ApprovalFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalFragment;->access$3(Lcom/lzx/iteam/ApprovalFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalFragment;->access$5(Lcom/lzx/iteam/ApprovalFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # invokes: Lcom/lzx/iteam/ApprovalFragment;->httpReqDlgDismiss()V
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalFragment;->access$7(Lcom/lzx/iteam/ApprovalFragment;)V

    .line 85
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalFragment;->access$5(Lcom/lzx/iteam/ApprovalFragment;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u5220\u9664\u6210\u529f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 87
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalFragment;->access$8(Lcom/lzx/iteam/ApprovalFragment;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v1

    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mUid:Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalFragment;->access$9(Lcom/lzx/iteam/ApprovalFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mListType:I
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalFragment;->access$4(Lcom/lzx/iteam/ApprovalFragment;)I

    move-result v3

    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mGroupId:Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalFragment;->access$10(Lcom/lzx/iteam/ApprovalFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mListData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalFragment;->access$1(Lcom/lzx/iteam/ApprovalFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v5, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mPosition:I
    invoke-static {v5}, Lcom/lzx/iteam/ApprovalFragment;->access$11(Lcom/lzx/iteam/ApprovalFragment;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteOneApproval(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mListData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalFragment;->access$1(Lcom/lzx/iteam/ApprovalFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mPosition:I
    invoke-static {v1}, Lcom/lzx/iteam/ApprovalFragment;->access$11(Lcom/lzx/iteam/ApprovalFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mAdapter:Lcom/lzx/iteam/adapter/ApprovalDataAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalFragment;->access$6(Lcom/lzx/iteam/ApprovalFragment;)Lcom/lzx/iteam/adapter/ApprovalDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment$1;->this$0:Lcom/lzx/iteam/ApprovalFragment;

    # getter for: Lcom/lzx/iteam/ApprovalFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalFragment;->access$5(Lcom/lzx/iteam/ApprovalFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
