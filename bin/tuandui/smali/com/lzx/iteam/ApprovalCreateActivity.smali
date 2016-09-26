.class public Lcom/lzx/iteam/ApprovalCreateActivity;
.super Lcom/lzx/iteam/base/MyBaseActivity;
.source "ApprovalCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CREATE_APPROVAL:I = 0x7532

.field public static final SELECT_LEADER_REQUESTCODE:I = 0x7531


# instance fields
.field private c:Ljava/util/Calendar;

.field private curDate:I

.field private curMonth:I

.field private curYear:I

.field private day:Lcom/lzx/iteam/selectdate/WheelView;

.field private mApData:Lcom/lzx/iteam/bean/ApprovalData;

.field private mApprovalName:Ljava/lang/String;

.field private mApprovalType:I

.field private mDialogReason:Landroid/app/AlertDialog;

.field private mEndDate:J

.field private mEndDay:I

.field private mEndMonth:I

.field private mEndPart:I

.field private mEtDays:Landroid/widget/EditText;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0069
    .end annotation
.end field

.field private mEtLeavePlace:Landroid/widget/EditText;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e005e
    .end annotation
.end field

.field private mEtReason:Landroid/widget/EditText;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e006d
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIvMember:Lcom/lzx/iteam/widget/RoundImageView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0071
    .end annotation
.end field

.field private mLayoutBack:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0056
    .end annotation
.end field

.field private mLeaderImage:Ljava/lang/String;

.field private mLeaderUid:Ljava/lang/String;

.field private mLeaveDays:F

.field private mLeaveReason:Ljava/lang/String;

.field private mLeaveType:I

.field private mRlDays:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0067
    .end annotation
.end field

.field private mRlEndTime:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0063
    .end annotation
.end field

.field private mRlLeavePlace:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e005c
    .end annotation
.end field

.field private mRlLeaveType:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0058
    .end annotation
.end field

.field private mRlMember:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e006e
    .end annotation
.end field

.field private mRlStartTime:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e005f
    .end annotation
.end field

.field private mStartDate:J

.field private mStartDay:I

.field private mStartMonth:I

.field private mStartpart:I

.field private mTravelPlace:Ljava/lang/String;

.field private mTvDays:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0068
    .end annotation
.end field

.field private mTvEnd:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0065
    .end annotation
.end field

.field private mTvLeaveType:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e005a
    .end annotation
.end field

.field private mTvMember:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0070
    .end annotation
.end field

.field private mTvReason:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e006c
    .end annotation
.end field

.field private mTvStart:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0061
    .end annotation
.end field

.field private mTvStartTitle:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0060
    .end annotation
.end field

.field private mTvSubmit:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0073
    .end annotation
.end field

.field private mTvTitle:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0057
    .end annotation
.end field

.field private mViewMagin:Landroid/view/View;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e006a
    .end annotation
.end field

.field private mWaitDialog:Landroid/app/Dialog;

.field private month:Lcom/lzx/iteam/selectdate/WheelView;

.field private morning_After:Lcom/lzx/iteam/selectdate/WheelView;

.field scrollListener:Lcom/lzx/iteam/selectdate/OnWheelScrollListener;

