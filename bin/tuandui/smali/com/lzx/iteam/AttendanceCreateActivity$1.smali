.class Lcom/lzx/iteam/AttendanceCreateActivity$1;
.super Landroid/os/Handler;
.source "AttendanceCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/AttendanceCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceCreateActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceCreateActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceCreateActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    .line 50
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 56
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 57
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/lzx/iteam/AttendanceCreateActivity;->access$0(Lcom/lzx/iteam/AttendanceCreateActivity;Ljava/util/ArrayList;)V

    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCreateActivity;->mAdapter:Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceCreateActivity;->access$1(Lcom/lzx/iteam/AttendanceCreateActivity;)Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCreateActivity;->attendanceDatas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/AttendanceCreateActivity;->access$2(Lcom/lzx/iteam/AttendanceCreateActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;->bindData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    # invokes: Lcom/lzx/iteam/AttendanceCreateActivity;->httpReqDlgDismiss()V
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceCreateActivity;->access$3(Lcom/lzx/iteam/AttendanceCreateActivity;)V

    .line 65
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCreateActivity;->attendanceDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceCreateActivity;->access$2(Lcom/lzx/iteam/AttendanceCreateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCreateActivity;->mPosition:I
    invoke-static {v1}, Lcom/lzx/iteam/AttendanceCreateActivity;->access$4(Lcom/lzx/iteam/AttendanceCreateActivity;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 67
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCreateActivity;->attendanceDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceCreateActivity;->access$2(Lcom/lzx/iteam/AttendanceCreateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCreateActivity;->mPosition:I
    invoke-static {v1}, Lcom/lzx/iteam/AttendanceCreateActivity;->access$4(Lcom/lzx/iteam/AttendanceCreateActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCreateActivity;->mAdapter:Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceCreateActivity;->access$1(Lcom/lzx/iteam/AttendanceCreateActivity;)Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCreateActivity;->mAdapter:Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceCreateActivity;->access$1(Lcom/lzx/iteam/AttendanceCreateActivity;)Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCreateActivity;->attendanceDatas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/AttendanceCreateActivity;->access$2(Lcom/lzx/iteam/AttendanceCreateActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;->bindData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 72
    :cond_3
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity$1;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
