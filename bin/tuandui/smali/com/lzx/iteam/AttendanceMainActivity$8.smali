.class Lcom/lzx/iteam/AttendanceMainActivity$8;
.super Ljava/lang/Object;
.source "AttendanceMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/AttendanceMainActivity;->showAttendanceCountPop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceMainActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceMainActivity$8;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 454
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceMainActivity$8;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    const-class v2, Lcom/lzx/iteam/AttendanceCalendarActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 455
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "group_id"

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceMainActivity$8;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const-string v1, "form_id"

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceMainActivity$8;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/AttendanceData;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceMainActivity$8;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 458
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceMainActivity$8;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->mCountPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lzx/iteam/AttendanceMainActivity;->access$23(Lcom/lzx/iteam/AttendanceMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 459
    return-void
.end method
