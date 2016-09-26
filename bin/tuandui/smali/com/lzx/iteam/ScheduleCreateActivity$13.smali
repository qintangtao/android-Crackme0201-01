.class Lcom/lzx/iteam/ScheduleCreateActivity$13;
.super Ljava/lang/Object;
.source "ScheduleCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ScheduleCreateActivity;->showEndDateSelectPop()V
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
    iput-object p1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 623
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$15(Lcom/lzx/iteam/ScheduleCreateActivity;)Lcom/lzx/iteam/selectdate/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$29(Lcom/lzx/iteam/ScheduleCreateActivity;I)V

    .line 624
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$17(Lcom/lzx/iteam/ScheduleCreateActivity;)Lcom/lzx/iteam/selectdate/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/WheelView;->getCurrentItem()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    invoke-static {v1, v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$30(Lcom/lzx/iteam/ScheduleCreateActivity;I)V

    .line 625
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mEndHour:I
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$34(Lcom/lzx/iteam/ScheduleCreateActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mStartHour:I
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$20(Lcom/lzx/iteam/ScheduleCreateActivity;)I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mEndHour:I
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$34(Lcom/lzx/iteam/ScheduleCreateActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mStartHour:I
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$20(Lcom/lzx/iteam/ScheduleCreateActivity;)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mEndMinute:I
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$35(Lcom/lzx/iteam/ScheduleCreateActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mStartMinute:I
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$21(Lcom/lzx/iteam/ScheduleCreateActivity;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 626
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    const-string v2, "\u7ed3\u675f\u65f6\u95f4\u5c0f\u4e8e\u5f00\u59cb\u65f6\u95f4\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 627
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    invoke-static {v1, v4}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$29(Lcom/lzx/iteam/ScheduleCreateActivity;I)V

    .line 628
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    invoke-static {v1, v4}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$30(Lcom/lzx/iteam/ScheduleCreateActivity;I)V

    .line 629
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mTvEndTime:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$37(Lcom/lzx/iteam/ScheduleCreateActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$38(Lcom/lzx/iteam/ScheduleCreateActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 641
    return-void

    .line 631
    :cond_1
    const-string v0, ""

    .line 632
    .local v0, "time":Ljava/lang/String;
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mEndMinute:I
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$35(Lcom/lzx/iteam/ScheduleCreateActivity;)I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mEndHour:I
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$34(Lcom/lzx/iteam/ScheduleCreateActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mEndMinute:I
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$35(Lcom/lzx/iteam/ScheduleCreateActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    :goto_1
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    invoke-static {v1, v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$23(Lcom/lzx/iteam/ScheduleCreateActivity;Ljava/lang/String;)V

    .line 638
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mTvEndTime:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$37(Lcom/lzx/iteam/ScheduleCreateActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mScheduleTime:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$25(Lcom/lzx/iteam/ScheduleCreateActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 635
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mEndHour:I
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$34(Lcom/lzx/iteam/ScheduleCreateActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity$13;->this$0:Lcom/lzx/iteam/ScheduleCreateActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCreateActivity;->mEndMinute:I
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->access$35(Lcom/lzx/iteam/ScheduleCreateActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
