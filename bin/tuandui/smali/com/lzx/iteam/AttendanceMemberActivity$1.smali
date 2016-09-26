.class Lcom/lzx/iteam/AttendanceMemberActivity$1;
.super Landroid/os/Handler;
.source "AttendanceMemberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/AttendanceMemberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceMemberActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceMemberActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceMemberActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMemberActivity;

    .line 45
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 48
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMemberActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lzx/iteam/AttendanceMemberActivity;->access$0(Lcom/lzx/iteam/AttendanceMemberActivity;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMemberActivity;

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceMemberActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMemberActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMemberActivity;->mAllow:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/AttendanceMemberActivity;->access$1(Lcom/lzx/iteam/AttendanceMemberActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/lzx/iteam/AttendanceMemberActivity;->setAllow(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/AttendanceMemberActivity;->access$2(Lcom/lzx/iteam/AttendanceMemberActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceMemberActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMemberActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 59
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceMemberActivity$1;->this$0:Lcom/lzx/iteam/AttendanceMemberActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
