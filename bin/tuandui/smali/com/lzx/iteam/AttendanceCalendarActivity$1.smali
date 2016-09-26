.class Lcom/lzx/iteam/AttendanceCalendarActivity$1;
.super Landroid/os/Handler;
.source "AttendanceCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/AttendanceCalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceCalendarActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    .line 98
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 101
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v1, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$0(Lcom/lzx/iteam/AttendanceCalendarActivity;Ljava/util/HashMap;)V

    .line 107
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCalendarActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$1(Lcom/lzx/iteam/AttendanceCalendarActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "calendar"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$2(Lcom/lzx/iteam/AttendanceCalendarActivity;Ljava/util/List;)V

    .line 108
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCalendarActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$1(Lcom/lzx/iteam/AttendanceCalendarActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "attendance"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$3(Lcom/lzx/iteam/AttendanceCalendarActivity;Ljava/util/List;)V

    .line 115
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    const/4 v1, 0x0

    # invokes: Lcom/lzx/iteam/AttendanceCalendarActivity;->setData(I)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$4(Lcom/lzx/iteam/AttendanceCalendarActivity;I)V

    goto :goto_0

    .line 118
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x1f41

    if-ne v0, v1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCalendarActivity;->mActivity:Lcom/lzx/iteam/AttendanceCalendarActivity;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$5(Lcom/lzx/iteam/AttendanceCalendarActivity;)Lcom/lzx/iteam/AttendanceCalendarActivity;

    move-result-object v0

    const v1, 0x7f080042

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCalendarActivity;->mActivity:Lcom/lzx/iteam/AttendanceCalendarActivity;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$5(Lcom/lzx/iteam/AttendanceCalendarActivity;)Lcom/lzx/iteam/AttendanceCalendarActivity;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method
