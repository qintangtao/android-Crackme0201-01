.class Lcom/lzx/iteam/AttendanceDevicesActivity$1;
.super Landroid/os/Handler;
.source "AttendanceDevicesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/AttendanceDevicesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceDevicesActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 50
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 51
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_4

    .line 54
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Lcom/lzx/iteam/AttendanceDevicesActivity;->access$0(Lcom/lzx/iteam/AttendanceDevicesActivity;I)V

    .line 55
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDevicesActivity;->deviceMsgDatas:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceDevicesActivity;->access$1(Lcom/lzx/iteam/AttendanceDevicesActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 56
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 57
    .local v1, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/DeviceMsgData;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDevicesActivity;->isOpen:I
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceDevicesActivity;->access$6(Lcom/lzx/iteam/AttendanceDevicesActivity;)I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 68
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvCurDeviceBind:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceDevicesActivity;->access$7(Lcom/lzx/iteam/AttendanceDevicesActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    invoke-virtual {v3}, Lcom/lzx/iteam/AttendanceDevicesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    :goto_2
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDevicesActivity;->deviceMsgDatas:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceDevicesActivity;->access$1(Lcom/lzx/iteam/AttendanceDevicesActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 74
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    new-instance v3, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    iget-object v5, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDevicesActivity;->isOpen:I
    invoke-static {v5}, Lcom/lzx/iteam/AttendanceDevicesActivity;->access$6(Lcom/lzx/iteam/AttendanceDevicesActivity;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;-><init>(Landroid/content/Context;I)V

    invoke-static {v2, v3}, Lcom/lzx/iteam/AttendanceDevicesActivity;->access$8(Lcom/lzx/iteam/AttendanceDevicesActivity;Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;)V

    .line 75
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDevicesActivity;->mLvHistoryDeviceList:Lcom/lzx/iteam/widget/MyListView;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceDevicesActivity;->access$9(Lcom/lzx/iteam/AttendanceDevicesActivity;)Lcom/lzx/iteam/widget/MyListView;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDevicesActivity;->mAdapter:Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;
    invoke-static {v3}, Lcom/lzx/iteam/AttendanceDevicesActivity;->access$10(Lcom/lzx/iteam/AttendanceDevicesActivity;)Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDevicesActivity;->mAdapter:Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceDevicesActivity;->access$10(Lcom/lzx/iteam/AttendanceDevicesActivity;)Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDevicesActivity;->deviceMsgDatas:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/AttendanceDevicesActivity;->access$1(Lcom/lzx/iteam/AttendanceDevicesActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;->bindData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/DeviceMsgData;

    .line 58
    .local v0, "deviceMsgData":Lcom/lzx/iteam/bean/DeviceMsgData;
    const-string v3, "1"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/DeviceMsgData;->getGroupDefault()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    invoke-static {v3, v0}, Lcom/lzx/iteam/AttendanceDevicesActivity;->access$2(Lcom/lzx/iteam/AttendanceDevicesActivity;Lcom/lzx/iteam/bean/DeviceMsgData;)V

    .line 60
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvDeviceStatus:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lzx/iteam/AttendanceDevicesActivity;->access$3(Lcom/lzx/iteam/AttendanceDevicesActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u5df2\u7ed1\u5b9a"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvDeviceName:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lzx/iteam/AttendanceDevicesActivity;->access$4(Lcom/lzx/iteam/AttendanceDevicesActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/DeviceMsgData;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvDeviceId:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lzx/iteam/AttendanceDevicesActivity;->access$5(Lcom/lzx/iteam/AttendanceDevicesActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u8bbe\u5907\u53f7:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/DeviceMsgData;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 64
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDevicesActivity;->deviceMsgDatas:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/AttendanceDevicesActivity;->access$1(Lcom/lzx/iteam/AttendanceDevicesActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 70
    .end local v0    # "deviceMsgData":Lcom/lzx/iteam/bean/DeviceMsgData;
    :cond_2
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvCurDeviceBind:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceDevicesActivity;->access$7(Lcom/lzx/iteam/AttendanceDevicesActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    invoke-virtual {v3}, Lcom/lzx/iteam/AttendanceDevicesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 78
    :cond_3
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvHistoryText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceDevicesActivity;->access$11(Lcom/lzx/iteam/AttendanceDevicesActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 81
    .end local v1    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/DeviceMsgData;>;"
    :cond_4
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 85
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_5

    .line 86
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    # invokes: Lcom/lzx/iteam/AttendanceDevicesActivity;->getMyDeviceMsg()V
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceDevicesActivity;->access$12(Lcom/lzx/iteam/AttendanceDevicesActivity;)V

    goto/16 :goto_0

    .line 88
    :cond_5
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDevicesActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
