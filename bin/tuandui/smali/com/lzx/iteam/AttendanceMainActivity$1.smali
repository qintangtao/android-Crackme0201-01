.class Lcom/lzx/iteam/AttendanceMainActivity$1;
.super Landroid/os/Handler;
.source "AttendanceMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/AttendanceMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceMainActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    .line 70
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 73
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 74
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 76
    :pswitch_0
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    if-nez v13, :cond_a

    .line 77
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    invoke-static {v14, v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$0(Lcom/lzx/iteam/AttendanceMainActivity;Ljava/util/ArrayList;)V

    .line 78
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceDatas:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$1(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceDatas:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$1(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_9

    .line 79
    const-string v13, "my_receiver"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->mAction:Ljava/lang/String;
    invoke-static {v14}, Lcom/lzx/iteam/AttendanceMainActivity;->access$2(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 80
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceDatas:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$1(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_3

    .line 101
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->mIvArrow:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$8(Lcom/lzx/iteam/AttendanceMainActivity;)Landroid/widget/ImageView;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v14}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v14

    # invokes: Lcom/lzx/iteam/AttendanceMainActivity;->setAttendanceMsg(Lcom/lzx/iteam/bean/AttendanceData;)V
    invoke-static {v13, v14}, Lcom/lzx/iteam/AttendanceMainActivity;->access$9(Lcom/lzx/iteam/AttendanceMainActivity;Lcom/lzx/iteam/bean/AttendanceData;)V

    goto :goto_0

    .line 80
    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/AttendanceData;

    .line 81
    .local v3, "data":Lcom/lzx/iteam/bean/AttendanceData;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->mReceiverGroupId:Ljava/lang/String;
    invoke-static {v14}, Lcom/lzx/iteam/AttendanceMainActivity;->access$3(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->mReceiverGroupId:Ljava/lang/String;
    invoke-static {v14}, Lcom/lzx/iteam/AttendanceMainActivity;->access$3(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 82
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    invoke-static {v14, v3}, Lcom/lzx/iteam/AttendanceMainActivity;->access$4(Lcom/lzx/iteam/AttendanceMainActivity;Lcom/lzx/iteam/bean/AttendanceData;)V

    goto :goto_1

    .line 86
    .end local v3    # "data":Lcom/lzx/iteam/bean/AttendanceData;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    invoke-static {v14}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v14

    const-string v15, "attendance_group_id"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lzx/iteam/AttendanceMainActivity;->access$5(Lcom/lzx/iteam/AttendanceMainActivity;Ljava/lang/String;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->mGroupId:Ljava/lang/String;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$6(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 88
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceDatas:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$1(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v6, v13, :cond_7

    .line 96
    .end local v6    # "i":I
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->mGroupId:Ljava/lang/String;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$6(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v13

    if-nez v13, :cond_2

    .line 97
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceDatas:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$1(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/util/ArrayList;

    move-result-object v13

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lzx/iteam/bean/AttendanceData;

    invoke-static {v14, v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$4(Lcom/lzx/iteam/AttendanceMainActivity;Lcom/lzx/iteam/bean/AttendanceData;)V

    .line 98
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v14}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lzx/iteam/AttendanceMainActivity;->access$5(Lcom/lzx/iteam/AttendanceMainActivity;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 89
    .restart local v6    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceDatas:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$1(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/AttendanceData;

    .line 90
    .local v2, "attendance":Lcom/lzx/iteam/bean/AttendanceData;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->mGroupId:Ljava/lang/String;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$6(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 91
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    invoke-static {v13, v2}, Lcom/lzx/iteam/AttendanceMainActivity;->access$4(Lcom/lzx/iteam/AttendanceMainActivity;Lcom/lzx/iteam/bean/AttendanceData;)V

    goto :goto_4

    .line 88
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 104
    .end local v2    # "attendance":Lcom/lzx/iteam/bean/AttendanceData;
    .end local v6    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->mIvArrow:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$8(Lcom/lzx/iteam/AttendanceMainActivity;)Landroid/widget/ImageView;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->mIvSignIn:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$10(Lcom/lzx/iteam/AttendanceMainActivity;)Landroid/widget/ImageView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    invoke-virtual {v14}, Lcom/lzx/iteam/AttendanceMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0202f8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->mIvSignOut:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$11(Lcom/lzx/iteam/AttendanceMainActivity;)Landroid/widget/ImageView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    invoke-virtual {v14}, Lcom/lzx/iteam/AttendanceMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0202fa

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 109
    :cond_a
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/16 v14, 0x1f41

    if-ne v13, v14, :cond_b

    .line 110
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    const v14, 0x7f080042

    .line 111
    const/4 v15, 0x1

    .line 110
    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    .line 111
    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 113
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 114
    const/4 v15, 0x1

    .line 113
    invoke-static {v14, v13, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    .line 114
    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 119
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # invokes: Lcom/lzx/iteam/AttendanceMainActivity;->waitDlgDismiss()V
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$12(Lcom/lzx/iteam/AttendanceMainActivity;)V

    .line 120
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    if-nez v13, :cond_f

    .line 121
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    .line 122
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->mIvSignIn:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$10(Lcom/lzx/iteam/AttendanceMainActivity;)Landroid/widget/ImageView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    invoke-virtual {v14}, Lcom/lzx/iteam/AttendanceMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0202f8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceDatas:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$1(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v14}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 124
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/lzx/iteam/bean/AttendanceData;->setSignInTime(Ljava/lang/String;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v13

    const-string v14, "1"

    invoke-virtual {v13, v14}, Lcom/lzx/iteam/bean/AttendanceData;->setSignIn(Ljava/lang/String;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceDatas:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$1(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v14}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->mTvSignIn:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$13(Lcom/lzx/iteam/AttendanceMainActivity;)Landroid/widget/TextView;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/lzx/iteam/util/DateUtil;->getHourAndMin(J)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "\u5df2\u7b7e\u5230"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lzx/iteam/bean/AttendanceData;->getStartWorkTime()Ljava/lang/String;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 130
    .local v11, "startWorkHour":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lzx/iteam/bean/AttendanceData;->getStartWorkTime()Ljava/lang/String;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 132
    .local v12, "startWorkMinute":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lzx/iteam/bean/AttendanceData;->getSignInTime()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-static {v14, v15}, Lcom/lzx/iteam/util/DateUtil;->getHour(J)I

    move-result v7

    .line 133
    .local v7, "signInHour":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lzx/iteam/bean/AttendanceData;->getSignInTime()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-static {v14, v15}, Lcom/lzx/iteam/util/DateUtil;->getMinute(J)I

    move-result v8

    .line 135
    .local v8, "signInMinute":I
    if-gt v7, v11, :cond_c

    if-ne v7, v11, :cond_0

    if-le v8, v12, :cond_0

    .line 136
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->mTvSignIn:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$13(Lcom/lzx/iteam/AttendanceMainActivity;)Landroid/widget/TextView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    invoke-virtual {v14}, Lcom/lzx/iteam/AttendanceMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a000e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 139
    .end local v7    # "signInHour":I
    .end local v8    # "signInMinute":I
    .end local v11    # "startWorkHour":I
    .end local v12    # "startWorkMinute":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->mIvSignOut:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$11(Lcom/lzx/iteam/AttendanceMainActivity;)Landroid/widget/ImageView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    invoke-virtual {v14}, Lcom/lzx/iteam/AttendanceMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0202fa

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceDatas:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$1(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v14}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 141
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/lzx/iteam/bean/AttendanceData;->setSignOutTime(Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v13

    const-string v14, "1"

    invoke-virtual {v13, v14}, Lcom/lzx/iteam/bean/AttendanceData;->setSignOut(Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceDatas:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$1(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v14}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->mTvSignOut:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$14(Lcom/lzx/iteam/AttendanceMainActivity;)Landroid/widget/TextView;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/lzx/iteam/util/DateUtil;->getHourAndMin(J)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "\u5df2\u7b7e\u9000"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lzx/iteam/bean/AttendanceData;->getEndWorkTime()Ljava/lang/String;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 147
    .local v4, "endWorkHour":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lzx/iteam/bean/AttendanceData;->getEndWorkTime()Ljava/lang/String;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 149
    .local v5, "endWorkMinute":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lzx/iteam/bean/AttendanceData;->getSignOutTime()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-static {v14, v15}, Lcom/lzx/iteam/util/DateUtil;->getHour(J)I

    move-result v9

    .line 150
    .local v9, "signOutHour":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lzx/iteam/bean/AttendanceData;->getSignOutTime()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-static {v14, v15}, Lcom/lzx/iteam/util/DateUtil;->getMinute(J)I

    move-result v10

    .line 152
    .local v10, "signOutMinute":I
    if-lt v9, v4, :cond_e

    if-ne v9, v4, :cond_0

    if-ge v10, v5, :cond_0

    .line 153
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->mTvSignOut:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/lzx/iteam/AttendanceMainActivity;->access$14(Lcom/lzx/iteam/AttendanceMainActivity;)Landroid/widget/TextView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    invoke-virtual {v14}, Lcom/lzx/iteam/AttendanceMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a000e

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 157
    .end local v4    # "endWorkHour":I
    .end local v5    # "endWorkMinute":I
    .end local v9    # "signOutHour":I
    .end local v10    # "signOutMinute":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/AttendanceMainActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    const/4 v15, 0x1

    invoke-static {v14, v13, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
