.class Lcom/lzx/iteam/ScheduleCreateActivity$3;
.super Ljava/lang/Object;
.source "ScheduleCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ScheduleCreateActivity;->showRemindTimePop()V
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
    iput-object p1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$3;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity$3;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mTvRemind:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$8(Lcom/lzx/iteam/ScheduleCreateActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u4e0d\u63d0\u9192"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity$3;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$9(Lcom/lzx/iteam/ScheduleCreateActivity;J)V

    .line 389
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity$3;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeRemindPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$10(Lcom/lzx/iteam/ScheduleCreateActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 390
    return-void
.end method
