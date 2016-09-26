.class Lcom/lzx/iteam/ApprovalActivity$1;
.super Landroid/os/Handler;
.source "ApprovalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ApprovalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ApprovalActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ApprovalActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    .line 99
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 103
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_6

    .line 106
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lcom/lzx/iteam/ApprovalActivity;->access$0(Lcom/lzx/iteam/ApprovalActivity;Ljava/util/ArrayList;)V

    .line 107
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->attendanceDatas:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalActivity;->access$1(Lcom/lzx/iteam/ApprovalActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 108
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mLayoutTeam:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalActivity;->access$2(Lcom/lzx/iteam/ApprovalActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mTvNoApproval:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalActivity;->access$3(Lcom/lzx/iteam/ApprovalActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    iget-object v3, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalActivity;->access$4(Lcom/lzx/iteam/ApprovalActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v3

    const-string v4, "approval_group_id"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lzx/iteam/ApprovalActivity;->access$5(Lcom/lzx/iteam/ApprovalActivity;Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mGroupId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalActivity;->access$6(Lcom/lzx/iteam/ApprovalActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->attendanceDatas:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalActivity;->access$1(Lcom/lzx/iteam/ApprovalActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 120
    .end local v1    # "i":I
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mGroupId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalActivity;->access$6(Lcom/lzx/iteam/ApprovalActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalActivity;->access$8(Lcom/lzx/iteam/ApprovalActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v2

    if-nez v2, :cond_2

    .line 121
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->attendanceDatas:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalActivity;->access$1(Lcom/lzx/iteam/ApprovalActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/AttendanceData;

    invoke-static {v3, v2}, Lcom/lzx/iteam/ApprovalActivity;->access$7(Lcom/lzx/iteam/ApprovalActivity;Lcom/lzx/iteam/bean/AttendanceData;)V

    .line 122
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    iget-object v3, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalActivity;->access$8(Lcom/lzx/iteam/ApprovalActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lzx/iteam/ApprovalActivity;->access$5(Lcom/lzx/iteam/ApprovalActivity;Ljava/lang/String;)V

    .line 124
    :cond_2
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mTvTeam:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalActivity;->access$9(Lcom/lzx/iteam/ApprovalActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalActivity;->access$8(Lcom/lzx/iteam/ApprovalActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :goto_3
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # invokes: Lcom/lzx/iteam/ApprovalActivity;->initFragment()V
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalActivity;->access$10(Lcom/lzx/iteam/ApprovalActivity;)V

    goto/16 :goto_0

    .line 113
    .restart local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->attendanceDatas:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalActivity;->access$1(Lcom/lzx/iteam/ApprovalActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/AttendanceData;

    .line 114
    .local v0, "attendance":Lcom/lzx/iteam/bean/AttendanceData;
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mGroupId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalActivity;->access$6(Lcom/lzx/iteam/ApprovalActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 115
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    invoke-static {v2, v0}, Lcom/lzx/iteam/ApprovalActivity;->access$7(Lcom/lzx/iteam/ApprovalActivity;Lcom/lzx/iteam/bean/AttendanceData;)V

    goto :goto_2

    .line 112
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 127
    .end local v0    # "attendance":Lcom/lzx/iteam/bean/AttendanceData;
    .end local v1    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mLayoutTeam:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalActivity;->access$2(Lcom/lzx/iteam/ApprovalActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mTvNoApproval:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalActivity;->access$3(Lcom/lzx/iteam/ApprovalActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 133
    :cond_6
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity$1;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalActivity;->access$11(Lcom/lzx/iteam/ApprovalActivity;)Landroid/app/Activity;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method
