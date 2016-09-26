.class Lcom/lzx/iteam/ApprovalCreateActivity$3;
.super Ljava/lang/Object;
.source "ApprovalCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ApprovalCreateActivity;->showMorningAndAfter(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

.field private final synthetic val$dialog:Landroid/app/AlertDialog;

.field private final synthetic val$isStart:Z


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ApprovalCreateActivity;ZLandroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    iput-boolean p2, p0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->val$isStart:Z

    iput-object p3, p0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->val$dialog:Landroid/app/AlertDialog;

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->morning_After:Lcom/lzx/iteam/selectdate/WheelView;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$6(Lcom/lzx/iteam/ApprovalCreateActivity;)Lcom/lzx/iteam/selectdate/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/WheelView;->getCurrentItem()I

    move-result v9

    .line 594
    .local v9, "index":I
    if-nez v9, :cond_2

    const-string v12, " \u4e0a\u5348"

    .line 595
    .local v12, "m_a":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->val$isStart:Z

    if-eqz v2, :cond_4

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$3(Lcom/lzx/iteam/ApprovalCreateActivity;)Lcom/lzx/iteam/selectdate/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/WheelView;->getCurrentItem()I

    move-result v2

    add-int/lit8 v15, v2, 0x1

    .line 597
    .local v15, "sMonth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$4(Lcom/lzx/iteam/ApprovalCreateActivity;)Lcom/lzx/iteam/selectdate/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/WheelView;->getCurrentItem()I

    move-result v2

    add-int/lit8 v14, v2, 0x1

    .line 598
    .local v14, "sDay":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalType:I
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$7(Lcom/lzx/iteam/ApprovalCreateActivity;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->curMonth:I
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$8(Lcom/lzx/iteam/ApprovalCreateActivity;)I

    move-result v2

    if-gt v15, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->curMonth:I
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$8(Lcom/lzx/iteam/ApprovalCreateActivity;)I

    move-result v2

    if-ne v15, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->curDate:I
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$9(Lcom/lzx/iteam/ApprovalCreateActivity;)I

    move-result v2

    if-le v14, v2, :cond_3

    .line 599
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    const-string v3, "\u7533\u8bc9\u65f6\u95f4\u4e0d\u80fd\u8d85\u8fc7\u4eca\u5929\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9"

    # invokes: Lcom/lzx/iteam/ApprovalCreateActivity;->showShortToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$1(Lcom/lzx/iteam/ApprovalCreateActivity;Ljava/lang/String;)V

    move v5, v14

    .line 646
    .end local v14    # "sDay":I
    .local v5, "sDay":I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->cancel()V

    .line 647
    :goto_2
    return-void

    .line 594
    .end local v5    # "sDay":I
    .end local v12    # "m_a":Ljava/lang/String;
    .end local v15    # "sMonth":I
    :cond_2
    const-string v12, " \u4e0b\u5348"

    goto :goto_0

    .line 601
    .restart local v12    # "m_a":Ljava/lang/String;
    .restart local v14    # "sDay":I
    .restart local v15    # "sMonth":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$3(Lcom/lzx/iteam/ApprovalCreateActivity;)Lcom/lzx/iteam/selectdate/WheelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lzx/iteam/selectdate/WheelView;->getCurrentItem()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$10(Lcom/lzx/iteam/ApprovalCreateActivity;I)V

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$4(Lcom/lzx/iteam/ApprovalCreateActivity;)Lcom/lzx/iteam/selectdate/WheelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lzx/iteam/selectdate/WheelView;->getCurrentItem()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$11(Lcom/lzx/iteam/ApprovalCreateActivity;I)V

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->c:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$12(Lcom/lzx/iteam/ApprovalCreateActivity;)Ljava/util/Calendar;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->curYear:I
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$2(Lcom/lzx/iteam/ApprovalCreateActivity;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mStartMonth:I
    invoke-static {v4}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$13(Lcom/lzx/iteam/ApprovalCreateActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mStartDay:I
    invoke-static {v6}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$14(Lcom/lzx/iteam/ApprovalCreateActivity;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->c:Ljava/util/Calendar;
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$12(Lcom/lzx/iteam/ApprovalCreateActivity;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/16 v16, 0x3e8

    div-long v6, v6, v16

    invoke-static {v2, v6, v7}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$15(Lcom/lzx/iteam/ApprovalCreateActivity;J)V

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mTvStart:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$16(Lcom/lzx/iteam/ApprovalCreateActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mStartDate:J
    invoke-static {v4}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$17(Lcom/lzx/iteam/ApprovalCreateActivity;)J

    move-result-wide v6

    const-wide/16 v16, 0x3e8

    mul-long v6, v6, v16

    invoke-static {v6, v7}, Lcom/lzx/iteam/util/DateUtil;->formatDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    add-int/lit8 v3, v9, 0x1

    invoke-static {v2, v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$18(Lcom/lzx/iteam/ApprovalCreateActivity;I)V

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalType:I
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$7(Lcom/lzx/iteam/ApprovalCreateActivity;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mStartMonth:I
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$13(Lcom/lzx/iteam/ApprovalCreateActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$19(Lcom/lzx/iteam/ApprovalCreateActivity;I)V

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mStartDay:I
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$14(Lcom/lzx/iteam/ApprovalCreateActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$20(Lcom/lzx/iteam/ApprovalCreateActivity;I)V

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mStartpart:I
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$21(Lcom/lzx/iteam/ApprovalCreateActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$22(Lcom/lzx/iteam/ApprovalCreateActivity;I)V

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mStartDate:J
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$17(Lcom/lzx/iteam/ApprovalCreateActivity;)J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$23(Lcom/lzx/iteam/ApprovalCreateActivity;J)V

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mTvEnd:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$24(Lcom/lzx/iteam/ApprovalCreateActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mEndDate:J
    invoke-static {v4}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$25(Lcom/lzx/iteam/ApprovalCreateActivity;)J

    move-result-wide v6

    const-wide/16 v16, 0x3e8

    mul-long v6, v6, v16

    invoke-static {v6, v7}, Lcom/lzx/iteam/util/DateUtil;->getDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mEtDays:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$26(Lcom/lzx/iteam/ApprovalCreateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, "0.5"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move v5, v14

    .line 618
    .end local v14    # "sDay":I
    .restart local v5    # "sDay":I
    goto/16 :goto_1

    .line 619
    .end local v5    # "sDay":I
    .end local v15    # "sMonth":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$3(Lcom/lzx/iteam/ApprovalCreateActivity;)Lcom/lzx/iteam/selectdate/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/WheelView;->getCurrentItem()I

    move-result v2

    add-int/lit8 v15, v2, 0x1

    .line 620
    .restart local v15    # "sMonth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$4(Lcom/lzx/iteam/ApprovalCreateActivity;)Lcom/lzx/iteam/selectdate/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/WheelView;->getCurrentItem()I

    move-result v2

    add-int/lit8 v5, v2, 0x1

    .line 621
    .restart local v5    # "sDay":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->c:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$12(Lcom/lzx/iteam/ApprovalCreateActivity;)Ljava/util/Calendar;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->curYear:I
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$2(Lcom/lzx/iteam/ApprovalCreateActivity;)I

    move-result v3

    add-int/lit8 v4, v15, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->c:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$12(Lcom/lzx/iteam/ApprovalCreateActivity;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long v10, v2, v6

    .line 623
    .local v10, "end":J
    add-int/lit8 v13, v9, 0x1

    .line 624
    .local v13, "part":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalType:I
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$7(Lcom/lzx/iteam/ApprovalCreateActivity;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mStartMonth:I
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$13(Lcom/lzx/iteam/ApprovalCreateActivity;)I

    move-result v2

    if-ne v2, v15, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mStartDay:I
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$14(Lcom/lzx/iteam/ApprovalCreateActivity;)I

    move-result v2

    if-eq v2, v5, :cond_6

    .line 625
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    const-string v3, "\u5916\u51fa\u65f6\u957f\u4e0d\u80fd\u8de8\u5929\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9"

    # invokes: Lcom/lzx/iteam/ApprovalCreateActivity;->showShortToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$1(Lcom/lzx/iteam/ApprovalCreateActivity;Ljava/lang/String;)V

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->cancel()V

    goto/16 :goto_2

    .line 629
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mStartDate:J
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$17(Lcom/lzx/iteam/ApprovalCreateActivity;)J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-ltz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mStartDate:J
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$17(Lcom/lzx/iteam/ApprovalCreateActivity;)J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mStartpart:I
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$21(Lcom/lzx/iteam/ApprovalCreateActivity;)I

    move-result v2

    if-le v2, v13, :cond_8

    .line 630
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    const-string v3, "\u7ed3\u675f\u65f6\u95f4\u5c0f\u4e8e\u5f00\u59cb\u65f6\u95f4\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9"

    # invokes: Lcom/lzx/iteam/ApprovalCreateActivity;->showShortToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$1(Lcom/lzx/iteam/ApprovalCreateActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 632
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    invoke-static {v2, v15}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$19(Lcom/lzx/iteam/ApprovalCreateActivity;I)V

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    invoke-static {v2, v5}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$20(Lcom/lzx/iteam/ApprovalCreateActivity;I)V

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    invoke-static {v2, v10, v11}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$23(Lcom/lzx/iteam/ApprovalCreateActivity;J)V

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mTvEnd:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$24(Lcom/lzx/iteam/ApprovalCreateActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mEndDate:J
    invoke-static {v4}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$25(Lcom/lzx/iteam/ApprovalCreateActivity;)J

    move-result-wide v6

    const-wide/16 v16, 0x3e8

    mul-long v6, v6, v16

    invoke-static {v6, v7}, Lcom/lzx/iteam/util/DateUtil;->getDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    invoke-static {v2, v13}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$22(Lcom/lzx/iteam/ApprovalCreateActivity;I)V

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalType:I
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$7(Lcom/lzx/iteam/ApprovalCreateActivity;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mStartpart:I
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$21(Lcom/lzx/iteam/ApprovalCreateActivity;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mEndPart:I
    invoke-static {v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$27(Lcom/lzx/iteam/ApprovalCreateActivity;)I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mEtDays:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$26(Lcom/lzx/iteam/ApprovalCreateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, "0.5"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 641
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ApprovalCreateActivity$3;->this$0:Lcom/lzx/iteam/ApprovalCreateActivity;

    # getter for: Lcom/lzx/iteam/ApprovalCreateActivity;->mEtDays:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->access$26(Lcom/lzx/iteam/ApprovalCreateActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .end local v5    # "sDay":I
    .end local v10    # "end":J
    .end local v13    # "part":I
    .restart local v14    # "sDay":I
    :cond_a
    move v5, v14

    .end local v14    # "sDay":I
    .restart local v5    # "sDay":I
    goto/16 :goto_1
.end method
