.class Lcom/lzx/iteam/ScheduleCreateActivity$4;
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
    iput-object p1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mTvRemind:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$8(Lcom/lzx/iteam/ScheduleCreateActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u51c6\u65f6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeRemindPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$10(Lcom/lzx/iteam/ScheduleCreateActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 398
    return-void
.end method