.field private year:Lcom/lzx/iteam/selectdate/WheelView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 41
    invoke-direct {p0}, Lcom/lzx/iteam/base/MyBaseActivity;-><init>()V

    .line 115
    iput v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalType:I

    .line 116
    iput v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaveType:I

    .line 125
    new-instance v0, Lcom/lzx/iteam/ApprovalCreateActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ApprovalCreateActivity$1;-><init>(Lcom/lzx/iteam/ApprovalCreateActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mHandler:Landroid/os/Handler;

    .line 718
    new-instance v0, Lcom/lzx/iteam/ApprovalCreateActivity$2;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ApprovalCreateActivity$2;-><init>(Lcom/lzx/iteam/ApprovalCreateActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->scrollListener:Lcom/lzx/iteam/selectdate/OnWheelScrollListener;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ApprovalCreateActivity;)V
    .locals 0

    .prologue
    .line 751
    invoke-direct {p0}, Lcom/lzx/iteam/ApprovalCreateActivity;->httpReqDlgDismiss()V

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/ApprovalCreateActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/ApprovalCreateActivity;->showShortToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10(Lcom/lzx/iteam/ApprovalCreateActivity;I)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartMonth:I

    return-void
.end method

.method static synthetic access$11(Lcom/lzx/iteam/ApprovalCreateActivity;I)V
    .locals 0

    .prologue
    .line 105
    iput p1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartDay:I

    return-void
.end method

.method static synthetic access$12(Lcom/lzx/iteam/ApprovalCreateActivity;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->c:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lzx/iteam/ApprovalCreateActivity;)I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartMonth:I

    return v0
.end method

.method static synthetic access$14(Lcom/lzx/iteam/ApprovalCreateActivity;)I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartDay:I

    return v0
.end method

.method static synthetic access$15(Lcom/lzx/iteam/ApprovalCreateActivity;J)V
    .locals 1

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartDate:J

    return-void
.end method

.method static synthetic access$16(Lcom/lzx/iteam/ApprovalCreateActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTvStart:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/lzx/iteam/ApprovalCreateActivity;)J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartDate:J

    return-wide v0
.end method

.method static synthetic access$18(Lcom/lzx/iteam/ApprovalCreateActivity;I)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartpart:I

    return-void
.end method

.method static synthetic access$19(Lcom/lzx/iteam/ApprovalCreateActivity;I)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEndMonth:I

    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/ApprovalCreateActivity;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->curYear:I

    return v0
.end method

.method static synthetic access$20(Lcom/lzx/iteam/ApprovalCreateActivity;I)V
    .locals 0

    .prologue
    .line 105
    iput p1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEndDay:I

    return-void
.end method

.method static synthetic access$21(Lcom/lzx/iteam/ApprovalCreateActivity;)I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartpart:I

    return v0
.end method

.method static synthetic access$22(Lcom/lzx/iteam/ApprovalCreateActivity;I)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEndPart:I

    return-void
.end method

.method static synthetic access$23(Lcom/lzx/iteam/ApprovalCreateActivity;J)V
    .locals 1

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEndDate:J

    return-void
.end method

.method static synthetic access$24(Lcom/lzx/iteam/ApprovalCreateActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTvEnd:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$25(Lcom/lzx/iteam/ApprovalCreateActivity;)J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEndDate:J

    return-wide v0
.end method

.method static synthetic access$26(Lcom/lzx/iteam/ApprovalCreateActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEtDays:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$27(Lcom/lzx/iteam/ApprovalCreateActivity;)I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEndPart:I

    return v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/ApprovalCreateActivity;)Lcom/lzx/iteam/selectdate/WheelView;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/ApprovalCreateActivity;)Lcom/lzx/iteam/selectdate/WheelView;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/ApprovalCreateActivity;Lcom/lzx/iteam/selectdate/WheelView;II)V
    .locals 0

    .prologue
    .line 692
    invoke-direct {p0, p1, p2, p3}, Lcom/lzx/iteam/ApprovalCreateActivity;->initDay(Lcom/lzx/iteam/selectdate/WheelView;II)V

    return-void
.end method

.method static synthetic access$6(Lcom/lzx/iteam/ApprovalCreateActivity;)Lcom/lzx/iteam/selectdate/WheelView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->morning_After:Lcom/lzx/iteam/selectdate/WheelView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/ApprovalCreateActivity;)I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalType:I

    return v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/ApprovalCreateActivity;)I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->curMonth:I

    return v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/ApprovalCreateActivity;)I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->curDate:I

    return v0
.end method

