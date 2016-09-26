.class Lcom/lzx/iteam/ScheduleCreateActivity$1;
.super Landroid/os/Handler;
.source "ScheduleCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ScheduleCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ScheduleCreateActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    .line 89
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v4, 0x7f080042

    const/16 v2, 0x1f41

    const/4 v3, 0x1

    .line 92
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 93
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_1

    .line 96
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lzx/iteam/bean/ScheduleData;

    .line 97
    .local v0, "data":Lcom/lzx/iteam/bean/ScheduleData;
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$0(Lcom/lzx/iteam/ScheduleCreateActivity;)Lcom/lzx/iteam/bean/ScheduleData;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/bean/ScheduleData;->setId(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$0(Lcom/lzx/iteam/ScheduleCreateActivity;)Lcom/lzx/iteam/bean/ScheduleData;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/bean/ScheduleData;->setTitle(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$0(Lcom/lzx/iteam/ScheduleCreateActivity;)Lcom/lzx/iteam/bean/ScheduleData;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleData;->getPublishedUId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/bean/ScheduleData;->setPublishedUId(Ljava/lang/String;)V

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mStartYear:I
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$1(Lcom/lzx/iteam/ScheduleCreateActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mStartMonth:I
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$2(Lcom/lzx/iteam/ScheduleCreateActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mStartDay:I
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$3(Lcom/lzx/iteam/ScheduleCreateActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    const-string v1, "0"

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$0(Lcom/lzx/iteam/ScheduleCreateActivity;)Lcom/lzx/iteam/bean/ScheduleData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ScheduleData;->getAlertTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$4(Lcom/lzx/iteam/ScheduleCreateActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$0(Lcom/lzx/iteam/ScheduleCreateActivity;)Lcom/lzx/iteam/bean/ScheduleData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertAlarmWarnData(Lcom/lzx/iteam/bean/ScheduleData;)J

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    invoke-virtual {v1}, Lcom/lzx/iteam/ScheduleCreateActivity;->finish()V

    goto/16 :goto_0

    .line 110
    .end local v0    # "data":Lcom/lzx/iteam/bean/ScheduleData;
    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_2

    .line 111
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 114
    :cond_2
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 119
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_3

    .line 120
    sget-object v1, Lcom/lzx/iteam/ScheduleDetailActivity;->instance:Lcom/lzx/iteam/ScheduleDetailActivity;

    invoke-virtual {v1}, Lcom/lzx/iteam/ScheduleDetailActivity;->finish()V

    .line 121
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    invoke-virtual {v1}, Lcom/lzx/iteam/ScheduleCreateActivity;->finish()V

    goto/16 :goto_0

    .line 123
    :cond_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_4

    .line 124
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 127
    :cond_4
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
