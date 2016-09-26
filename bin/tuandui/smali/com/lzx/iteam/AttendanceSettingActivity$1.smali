.class Lcom/lzx/iteam/AttendanceSettingActivity$1;
.super Landroid/os/Handler;
.source "AttendanceSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/AttendanceSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceSettingActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceSettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    .line 71
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 75
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-nez v11, :cond_0

    .line 78
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lzx/iteam/bean/AttendanceData;

    .line 79
    .local v0, "attendanceData1":Lcom/lzx/iteam/bean/AttendanceData;
    iget-object v11, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v11}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$0(Lcom/lzx/iteam/AttendanceSettingActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v11

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceData;->get_id()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/lzx/iteam/bean/AttendanceData;->set_id(Ljava/lang/String;)V

    .line 80
    new-instance v5, Landroid/content/Intent;

    iget-object v11, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    const-class v12, Lcom/lzx/iteam/AttendanceCreateActivity;

    invoke-direct {v5, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v5, "intent":Landroid/content/Intent;
    const-string v11, "group_id"

    iget-object v12, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v12}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$0(Lcom/lzx/iteam/AttendanceSettingActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v11, "group_name"

    iget-object v12, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mGroupName:Ljava/lang/String;
    invoke-static {v12}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$1(Lcom/lzx/iteam/AttendanceSettingActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v11, "user_type"

    iget-object v12, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mUserType:Ljava/lang/String;
    invoke-static {v12}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$2(Lcom/lzx/iteam/AttendanceSettingActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v11, "contact_id"

    iget-object v12, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mContactId:Ljava/lang/String;
    invoke-static {v12}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$3(Lcom/lzx/iteam/AttendanceSettingActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const/high16 v11, 0x4000000

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    iget-object v11, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    invoke-virtual {v11, v5}, Lcom/lzx/iteam/AttendanceSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    iget-object v11, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    invoke-virtual {v11}, Lcom/lzx/iteam/AttendanceSettingActivity;->finish()V

    goto :goto_0

    .line 88
    .end local v0    # "attendanceData1":Lcom/lzx/iteam/bean/AttendanceData;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_0
    iget v11, p1, Landroid/os/Message;->arg1:I

    const/16 v12, 0x1389

    if-ne v11, v12, :cond_1

    .line 89
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/util/HashMap;

    .line 90
    .local v10, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "msg"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    .local v2, "backMsg":Ljava/lang/String;
    const-string v11, "data"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    .local v1, "backData":Ljava/lang/String;
    iget-object v11, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    invoke-virtual {v11, v2, v1}, Lcom/lzx/iteam/AttendanceSettingActivity;->showNoticeDlg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v1    # "backData":Ljava/lang/String;
    .end local v2    # "backMsg":Ljava/lang/String;
    .end local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v12, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v12, v11, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 109
    :pswitch_1
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-nez v11, :cond_2

    .line 110
    new-instance v5, Landroid/content/Intent;

    iget-object v11, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    const-class v12, Lcom/lzx/iteam/AttendanceCreateActivity;

    invoke-direct {v5, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v11, "group_id"

    iget-object v12, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v12}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$0(Lcom/lzx/iteam/AttendanceSettingActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v11, "group_name"

    iget-object v12, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mGroupName:Ljava/lang/String;
    invoke-static {v12}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$1(Lcom/lzx/iteam/AttendanceSettingActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v11, "user_type"

    iget-object v12, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mUserType:Ljava/lang/String;
    invoke-static {v12}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$2(Lcom/lzx/iteam/AttendanceSettingActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v11, "contact_id"

    iget-object v12, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mContactId:Ljava/lang/String;
    invoke-static {v12}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$3(Lcom/lzx/iteam/AttendanceSettingActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const/high16 v11, 0x4000000

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    iget-object v11, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    invoke-virtual {v11, v5}, Lcom/lzx/iteam/AttendanceSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    iget-object v11, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    invoke-virtual {v11}, Lcom/lzx/iteam/AttendanceSettingActivity;->finish()V

    goto/16 :goto_0

    .line 118
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_2
    iget v11, p1, Landroid/os/Message;->arg1:I

    const/16 v12, 0x1389

    if-ne v11, v12, :cond_3

    .line 119
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/util/HashMap;

    .line 120
    .restart local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "msg"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 121
    .restart local v2    # "backMsg":Ljava/lang/String;
    const-string v11, "data"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 122
    .restart local v1    # "backData":Ljava/lang/String;
    iget-object v11, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    invoke-virtual {v11, v2, v1}, Lcom/lzx/iteam/AttendanceSettingActivity;->showNoticeDlg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    .end local v1    # "backData":Ljava/lang/String;
    .end local v2    # "backMsg":Ljava/lang/String;
    .end local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v12, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v12, v11, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 129
    :pswitch_2
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-nez v11, :cond_6

    .line 130
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 131
    .local v3, "backResult":I
    const/4 v11, 0x1

    if-ne v3, v11, :cond_5

    .line 132
    iget-object v11, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mType:Z
    invoke-static {v11}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$4(Lcom/lzx/iteam/AttendanceSettingActivity;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 133
    iget-object v11, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # invokes: Lcom/lzx/iteam/AttendanceSettingActivity;->addAttendanceMsg()V
    invoke-static {v11}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$5(Lcom/lzx/iteam/AttendanceSettingActivity;)V

    goto/16 :goto_0

    .line 135
    :cond_4
    iget-object v11, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # invokes: Lcom/lzx/iteam/AttendanceSettingActivity;->updateAttendanceMsg()V
    invoke-static {v11}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$6(Lcom/lzx/iteam/AttendanceSettingActivity;)V

    goto/16 :goto_0

    .line 146
    :cond_5
    iget-object v11, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    const-string v12, "\u5220\u9664\u5931\u8d25,\u8bf7\u91cd\u65b0\u64cd\u4f5c"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 149
    .end local v3    # "backResult":I
    :cond_6
    iget-object v12, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v12, v11, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 153
    :pswitch_3
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-nez v11, :cond_8

    .line 154
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    .line 155
    .local v9, "managers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ScheduleManager;>;"
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 156
    .local v6, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_7

    .line 168
    iget-object v11, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$7(Lcom/lzx/iteam/AttendanceSettingActivity;Ljava/lang/String;)V

    .line 169
    iget-object v11, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$8(Lcom/lzx/iteam/AttendanceSettingActivity;Ljava/lang/String;)V

    .line 170
    iget-object v11, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v11}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$0(Lcom/lzx/iteam/AttendanceSettingActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v11

    iget-object v12, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mMember:Ljava/lang/String;
    invoke-static {v12}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$9(Lcom/lzx/iteam/AttendanceSettingActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/lzx/iteam/bean/AttendanceData;->setMembers(Ljava/lang/String;)V

    .line 171
    iget-object v11, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v11}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$0(Lcom/lzx/iteam/AttendanceSettingActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v11

    iget-object v12, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mMemberCount:Ljava/lang/String;
    invoke-static {v12}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$10(Lcom/lzx/iteam/AttendanceSettingActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/lzx/iteam/bean/AttendanceData;->setMemberCount(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lzx/iteam/bean/ScheduleManager;

    .line 157
    .local v8, "manager":Lcom/lzx/iteam/bean/ScheduleManager;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 159
    .local v7, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v12, "contact_name"

    invoke-virtual {v8}, Lcom/lzx/iteam/bean/ScheduleManager;->getUserName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v12, "user_id"

    invoke-virtual {v8}, Lcom/lzx/iteam/bean/ScheduleManager;->getUserId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v12, "user_image"

    invoke-virtual {v8}, Lcom/lzx/iteam/bean/ScheduleManager;->getAvatar()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 163
    :catch_0
    move-exception v4

    .line 164
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 173
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "manager":Lcom/lzx/iteam/bean/ScheduleManager;
    .end local v9    # "managers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ScheduleManager;>;"
    :cond_8
    iget-object v12, p0, Lcom/lzx/iteam/AttendanceSettingActivity$1;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v12, v11, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
