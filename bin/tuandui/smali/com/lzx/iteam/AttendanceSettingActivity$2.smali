.class Lcom/lzx/iteam/AttendanceSettingActivity$2;
.super Ljava/lang/Object;
.source "AttendanceSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/AttendanceSettingActivity;->showTimeSelectPop(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceSettingActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    iput p2, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->val$type:I

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0xa

    .line 436
    iget v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->val$type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 437
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$11(Lcom/lzx/iteam/AttendanceSettingActivity;)Lcom/lzx/iteam/selectdate/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$12(Lcom/lzx/iteam/AttendanceSettingActivity;I)V

    .line 438
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$13(Lcom/lzx/iteam/AttendanceSettingActivity;)Lcom/lzx/iteam/selectdate/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$14(Lcom/lzx/iteam/AttendanceSettingActivity;I)V

    .line 439
    const-string v0, ""

    .line 440
    .local v0, "time":Ljava/lang/String;
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mStartMinute:I
    invoke-static {v1}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$15(Lcom/lzx/iteam/AttendanceSettingActivity;)I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mStartHour:I
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$16(Lcom/lzx/iteam/AttendanceSettingActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mStartMinute:I
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$15(Lcom/lzx/iteam/AttendanceSettingActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    invoke-static {v1, v0}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$17(Lcom/lzx/iteam/AttendanceSettingActivity;Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mTvStartTime:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$18(Lcom/lzx/iteam/AttendanceSettingActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mStartTime:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$19(Lcom/lzx/iteam/AttendanceSettingActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    :goto_1
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mTimePop:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$27(Lcom/lzx/iteam/AttendanceSettingActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 461
    return-void

    .line 443
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mStartHour:I
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$16(Lcom/lzx/iteam/AttendanceSettingActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mStartMinute:I
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$15(Lcom/lzx/iteam/AttendanceSettingActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 448
    .end local v0    # "time":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$11(Lcom/lzx/iteam/AttendanceSettingActivity;)Lcom/lzx/iteam/selectdate/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$20(Lcom/lzx/iteam/AttendanceSettingActivity;I)V

    .line 449
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$13(Lcom/lzx/iteam/AttendanceSettingActivity;)Lcom/lzx/iteam/selectdate/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$21(Lcom/lzx/iteam/AttendanceSettingActivity;I)V

    .line 450
    const-string v0, ""

    .line 451
    .restart local v0    # "time":Ljava/lang/String;
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mEndMinute:I
    invoke-static {v1}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$22(Lcom/lzx/iteam/AttendanceSettingActivity;)I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mEndHour:I
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$23(Lcom/lzx/iteam/AttendanceSettingActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mEndMinute:I
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$22(Lcom/lzx/iteam/AttendanceSettingActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    :goto_2
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    invoke-static {v1, v0}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$24(Lcom/lzx/iteam/AttendanceSettingActivity;Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mTvEndTime:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$25(Lcom/lzx/iteam/AttendanceSettingActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mEndTime:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$26(Lcom/lzx/iteam/AttendanceSettingActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 454
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mEndHour:I
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$23(Lcom/lzx/iteam/AttendanceSettingActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity$2;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    # getter for: Lcom/lzx/iteam/AttendanceSettingActivity;->mEndMinute:I
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$22(Lcom/lzx/iteam/AttendanceSettingActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