.method private checkMessage()I
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x4

    const/4 v1, -0x1

    .line 419
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEtLeavePlace:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTravelPlace:Ljava/lang/String;

    .line 420
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEtDays:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "leaveDays":Ljava/lang/String;
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEtReason:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaveReason:Ljava/lang/String;

    .line 424
    iget v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalType:I

    packed-switch v2, :pswitch_data_0

    .line 443
    :cond_0
    :pswitch_0
    iget-wide v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartDate:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 444
    const-string v2, "\u8bf7\u9009\u62e9\u5f00\u59cb\u65f6\u95f4"

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->showShortToast(Ljava/lang/String;)V

    .line 476
    :goto_0
    return v1

    .line 426
    :pswitch_1
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTravelPlace:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    const-string v2, "\u8bf7\u586b\u5199\u51fa\u5dee\u5730\u70b9"

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->showShortToast(Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :pswitch_2
    iget v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaveType:I

    if-ne v2, v1, :cond_0

    .line 433
    const-string v2, "\u8bf7\u9009\u62e9\u8bf7\u5047\u7c7b\u578b"

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->showShortToast(Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :cond_1
    iget-wide v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEndDate:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    iget v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalType:I

    if-eq v2, v4, :cond_2

    .line 448
    const-string v2, "\u8bf7\u9009\u62e9\u7ed3\u675f\u65f6\u95f4"

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->showShortToast(Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_2
    iget v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalType:I

    if-eq v2, v4, :cond_5

    .line 452
    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8bf7\u586b\u5199"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u7684\u5929\u6570"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->showShortToast(Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_3
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaveDays:F

    .line 457
    const-string v2, "\u5929\u6570+\u65f6\u957f"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5929\u6570 == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaveDays:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaveDays:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    rem-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_4

    .line 459
    const-string v2, "\u5929\u6570\u6700\u5c0f\u5355\u4f4d\u662f0.5"

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->showShortToast(Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_4
    const-string v2, "\u5929\u6570+\u65f6\u957f"

    const-string v3, "\u6b63\u786e"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_5
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaveReason:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8bf7\u586b\u5199"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u7684\u7406\u7531"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->showShortToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 472
    :cond_6
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaderUid:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 473
    const-string v2, "\u8bf7\u9009\u62e9\u5ba1\u6279\u4eba"

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ApprovalCreateActivity;->showShortToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 476
    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private createApproval()V
    .locals 8

    .prologue
    .line 483
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 485
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "approval_type"

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalType:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "approval_group_id"

    iget-object v4, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_group_id()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "approval_start_time"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartDate:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "approval_start_part"

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartpart:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "approval_reason"

    iget-object v4, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaveReason:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "approve_admin"

    iget-object v4, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaderUid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    iget v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 494
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "approval_end_time"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEndDate:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "approval_end_part"

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEndPart:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "approval_day"

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaveDays:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    iget v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 499
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "approval_address"

    iget-object v4, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTravelPlace:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_0
    :goto_0
    new-instance v0, Lcom/lzx/iteam/net/CreateApprovalMsg;

    iget-object v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7532

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/CreateApprovalMsg;-><init>(Landroid/os/Message;)V

    .line 505
    .local v0, "msg":Lcom/lzx/iteam/net/CreateApprovalMsg;
    const-string v2, "/api/event/approval/new"

    iput-object v2, v0, Lcom/lzx/iteam/net/CreateApprovalMsg;->mApi:Ljava/lang/String;

    .line 506
    iput-object v1, v0, Lcom/lzx/iteam/net/CreateApprovalMsg;->mParams:Ljava/util/List;

    .line 507
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 509
    return-void

    .line 500
    .end local v0    # "msg":Lcom/lzx/iteam/net/CreateApprovalMsg;
    :cond_1
    iget v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 501
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "approval_leave_type"

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaveType:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private httpReqDlgDismiss()V
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mWaitDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 754
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mWaitDialog:Landroid/app/Dialog;

    .line 756
    :cond_0
    return-void
.end method

.method private httpReqDlgShow()V
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mWaitDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->waitDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mWaitDialog:Landroid/app/Dialog;

    .line 741
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 746
    :cond_0
    return-void
.end method

.method private initDay(Lcom/lzx/iteam/selectdate/WheelView;II)V
    .locals 4
    .param p1, "wheelView"    # Lcom/lzx/iteam/selectdate/WheelView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    const/4 v3, 0x1

    .line 693
    invoke-static {p2, p3}, Lcom/lzx/iteam/util/Constants;->getDay(II)I

    move-result v0

    .line 694
    .local v0, "count":I
    new-instance v1, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;

    const-string v2, "%02d"

    invoke-direct {v1, p0, v3, v0, v2}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 695
    .local v1, "numericWheelAdapter":Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;
    const-string v2, " \u65e5"

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->setLabel(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p1, v1}, Lcom/lzx/iteam/selectdate/WheelView;->setViewAdapter(Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;)V

    .line 698
    invoke-virtual {p1, v3}, Lcom/lzx/iteam/selectdate/WheelView;->setCyclic(Z)V

    .line 700
    invoke-virtual {p1}, Lcom/lzx/iteam/selectdate/WheelView;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-le v2, v0, :cond_0

    .line 701
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 703
    :cond_0
    return-void
.end method

.method private initMonth(Lcom/lzx/iteam/selectdate/WheelView;)V
    .locals 4
    .param p1, "wheelView"    # Lcom/lzx/iteam/selectdate/WheelView;

    .prologue
    const/4 v3, 0x1

    .line 682
    new-instance v0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;

    const/16 v1, 0xc

    const-string v2, "%02d"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 683
    .local v0, "numericWheelAdapter":Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;
    const-string v1, " \u6708"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->setLabel(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p1, v0}, Lcom/lzx/iteam/selectdate/WheelView;->setViewAdapter(Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;)V

    .line 686
    invoke-virtual {p1, v3}, Lcom/lzx/iteam/selectdate/WheelView;->setCyclic(Z)V

    .line 687
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->scrollListener:Lcom/lzx/iteam/selectdate/OnWheelScrollListener;

    invoke-virtual {p1, v1}, Lcom/lzx/iteam/selectdate/WheelView;->addScrollingListener(Lcom/lzx/iteam/selectdate/OnWheelScrollListener;)V

    .line 688
    return-void
.end method

.method private initRain(Lcom/lzx/iteam/selectdate/WheelView;)V
    .locals 3
    .param p1, "wheelView"    # Lcom/lzx/iteam/selectdate/WheelView;

    .prologue
    const/4 v2, 0x0

    .line 710
    new-instance v0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v2, v1}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    .line 711
    .local v0, "numericWheelAdapter":Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;
    invoke-virtual {p1, v0}, Lcom/lzx/iteam/selectdate/WheelView;->setViewAdapter(Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;)V

    .line 712
    invoke-virtual {p1, v2}, Lcom/lzx/iteam/selectdate/WheelView;->setCyclic(Z)V

    .line 713
    return-void
.end method

.method private initYear(Lcom/lzx/iteam/selectdate/WheelView;I)V
    .locals 2
    .param p1, "wheelView"    # Lcom/lzx/iteam/selectdate/WheelView;
    .param p2, "curYear"    # I

    .prologue
    .line 671
    new-instance v0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;

    invoke-direct {v0, p0, p2, p2}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    .line 672
    .local v0, "numericWheelAdapter":Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;
    const-string v1, " \u5e74"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->setLabel(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p1, v0}, Lcom/lzx/iteam/selectdate/WheelView;->setViewAdapter(Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;)V

    .line 675
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/lzx/iteam/selectdate/WheelView;->setCyclic(Z)V

    .line 676
    return-void
.end method

.method private setData()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 191
    iget v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalType:I

    packed-switch v1, :pswitch_data_0

    .line 264
    :goto_0
    iget-wide v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartDate:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 265
    iget-wide v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartDate:J

    mul-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/DateUtil;->getMonth(J)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartMonth:I

    .line 266
    iget-wide v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartDate:J

    mul-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/DateUtil;->getDay(J)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartDay:I

    .line 267
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_start_part()I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartpart:I

    .line 268
    iget v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartpart:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v0, " \u4e0a\u5348"

    .line 269
    .local v0, "M_a":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTvStart:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartDate:J

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/lzx/iteam/util/DateUtil;->formatDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    .end local v0    # "M_a":Ljava/lang/String;
    :cond_0
    return-void

    .line 193
    :pswitch_0
    const-string v1, "\u51fa\u5dee"

    iput-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalName:Ljava/lang/String;

    .line 194
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTvTitle:Landroid/widget/TextView;

    const-string v2, "\u51fa\u5dee\u7533\u8bf7"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mRlLeavePlace:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 196
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_address()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTravelPlace:Ljava/lang/String;

    .line 197
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTravelPlace:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEtLeavePlace:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTravelPlace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTvDays:Landroid/widget/TextView;

    const-string v2, "\u51fa\u5dee\u5929\u6570"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTvReason:Landroid/widget/TextView;

    const-string v2, "\u51fa\u5dee\u4e8b\u7531"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEtReason:Landroid/widget/EditText;

    const-string v2, "\u8bf7\u8f93\u5165\u51fa\u5dee\u7684\u7406\u7531"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 205
    :pswitch_1
    const-string v1, "\u8bf7\u5047"

    iput-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalName:Ljava/lang/String;

    .line 206
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTvTitle:Landroid/widget/TextView;

    const-string v2, "\u8bf7\u5047\u7533\u8bf7"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mRlLeaveType:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 208
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTvReason:Landroid/widget/TextView;

    const-string v2, "\u8bf7\u5047\u4e8b\u7531"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEtReason:Landroid/widget/EditText;

    const-string v2, "\u8bf7\u8f93\u5165\u8bf7\u5047\u7684\u7406\u7531"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 243
    :pswitch_2
    const-string v1, "\u5916\u51fa"

    iput-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalName:Ljava/lang/String;

    .line 244
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTvTitle:Landroid/widget/TextView;

    const-string v2, "\u5916\u51fa\u7533\u8bf7"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTvDays:Landroid/widget/TextView;

    const-string v2, "\u5916\u51fa\u5929\u6570"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTvReason:Landroid/widget/TextView;

    const-string v2, "\u5916\u51fa\u4e8b\u7531"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEtReason:Landroid/widget/EditText;

    const-string v2, "\u8bf7\u8f93\u5165\u5916\u51fa\u7684\u7406\u7531"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEtDays:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    goto/16 :goto_0

    .line 252
    :pswitch_3
    const-string v1, "\u7533\u8bc9"

    iput-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalName:Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTvStartTitle:Landroid/widget/TextView;

    const-string v2, "\u7533\u8bc9\u65f6\u95f4"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTvTitle:Landroid/widget/TextView;

    const-string v2, "\u7b7e\u5230\u7533\u8bc9"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mRlDays:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 256
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mViewMagin:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mRlEndTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 258
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mRlDays:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 259
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTvReason:Landroid/widget/TextView;

    const-string v2, "\u7533\u8bc9\u4e8b\u7531"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEtReason:Landroid/widget/EditText;

    const-string v2, "\u8bf7\u8f93\u5165\u7533\u8bc9\u7684\u7406\u7531"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 268
    :cond_2
    const-string v0, " \u4e0b\u5348"

    goto/16 :goto_1

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showMorningAndAfter(Z)V
    .locals 12
    .param p1, "isStart"    # Z

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 518
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 519
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 520
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 521
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 522
    .local v5, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 523
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const v6, 0x3e99999a    # 0.3f

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 525
    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 527
    const v6, 0x7f03000c

    invoke-virtual {v5, v6}, Landroid/view/Window;->setContentView(I)V

    .line 529
    invoke-virtual {v5, v8, v8}, Landroid/view/Window;->setLayout(II)V

    .line 531
    const v6, 0x7f09000b

    invoke-virtual {v5, v6}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 534
    const v6, 0x7f0e0049

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lzx/iteam/selectdate/WheelView;

    iput-object v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->year:Lcom/lzx/iteam/selectdate/WheelView;

    .line 535
    iget-object v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->year:Lcom/lzx/iteam/selectdate/WheelView;

    iget v7, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->curYear:I

    invoke-direct {p0, v6, v7}, Lcom/lzx/iteam/ApprovalCreateActivity;->initYear(Lcom/lzx/iteam/selectdate/WheelView;I)V

    .line 536
    const v6, 0x7f0e004a

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lzx/iteam/selectdate/WheelView;

    iput-object v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;

    .line 537
    iget-object v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-direct {p0, v6}, Lcom/lzx/iteam/ApprovalCreateActivity;->initMonth(Lcom/lzx/iteam/selectdate/WheelView;)V

    .line 538
    const v6, 0x7f0e004b

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lzx/iteam/selectdate/WheelView;

    iput-object v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    .line 539
    iget-object v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    iget v7, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->curYear:I

    iget v8, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->curMonth:I

    invoke-direct {p0, v6, v7, v8}, Lcom/lzx/iteam/ApprovalCreateActivity;->initDay(Lcom/lzx/iteam/selectdate/WheelView;II)V

    .line 540
    const v6, 0x7f0e004c

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lzx/iteam/selectdate/WheelView;

    iput-object v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->morning_After:Lcom/lzx/iteam/selectdate/WheelView;

    .line 541
    iget-object v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->morning_After:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-direct {p0, v6}, Lcom/lzx/iteam/ApprovalCreateActivity;->initRain(Lcom/lzx/iteam/selectdate/WheelView;)V

    .line 544
    iget-object v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->year:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v6, v9}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 545
    if-eqz p1, :cond_3

    .line 546
    iget v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartMonth:I

    if-eqz v6, :cond_0

    .line 547
    iget-object v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;

    iget v7, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartMonth:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 551
    :goto_0
    iget v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartDay:I

    if-eqz v6, :cond_1

    .line 552
    iget-object v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    iget v7, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartDay:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 556
    :goto_1
    iget v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartpart:I

    if-eqz v6, :cond_2

    .line 557
    iget-object v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->morning_After:Lcom/lzx/iteam/selectdate/WheelView;

    iget v7, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartpart:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 587
    :goto_2
    const v6, 0x7f0e0048

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 588
    .local v4, "ok":Landroid/widget/TextView;
    const v6, 0x7f0e0047

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 589
    .local v0, "cancel":Landroid/widget/TextView;
    new-instance v6, Lcom/lzx/iteam/ApprovalCreateActivity$3;

    invoke-direct {v6, p0, p1, v2}, Lcom/lzx/iteam/ApprovalCreateActivity$3;-><init>(Lcom/lzx/iteam/ApprovalCreateActivity;ZLandroid/app/AlertDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    new-instance v6, Lcom/lzx/iteam/ApprovalCreateActivity$4;

    invoke-direct {v6, p0, v2}, Lcom/lzx/iteam/ApprovalCreateActivity$4;-><init>(Lcom/lzx/iteam/ApprovalCreateActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    const v6, 0x7f0e0046

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 657
    .local v1, "cancelLayout":Landroid/widget/LinearLayout;
    new-instance v6, Lcom/lzx/iteam/ApprovalCreateActivity$5;

    invoke-direct {v6, p0, v2}, Lcom/lzx/iteam/ApprovalCreateActivity$5;-><init>(Lcom/lzx/iteam/ApprovalCreateActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 664
    return-void

    .line 549
    .end local v0    # "cancel":Landroid/widget/TextView;
    .end local v1    # "cancelLayout":Landroid/widget/LinearLayout;
    .end local v4    # "ok":Landroid/widget/TextView;
    :cond_0
    iget-object v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;

    iget v7, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->curMonth:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto :goto_0

    .line 554
    :cond_1
    iget-object v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    iget v7, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->curDate:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto :goto_1

    .line 559
    :cond_2
    iget-object v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->morning_After:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v6, v9}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto :goto_2

    .line 563
    :cond_3
    iget v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEndMonth:I

    if-eqz v6, :cond_4

    .line 564
    iget-object v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;

    iget v7, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEndMonth:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 568
    :goto_3
    iget v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEndDay:I

    if-eqz v6, :cond_5

    .line 569
    iget-object v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    iget v7, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEndDay:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 573
    :goto_4
    iget v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEndPart:I

    if-eqz v6, :cond_6

    .line 574
    iget-object v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->morning_After:Lcom/lzx/iteam/selectdate/WheelView;

    iget v7, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEndPart:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto :goto_2

    .line 566
    :cond_4
    iget-object v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;

    iget v7, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->curMonth:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto :goto_3

    .line 571
    :cond_5
    iget-object v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    iget v7, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->curDate:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto :goto_4

    .line 576
    :cond_6
    iget v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalType:I

    if-eq v6, v10, :cond_7

    iget v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalType:I

    if-ne v6, v11, :cond_8

    .line 577
    :cond_7
    iput v11, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mEndPart:I

    .line 578
    iget-object v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->morning_After:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v6, v10}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto/16 :goto_2

    .line 580
    :cond_8
    iget-object v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->morning_After:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v6, v9}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto/16 :goto_2
.end method

.method private showReasonDialog()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    .line 386
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 387
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 386
    iput-object v9, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mDialogReason:Landroid/app/AlertDialog;

    .line 388
    iget-object v9, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mDialogReason:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 389
    iget-object v9, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mDialogReason:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 390
    .local v8, "window":Landroid/view/Window;
    iget-object v9, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mDialogReason:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 391
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const v9, 0x3e99999a    # 0.3f

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 393
    invoke-virtual {v8, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 395
    const v9, 0x7f030016

    invoke-virtual {v8, v9}, Landroid/view/Window;->setContentView(I)V

    .line 397
    invoke-virtual {v8, v11, v11}, Landroid/view/Window;->setLayout(II)V

    .line 399
    const v9, 0x7f09000b

    invoke-virtual {v8, v9}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 401
    const v9, 0x7f0e00ab

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 402
    .local v3, "reason1":Landroid/widget/TextView;
    const v9, 0x7f0e00ac

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 403
    .local v4, "reason2":Landroid/widget/TextView;
    const v9, 0x7f0e00ad

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 404
    .local v5, "reason3":Landroid/widget/TextView;
    const v9, 0x7f0e00ae

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 405
    .local v6, "reason4":Landroid/widget/TextView;
    const v9, 0x7f0e00af

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 406
    .local v7, "reason5":Landroid/widget/TextView;
    const v9, 0x7f0e00b0

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 407
    .local v0, "cancel":Landroid/widget/TextView;
    const v9, 0x7f0e0046

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 408
    .local v1, "cancelLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    return-void
.end method


# virtual methods
.method public initData()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 164
    invoke-virtual {p0}, Lcom/lzx/iteam/ApprovalCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 165
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "action":Ljava/lang/String;
    const-string v3, "attendance_to_approval"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mRlStartTime:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 171
    :cond_0
    :goto_0
    const-string v3, "approvalData"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/ApprovalData;

    iput-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApData:Lcom/lzx/iteam/bean/ApprovalData;

    .line 172
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApData:Lcom/lzx/iteam/bean/ApprovalData;

    if-eqz v3, :cond_1

    .line 173
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_type()I

    move-result v3

    iput v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApprovalType:I

    .line 174
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_start_time()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "time":Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 176
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_start_time()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartDate:J

    .line 177
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_start_part()I

    move-result v3

    iput v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartpart:I

    .line 181
    .end local v2    # "time":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mIvMember:Lcom/lzx/iteam/widget/RoundImageView;

    iget-object v4, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mActivity:Landroid/app/Activity;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v4, v5}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/widget/RoundImageView;->setRectAdius(F)V

    .line 182
    invoke-direct {p0}, Lcom/lzx/iteam/ApprovalCreateActivity;->setData()V

    .line 183
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->c:Ljava/util/Calendar;

    .line 184
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->curYear:I

    .line 185
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->c:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->curMonth:I

    .line 186
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->c:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->curDate:I

    .line 188
    return-void

    .line 168
    :cond_2
    const-string v3, "create_approval"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mRlStartTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_0
.end method

.method public initListener()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLayoutBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mRlLeaveType:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mRlStartTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mRlEndTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mRlMember:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTvSubmit:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 767
    invoke-super {p0, p1, p2, p3}, Lcom/lzx/iteam/base/MyBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 768
    if-ne p2, v2, :cond_2

    .line 769
    packed-switch p1, :pswitch_data_0

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 771
    :pswitch_0
    const-string v1, "leader"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ScheduleManager;

    .line 772
    .local v0, "leader":Lcom/lzx/iteam/bean/ScheduleManager;
    if-eqz v0, :cond_1

    .line 773
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleManager;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaderUid:Ljava/lang/String;

    .line 774
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleManager;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaderImage:Ljava/lang/String;

    .line 775
    sget-object v1, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v2, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaderImage:Ljava/lang/String;

    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mIvMember:Lcom/lzx/iteam/widget/RoundImageView;

    sget-object v4, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 776
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTvMember:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 778
    :cond_1
    const-string v1, "leader_msg"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " leader_msg == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaderUid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaderImage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 782
    .end local v0    # "leader":Lcom/lzx/iteam/bean/ScheduleManager;
    :cond_2
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaderUid:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 783
    sput v2, Lcom/lzx/iteam/ScheduleManagerActivity;->mSelectPosition:I

    goto :goto_0

    .line 769
    :pswitch_data_0
    .packed-switch 0x7531
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 304
    :sswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/ApprovalCreateActivity;->finish()V

    goto :goto_0

    .line 308
    :sswitch_1
    :try_start_0
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/ApprovalCreateActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_1
    invoke-direct {p0, v6}, Lcom/lzx/iteam/ApprovalCreateActivity;->showMorningAndAfter(Z)V

    goto :goto_0

    .line 309
    :catch_0
    move-exception v2

    .line 310
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 316
    .end local v2    # "e":Ljava/lang/Exception;
    :sswitch_2
    :try_start_1
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/ApprovalCreateActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 320
    :goto_2
    iget-wide v4, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mStartDate:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 321
    const-string v3, "\u8bf7\u5148\u9009\u62e9\u5f00\u59cb\u65f6\u95f4"

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->showShortToast(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :catch_1
    move-exception v2

    .line 318
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 323
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, v8}, Lcom/lzx/iteam/ApprovalCreateActivity;->showMorningAndAfter(Z)V

    goto :goto_0

    .line 328
    :sswitch_3
    :try_start_2
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/ApprovalCreateActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 332
    :goto_3
    invoke-direct {p0}, Lcom/lzx/iteam/ApprovalCreateActivity;->showReasonDialog()V

    goto :goto_0

    .line 329
    :catch_2
    move-exception v2

    .line 330
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 335
    .end local v2    # "e":Ljava/lang/Exception;
    :sswitch_4
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/lzx/iteam/ScheduleManagerActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    .local v1, "choose":Landroid/content/Intent;
    const-string v3, "approval_leader_select"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v3, "group_id"

    iget-object v4, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mApData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_group_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const/16 v3, 0x7531

    invoke-virtual {p0, v1, v3}, Lcom/lzx/iteam/ApprovalCreateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 341
    .end local v1    # "choose":Landroid/content/Intent;
    :sswitch_5
    invoke-direct {p0}, Lcom/lzx/iteam/ApprovalCreateActivity;->checkMessage()I

    move-result v0

    .line 342
    .local v0, "check":I
    if-ne v0, v6, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/lzx/iteam/ApprovalCreateActivity;->httpReqDlgShow()V

    .line 344
    invoke-direct {p0}, Lcom/lzx/iteam/ApprovalCreateActivity;->createApproval()V

    goto/16 :goto_0

    .line 348
    .end local v0    # "check":I
    :sswitch_6
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTvLeaveType:Landroid/widget/TextView;

    const v4, 0x7f08019d

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/ApprovalCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iput v8, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaveType:I

    .line 350
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mDialogReason:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 353
    :sswitch_7
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTvLeaveType:Landroid/widget/TextView;

    const v4, 0x7f08019e

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/ApprovalCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iput v6, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaveType:I

    .line 355
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mDialogReason:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 358
    :sswitch_8
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTvLeaveType:Landroid/widget/TextView;

    const v4, 0x7f08019f

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/ApprovalCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iput v5, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaveType:I

    .line 360
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mDialogReason:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 363
    :sswitch_9
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTvLeaveType:Landroid/widget/TextView;

    const v4, 0x7f0801a0

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/ApprovalCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    const/4 v3, 0x3

    iput v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaveType:I

    .line 365
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mDialogReason:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 368
    :sswitch_a
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mTvLeaveType:Landroid/widget/TextView;

    const v4, 0x7f0801a1

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/ApprovalCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    const/4 v3, 0x4

    iput v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mLeaveType:I

    .line 370
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mDialogReason:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 373
    :sswitch_b
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mDialogReason:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 376
    :sswitch_c
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalCreateActivity;->mDialogReason:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 302
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0046 -> :sswitch_c
        0x7f0e0056 -> :sswitch_0
        0x7f0e0058 -> :sswitch_3
        0x7f0e005f -> :sswitch_1
        0x7f0e0063 -> :sswitch_2
        0x7f0e006e -> :sswitch_4
        0x7f0e0073 -> :sswitch_5
        0x7f0e00ab -> :sswitch_6
        0x7f0e00ac -> :sswitch_7
        0x7f0e00ad -> :sswitch_8
        0x7f0e00ae -> :sswitch_9
        0x7f0e00af -> :sswitch_a
        0x7f0e00b0 -> :sswitch_b
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    const v0, 0x7f03000f

    invoke-super {p0, p1, v0}, Lcom/lzx/iteam/base/MyBaseActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 148
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 761
    const/4 v0, -0x1

    sput v0, Lcom/lzx/iteam/ScheduleManagerActivity;->mSelectPosition:I

    .line 762
    invoke-super {p0}, Lcom/lzx/iteam/base/MyBaseActivity;->onDestroy()V

    .line 763
    return-void
.end method
