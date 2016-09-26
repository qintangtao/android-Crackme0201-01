.class Lcom/lzx/iteam/AttendanceSettingActivity$5;
.super Ljava/lang/Object;
.source "AttendanceSettingActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/AttendanceSettingActivity;->showCancelSetDlg()V
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
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceSettingActivity$5;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 542
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 543
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 529
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 530
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity$5;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    const-class v2, Lcom/lzx/iteam/AttendanceCreateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 531
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "group_id"

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity$5;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$0(Lcom/lzx/iteam/AttendanceSettingActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    const-string v1, "group_name"

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity$5;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mGroupName:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$1(Lcom/lzx/iteam/AttendanceSettingActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    const-string v1, "user_type"

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity$5;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mUserType:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$2(Lcom/lzx/iteam/AttendanceSettingActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    const-string v1, "contact_id"

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity$5;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mContactId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$3(Lcom/lzx/iteam/AttendanceSettingActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 536
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity$5;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/AttendanceSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 537
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity$5;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    invoke-virtual {v1}, Lcom/lzx/iteam/AttendanceSettingActivity;->finish()V

    .line 538
    return-void
.end method
