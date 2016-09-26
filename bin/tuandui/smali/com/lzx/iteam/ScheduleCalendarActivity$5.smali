.class Lcom/lzx/iteam/ScheduleCalendarActivity$5;
.super Ljava/lang/Object;
.source "ScheduleCalendarActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ScheduleCalendarActivity;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
    iput-object p1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$5;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 699
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 700
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 692
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$5;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # invokes: Lcom/lzx/iteam/ScheduleCalendarActivity;->httpReqDlgShow()V
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$38(Lcom/lzx/iteam/ScheduleCalendarActivity;)V

    .line 693
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$5;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$5;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarId:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$20(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/lzx/iteam/ScheduleCalendarActivity;->deleteCalendar(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$39(Lcom/lzx/iteam/ScheduleCalendarActivity;Ljava/lang/String;)V

    .line 694
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 695
    return-void
.end method
