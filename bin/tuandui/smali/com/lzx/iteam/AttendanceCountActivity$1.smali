.class Lcom/lzx/iteam/AttendanceCountActivity$1;
.super Landroid/os/Handler;
.source "AttendanceCountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/AttendanceCountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceCountActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceCountActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceCountActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCountActivity;

    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 50
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 54
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCountActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCountActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCountActivity;->attendanceCountDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceCountActivity;->access$0(Lcom/lzx/iteam/AttendanceCountActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 56
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCountActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCountActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCountActivity;->attendanceCountDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceCountActivity;->access$0(Lcom/lzx/iteam/AttendanceCountActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 57
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCountActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCountActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCountActivity;->mAdapter:Lcom/lzx/iteam/adapter/AttendanceCountAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceCountActivity;->access$1(Lcom/lzx/iteam/AttendanceCountActivity;)Lcom/lzx/iteam/adapter/AttendanceCountAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCountActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCountActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCountActivity;->attendanceCountDatas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/AttendanceCountActivity;->access$0(Lcom/lzx/iteam/AttendanceCountActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->bindData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 59
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x1f41

    if-ne v0, v1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCountActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCountActivity;

    const v1, 0x7f080042

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCountActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCountActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
