.class Lcom/lzx/iteam/ScheduleCalendarActivity$1;
.super Landroid/os/Handler;
.source "ScheduleCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ScheduleCalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ScheduleCalendarActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    .line 92
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v4, 0x7f080042

    const/16 v3, 0x1f41

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 95
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_3

    .line 101
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v3, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$0(Lcom/lzx/iteam/ScheduleCalendarActivity;Ljava/util/HashMap;)V

    .line 102
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$1(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v4, "schedule"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$2(Lcom/lzx/iteam/ScheduleCalendarActivity;Ljava/util/List;)V

    .line 103
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$3(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mListData:Ljava/util/List;
    invoke-static {v3}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$4(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->bindData(Ljava/util/List;)V

    .line 105
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$1(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v4, "calendar"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v3, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$5(Lcom/lzx/iteam/ScheduleCalendarActivity;Ljava/util/List;)V

    .line 106
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarData:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$6(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mNullLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$7(Lcom/lzx/iteam/ScheduleCalendarActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    :goto_1
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mAdapter:Lcom/lzx/iteam/adapter/CalendarListAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$8(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/adapter/CalendarListAdapter;

    move-result-object v3

    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarData:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$6(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$9(Lcom/lzx/iteam/ScheduleCalendarActivity;)I

    move-result v0

    iget-object v5, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->year_c:I
    invoke-static {v5}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$10(Lcom/lzx/iteam/ScheduleCalendarActivity;)I

    move-result v5

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$11(Lcom/lzx/iteam/ScheduleCalendarActivity;)I

    move-result v0

    iget-object v5, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->month_c:I
    invoke-static {v5}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$12(Lcom/lzx/iteam/ScheduleCalendarActivity;)I

    move-result v5

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mDay:I
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$13(Lcom/lzx/iteam/ScheduleCalendarActivity;)I

    move-result v0

    iget-object v5, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->day_c:I
    invoke-static {v5}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$14(Lcom/lzx/iteam/ScheduleCalendarActivity;)I

    move-result v5

    if-ne v0, v5, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v4, v0}, Lcom/lzx/iteam/adapter/CalendarListAdapter;->bindData(Ljava/util/List;Z)V

    goto/16 :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mNullLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$7(Lcom/lzx/iteam/ScheduleCalendarActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 111
    goto :goto_2

    .line 113
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_4

    .line 114
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mActivity:Lcom/lzx/iteam/ScheduleCalendarActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$15(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/ScheduleCalendarActivity;

    move-result-object v0

    invoke-static {v0, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mActivity:Lcom/lzx/iteam/ScheduleCalendarActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$15(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/ScheduleCalendarActivity;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 123
    :pswitch_1
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # invokes: Lcom/lzx/iteam/ScheduleCalendarActivity;->httpReqDlgDismiss()V
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$16(Lcom/lzx/iteam/ScheduleCalendarActivity;)V

    .line 124
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_6

    .line 125
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mPosition:I
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$17(Lcom/lzx/iteam/ScheduleCalendarActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mScheduleDb:Lcom/lzx/iteam/provider/ScheduleDB;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$18(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/provider/ScheduleDB;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mDate:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$19(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$20(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/provider/ScheduleDB;->deleteOneSchedule(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarData:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$6(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mPosition:I
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$17(Lcom/lzx/iteam/ScheduleCalendarActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$9(Lcom/lzx/iteam/ScheduleCalendarActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->year_c:I
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$10(Lcom/lzx/iteam/ScheduleCalendarActivity;)I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$11(Lcom/lzx/iteam/ScheduleCalendarActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->month_c:I
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$12(Lcom/lzx/iteam/ScheduleCalendarActivity;)I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mDay:I
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$13(Lcom/lzx/iteam/ScheduleCalendarActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->day_c:I
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$14(Lcom/lzx/iteam/ScheduleCalendarActivity;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 129
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mAdapter:Lcom/lzx/iteam/adapter/CalendarListAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$8(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/adapter/CalendarListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/CalendarListAdapter;->setShowLine()V

    .line 131
    :cond_5
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mAdapter:Lcom/lzx/iteam/adapter/CalendarListAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$8(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/adapter/CalendarListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/CalendarListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 134
    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_7

    .line 135
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mActivity:Lcom/lzx/iteam/ScheduleCalendarActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$15(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/ScheduleCalendarActivity;

    move-result-object v0

    invoke-static {v0, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 138
    :cond_7
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mActivity:Lcom/lzx/iteam/ScheduleCalendarActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$15(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/ScheduleCalendarActivity;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 144
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_9

    .line 145
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mScheduleDb:Lcom/lzx/iteam/provider/ScheduleDB;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$18(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/provider/ScheduleDB;

    move-result-object v0

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mDate:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$19(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mDone:Ljava/lang/String;
    invoke-static {v4}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$21(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarId:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$20(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mUserId:Ljava/lang/String;
    invoke-static {v6}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$22(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/lzx/iteam/provider/ScheduleDB;->updateScheduleDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mScheduleDb:Lcom/lzx/iteam/provider/ScheduleDB;
    invoke-static {v3}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$18(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/provider/ScheduleDB;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mDate:Ljava/lang/String;
    invoke-static {v4}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$19(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mUserId:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$22(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/provider/ScheduleDB;->findScheduleByDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$5(Lcom/lzx/iteam/ScheduleCalendarActivity;Ljava/util/List;)V

    .line 147
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mAdapter:Lcom/lzx/iteam/adapter/CalendarListAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$8(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/adapter/CalendarListAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarData:Ljava/util/List;
    invoke-static {v3}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$6(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I
    invoke-static {v4}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$9(Lcom/lzx/iteam/ScheduleCalendarActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->year_c:I
    invoke-static {v5}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$10(Lcom/lzx/iteam/ScheduleCalendarActivity;)I

    move-result v5

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I
    invoke-static {v4}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$11(Lcom/lzx/iteam/ScheduleCalendarActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->month_c:I
    invoke-static {v5}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$12(Lcom/lzx/iteam/ScheduleCalendarActivity;)I

    move-result v5

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mDay:I
    invoke-static {v4}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$13(Lcom/lzx/iteam/ScheduleCalendarActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->day_c:I
    invoke-static {v5}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$14(Lcom/lzx/iteam/ScheduleCalendarActivity;)I

    move-result v5

    if-ne v4, v5, :cond_8

    :goto_3
    invoke-virtual {v0, v3, v1}, Lcom/lzx/iteam/adapter/CalendarListAdapter;->bindData(Ljava/util/List;Z)V

    goto/16 :goto_0

    :cond_8
    move v1, v2

    goto :goto_3

    .line 149
    :cond_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_a

    .line 150
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mActivity:Lcom/lzx/iteam/ScheduleCalendarActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$15(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/ScheduleCalendarActivity;

    move-result-object v0

    invoke-static {v0, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 153
    :cond_a
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mActivity:Lcom/lzx/iteam/ScheduleCalendarActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$15(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/ScheduleCalendarActivity;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
