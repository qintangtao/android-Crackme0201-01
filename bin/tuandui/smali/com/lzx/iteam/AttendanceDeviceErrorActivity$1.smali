.class Lcom/lzx/iteam/AttendanceDeviceErrorActivity$1;
.super Landroid/os/Handler;
.source "AttendanceDeviceErrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/AttendanceDeviceErrorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceDeviceErrorActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceDeviceErrorActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDeviceErrorActivity;

    .line 50
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 53
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 55
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_2

    .line 58
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 59
    .local v1, "deviceMsgDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/DeviceMsgData;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/DeviceMsgData;

    .line 60
    .local v0, "deviceMsgData":Lcom/lzx/iteam/bean/DeviceMsgData;
    const-string v3, "1"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/DeviceMsgData;->getGroupDefault()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDeviceErrorActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->mTvName:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->access$0(Lcom/lzx/iteam/AttendanceDeviceErrorActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/DeviceMsgData;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDeviceErrorActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->mTvId:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->access$1(Lcom/lzx/iteam/AttendanceDeviceErrorActivity;)Landroid/widget/TextView;

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

    goto :goto_1

    .line 64
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDeviceErrorActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->mTvErrorName:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->access$2(Lcom/lzx/iteam/AttendanceDeviceErrorActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/DeviceMsgData;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDeviceErrorActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->mTvErrorId:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->access$3(Lcom/lzx/iteam/AttendanceDeviceErrorActivity;)Landroid/widget/TextView;

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

    goto :goto_1

    .line 71
    .end local v0    # "deviceMsgData":Lcom/lzx/iteam/bean/DeviceMsgData;
    .end local v1    # "deviceMsgDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/DeviceMsgData;>;"
    :cond_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x1f41

    if-ne v2, v3, :cond_3

    .line 72
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDeviceErrorActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->access$4(Lcom/lzx/iteam/AttendanceDeviceErrorActivity;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080042

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 75
    :cond_3
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity$1;->this$0:Lcom/lzx/iteam/AttendanceDeviceErrorActivity;

    # getter for: Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->access$4(Lcom/lzx/iteam/AttendanceDeviceErrorActivity;)Landroid/app/Activity;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
