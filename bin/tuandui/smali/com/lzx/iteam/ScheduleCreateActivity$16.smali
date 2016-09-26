.class Lcom/lzx/iteam/ScheduleCreateActivity$16;
.super Ljava/lang/Object;
.source "ScheduleCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ScheduleCreateActivity;->showContinueDateSelectPop()V
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
    iput-object p1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$16;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 688
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity$16;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$16;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$39(Lcom/lzx/iteam/ScheduleCreateActivity;)J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$36(Lcom/lzx/iteam/ScheduleCreateActivity;J)V

    .line 689
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity$16;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # invokes: Lcom/lzx/iteam/ScheduleCreateActivity;->setEndTime()V
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$40(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    .line 690
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity$16;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$41(Lcom/lzx/iteam/ScheduleCreateActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 691
    return-void
.end method
