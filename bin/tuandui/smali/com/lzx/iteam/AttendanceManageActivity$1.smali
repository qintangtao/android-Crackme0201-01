.class Lcom/lzx/iteam/AttendanceManageActivity$1;
.super Landroid/os/Handler;
.source "AttendanceManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/AttendanceManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceManageActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceManageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceManageActivity$1;->this$0:Lcom/lzx/iteam/AttendanceManageActivity;

    .line 39
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 45
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceManageActivity$1;->this$0:Lcom/lzx/iteam/AttendanceManageActivity;

    # getter for: Lcom/lzx/iteam/AttendanceManageActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceManageActivity;->access$0(Lcom/lzx/iteam/AttendanceManageActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceManageActivity$1;->this$0:Lcom/lzx/iteam/AttendanceManageActivity;

    # getter for: Lcom/lzx/iteam/AttendanceManageActivity;->mNotice:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/AttendanceManageActivity;->access$1(Lcom/lzx/iteam/AttendanceManageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/AttendanceData;->setIsAlert(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceManageActivity$1;->this$0:Lcom/lzx/iteam/AttendanceManageActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 49
    const/4 v2, 0x1

    .line 48
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method
