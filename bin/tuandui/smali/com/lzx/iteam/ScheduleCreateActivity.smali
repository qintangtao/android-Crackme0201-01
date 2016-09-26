.class public Lcom/lzx/iteam/ScheduleCreateActivity;
.super Landroid/app/Activity;
.source "ScheduleCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ADD_SCHEDULE_MSG:I = 0x3e8

.field private static final UPDATE_SCHEDULE_MSG:I = 0x3e9


# instance fields
.field private c:Ljava/util/Calendar;

.field private curDate:I

.field private curHour:I

.field private curMinute:I

.field private curMonth:I

.field private curYear:I

.field private day:Lcom/lzx/iteam/selectdate/WheelView;

.field private eventId:Ljava/lang/String;

.field private hour:Lcom/lzx/iteam/selectdate/WheelView;

.field private mAction:Ljava/lang/String;

.field private mAddress:Ljava/lang/String;

.field private mAlertTime:J

.field private mBossUid:Ljava/lang/String;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mDateSelectPop:Landroid/widget/PopupWindow;

.field private mEndDay:I

.field private mEndHour:I

.field private mEndMinute:I

.field private mEndMonth:I

.field private mEndTime:J

.field private mEndYear:I

.field private mEtAddress:Landroid/widget/EditText;

.field private mEtRemark:Landroid/widget/EditText;

.field private mEtTheme:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mLimit:Ljava/lang/String;

.field private mLlBack:Landroid/widget/LinearLayout;

.field private mOldTime:Ljava/lang/String;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mRemark:Ljava/lang/String;

.field private mRlEndTimeLayout:Landroid/widget/RelativeLayout;

.field private mRlLimit:Landroid/widget/RelativeLayout;

.field private mRlNotice:Landroid/widget/RelativeLayout;

.field private mRlRemind:Landroid/widget/RelativeLayout;

.field private mRlTimeLayout:Landroid/widget/RelativeLayout;

.field private mScheduleDb:Lcom/lzx/iteam/provider/ScheduleDB;

.field private mScheduleTime:Ljava/lang/String;

.field private mStartDay:I

.field private mStartHour:I

.field private mStartMinute:I

.field private mStartMonth:I

.field private mStartTime:J

.field private mStartYear:I

.field private mTbLimit:Landroid/widget/ToggleButton;

.field private mTbNotice:Landroid/widget/ToggleButton;

.field private mTimeContinuePop:Landroid/widget/PopupWindow;

.field private mTimeRemindPop:Landroid/widget/PopupWindow;

.field private mTitle:Ljava/lang/String;

.field private mTvComplete:Landroid/widget/TextView;

.field private mTvEndTime:Landroid/widget/TextView;

.field private mTvRemind:Landroid/widget/TextView;

.field private mTvTime:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private mType:Ljava/lang/String;

.field private mUpdate:Ljava/lang/String;

.field private mins:Lcom/lzx/iteam/selectdate/WheelView;

.field private month:Lcom/lzx/iteam/selectdate/WheelView;

.field private scheduleData:Lcom/lzx/iteam/bean/ScheduleData;

.field scrollListener:Lcom/lzx/iteam/selectdate/OnWheelScrollListener;

.field private year:Lcom/lzx/iteam/selectdate/WheelView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    new-instance v0, Lcom/lzx/iteam/bean/ScheduleData;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/ScheduleData;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;

    .line 89
    new-instance v0, Lcom/lzx/iteam/ScheduleCreateActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ScheduleCreateActivity$1;-><init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mHandler:Landroid/os/Handler;

    .line 759
    new-instance v0, Lcom/lzx/iteam/ScheduleCreateActivity$2;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ScheduleCreateActivity$2;-><init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scrollListener:Lcom/lzx/iteam/selectdate/OnWheelScrollListener;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ScheduleCreateActivity;)Lcom/lzx/iteam/bean/ScheduleData;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/ScheduleCreateActivity;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartYear:I

    return v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/ScheduleCreateActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeRemindPop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lzx/iteam/ScheduleCreateActivity;I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartYear:I

    return-void
.end method

.method static synthetic access$12(Lcom/lzx/iteam/ScheduleCreateActivity;I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartMonth:I

    return-void
.end method

.method static synthetic access$13(Lcom/lzx/iteam/ScheduleCreateActivity;)Lcom/lzx/iteam/selectdate/WheelView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/lzx/iteam/ScheduleCreateActivity;I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartDay:I

    return-void
.end method

.method static synthetic access$15(Lcom/lzx/iteam/ScheduleCreateActivity;)Lcom/lzx/iteam/selectdate/WheelView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lzx/iteam/ScheduleCreateActivity;I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartHour:I

    return-void
.end method

.method static synthetic access$17(Lcom/lzx/iteam/ScheduleCreateActivity;)Lcom/lzx/iteam/selectdate/WheelView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/lzx/iteam/ScheduleCreateActivity;I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartMinute:I

    return-void
.end method

.method static synthetic access$19(Lcom/lzx/iteam/ScheduleCreateActivity;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->c:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/ScheduleCreateActivity;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartMonth:I

    return v0
.end method

.method static synthetic access$20(Lcom/lzx/iteam/ScheduleCreateActivity;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartHour:I

    return v0
.end method

.method static synthetic access$21(Lcom/lzx/iteam/ScheduleCreateActivity;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartMinute:I

    return v0
.end method

.method static synthetic access$22(Lcom/lzx/iteam/ScheduleCreateActivity;J)V
    .locals 1

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    return-void
.end method

.method static synthetic access$23(Lcom/lzx/iteam/ScheduleCreateActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mScheduleTime:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$24(Lcom/lzx/iteam/ScheduleCreateActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$25(Lcom/lzx/iteam/ScheduleCreateActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mScheduleTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$26(Lcom/lzx/iteam/ScheduleCreateActivity;I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndYear:I

    return-void
.end method

.method static synthetic access$27(Lcom/lzx/iteam/ScheduleCreateActivity;I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndMonth:I

    return-void
.end method

.method static synthetic access$28(Lcom/lzx/iteam/ScheduleCreateActivity;I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndDay:I

    return-void
.end method

.method static synthetic access$29(Lcom/lzx/iteam/ScheduleCreateActivity;I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndHour:I

    return-void
.end method

.method static synthetic access$3(Lcom/lzx/iteam/ScheduleCreateActivity;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartDay:I

    return v0
.end method

.method static synthetic access$30(Lcom/lzx/iteam/ScheduleCreateActivity;I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndMinute:I

    return-void
.end method

.method static synthetic access$31(Lcom/lzx/iteam/ScheduleCreateActivity;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndYear:I

    return v0
.end method

.method static synthetic access$32(Lcom/lzx/iteam/ScheduleCreateActivity;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndMonth:I

    return v0
.end method

.method static synthetic access$33(Lcom/lzx/iteam/ScheduleCreateActivity;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndDay:I

    return v0
.end method

.method static synthetic access$34(Lcom/lzx/iteam/ScheduleCreateActivity;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndHour:I

    return v0
.end method

.method static synthetic access$35(Lcom/lzx/iteam/ScheduleCreateActivity;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndMinute:I

    return v0
.end method

.method static synthetic access$36(Lcom/lzx/iteam/ScheduleCreateActivity;J)V
    .locals 1

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndTime:J

    return-void
.end method

.method static synthetic access$37(Lcom/lzx/iteam/ScheduleCreateActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvEndTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$38(Lcom/lzx/iteam/ScheduleCreateActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$39(Lcom/lzx/iteam/ScheduleCreateActivity;)J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/ScheduleCreateActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method static synthetic access$40(Lcom/lzx/iteam/ScheduleCreateActivity;)V
    .locals 0

    .prologue
    .line 992
    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCreateActivity;->setEndTime()V

    return-void
.end method

.method static synthetic access$41(Lcom/lzx/iteam/ScheduleCreateActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/ScheduleCreateActivity;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->curYear:I

    return v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/ScheduleCreateActivity;)Lcom/lzx/iteam/selectdate/WheelView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/ScheduleCreateActivity;II)V
    .locals 0

    .prologue
    .line 841
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/ScheduleCreateActivity;->initDay(II)V

    return-void
.end method

.method static synthetic access$8(Lcom/lzx/iteam/ScheduleCreateActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvRemind:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/ScheduleCreateActivity;J)V
    .locals 1

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mAlertTime:J

    return-void
.end method

.method private addRemindTime(I)J
    .locals 2
    .param p1, "time"    # I

    .prologue
    .line 974
    mul-int/lit8 v0, p1, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method private addScheduleMsg()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 901
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 902
    .local v0, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 903
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 904
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event_type"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event_title"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTitle:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 906
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "address"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mAddress:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "boss_uid"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mBossUid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "start_datetime"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 909
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "end_datetime"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndTime:J

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "alert_datetime"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mAlertTime:J

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "update"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCreateActivity;->getNotice()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "hidden"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCreateActivity;->getLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "remark"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mRemark:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    const-string v2, "0"

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mBossUid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 915
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v4, "useid"

    const-string v5, "\uff0d1"

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/ScheduleData;->setPublishedUId(Ljava/lang/String;)V

    .line 919
    :goto_0
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/ScheduleData;->setType(Ljava/lang/String;)V

    .line 920
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mUpdate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/ScheduleData;->setNotice(Ljava/lang/String;)V

    .line 921
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mLimit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/ScheduleData;->setHidden(Ljava/lang/String;)V

    .line 922
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mAlertTime:J

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/ScheduleData;->setAlertTime(Ljava/lang/String;)V

    .line 923
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/ScheduleData;->setStartTime(Ljava/lang/String;)V

    .line 925
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndTime:J

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/ScheduleData;->setEndTime(Ljava/lang/String;)V

    .line 926
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/ScheduleData;->setCreateTime(Ljava/lang/String;)V

    .line 927
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mRemark:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/ScheduleData;->setRemark(Ljava/lang/String;)V

    .line 928
    new-instance v1, Lcom/lzx/iteam/net/GetScheduleMsg;

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/lzx/iteam/net/GetScheduleMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 929
    .local v1, "scheduleMsg":Lcom/lzx/iteam/net/GetScheduleMsg;
    const-string v2, "/api/event/calendar/add"

    iput-object v2, v1, Lcom/lzx/iteam/net/GetScheduleMsg;->mApi:Ljava/lang/String;

    .line 930
    iput-object v0, v1, Lcom/lzx/iteam/net/GetScheduleMsg;->mParams:Ljava/util/List;

    .line 931
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 933
    return-void

    .line 917
    .end local v1    # "scheduleMsg":Lcom/lzx/iteam/net/GetScheduleMsg;
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mBossUid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/ScheduleData;->setPublishedUId(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getDay(II)I
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 782
    const/16 v0, 0x1e

    .line 783
    .local v0, "day":I
    const/4 v1, 0x0

    .line 784
    .local v1, "flag":Z
    rem-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_0

    rem-int/lit8 v2, p1, 0x64

    if-nez v2, :cond_1

    :cond_0
    rem-int/lit16 v2, p1, 0x190

    if-nez v2, :cond_2

    .line 785
    :cond_1
    const/4 v1, 0x1

    .line 795
    :cond_2
    packed-switch p2, :pswitch_data_0

    .line 809
    :pswitch_0
    const/16 v0, 0x1e

    .line 812
    :goto_0
    return v0

    .line 803
    :pswitch_1
    const/16 v0, 0x1f

    .line 804
    goto :goto_0

    .line 806
    :pswitch_2
    if-eqz v1, :cond_3

    const/16 v0, 0x1d

    .line 807
    :goto_1
    goto :goto_0

    .line 806
    :cond_3
    const/16 v0, 0x1c

    goto :goto_1

    .line 795
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getIntentData()V
    .locals 8

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const-wide/16 v6, 0x3e8

    .line 185
    invoke-virtual {p0}, Lcom/lzx/iteam/ScheduleCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mAction:Ljava/lang/String;

    .line 187
    const-string v2, "scheduleData"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/ScheduleData;

    .line 188
    .local v1, "scheduleData":Lcom/lzx/iteam/bean/ScheduleData;
    const-string v2, "isMe"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mRlNotice:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 190
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mRlLimit:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 195
    :goto_0
    if-eqz v1, :cond_2

    .line 196
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvTitle:Landroid/widget/TextView;

    const-string v3, "\u7f16\u8f91"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleData;->getBossUid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mBossUid:Ljava/lang/String;

    .line 198
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleData;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->eventId:Ljava/lang/String;

    .line 199
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleData;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTitle:Ljava/lang/String;

    .line 200
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleData;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mAddress:Ljava/lang/String;

    .line 201
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleData;->getStartTime()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mOldTime:Ljava/lang/String;

    .line 202
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleData;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v6

    iput-wide v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    .line 203
    iget-wide v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/DateUtil;->getYear(J)I

    move-result v2

    iput v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartYear:I

    .line 204
    iget-wide v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/DateUtil;->getMonth(J)I

    move-result v2

    iput v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartMonth:I

    .line 205
    iget-wide v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/DateUtil;->getDay(J)I

    move-result v2

    iput v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartDay:I

    .line 206
    iget-wide v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/DateUtil;->getHour(J)I

    move-result v2

    iput v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartHour:I

    .line 207
    iget-wide v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/DateUtil;->getMinute(J)I

    move-result v2

    iput v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartMinute:I

    .line 208
    const-string v2, "0"

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleData;->getEndTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleData;->getEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v6

    iput-wide v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndTime:J

    .line 210
    iget-wide v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndTime:J

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/DateUtil;->getYear(J)I

    move-result v2

    iput v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndYear:I

    .line 211
    iget-wide v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndTime:J

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/DateUtil;->getMonth(J)I

    move-result v2

    iput v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndMonth:I

    .line 212
    iget-wide v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndTime:J

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/DateUtil;->getDay(J)I

    move-result v2

    iput v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndDay:I

    .line 213
    iget-wide v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndTime:J

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/DateUtil;->getHour(J)I

    move-result v2

    iput v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndHour:I

    .line 214
    iget-wide v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndTime:J

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/DateUtil;->getMinute(J)I

    move-result v2

    iput v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndMinute:I

    .line 215
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvEndTime:Landroid/widget/TextView;

    iget-wide v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndTime:J

    invoke-static {v4, v5}, Lcom/lzx/iteam/util/DateUtil;->getHourAndMin(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :cond_0
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleData;->getAlertTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v6

    iput-wide v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mAlertTime:J

    .line 218
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleData;->getNotice()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->setNotice(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleData;->getHidden()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->setLimit(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleData;->getRemark()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mRemark:Ljava/lang/String;

    .line 221
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEtTheme:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEtAddress:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEtRemark:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mRemark:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvTime:Landroid/widget/TextView;

    iget-wide v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    invoke-static {v4, v5}, Lcom/lzx/iteam/util/DateUtil;->getAllTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvRemind:Landroid/widget/TextView;

    iget-wide v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mAlertTime:J

    invoke-direct {p0, v4, v5}, Lcom/lzx/iteam/ScheduleCreateActivity;->parseRemindTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :goto_1
    return-void

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mRlNotice:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 193
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mRlLimit:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 227
    :cond_2
    const-string v2, "userId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mBossUid:Ljava/lang/String;

    goto :goto_1
.end method

.method private getLimit()I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTbLimit:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const-string v0, "1"

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mLimit:Ljava/lang/String;

    .line 366
    const/4 v0, 0x1

    .line 369
    :goto_0
    return v0

    .line 368
    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mLimit:Ljava/lang/String;

    .line 369
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNotice()I
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTbNotice:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    const-string v0, "1"

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mUpdate:Ljava/lang/String;

    .line 347
    const/4 v0, 0x1

    .line 350
    :goto_0
    return v0

    .line 349
    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mUpdate:Ljava/lang/String;

    .line 350
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initDay(II)V
    .locals 4
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    const/4 v3, 0x1

    .line 842
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/ScheduleCreateActivity;->getDay(II)I

    move-result v0

    .line 843
    .local v0, "count":I
    new-instance v1, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;

    const-string v2, "%02d"

    invoke-direct {v1, p0, v3, v0, v2}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 844
    .local v1, "numericWheelAdapter":Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;
    const-string v2, " \u65e5"

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->setLabel(Ljava/lang/String;)V

    .line 846
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/selectdate/WheelView;->setViewAdapter(Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;)V

    .line 847
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/selectdate/WheelView;->setCyclic(Z)V

    .line 849
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/WheelView;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-le v2, v0, :cond_0

    .line 850
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 852
    :cond_0
    return-void
.end method

.method private initHour()V
    .locals 4

    .prologue
    .line 858
    new-instance v0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;

    const/4 v1, 0x0

    const/16 v2, 0x17

    const-string v3, "%02d"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 859
    .local v0, "numericWheelAdapter":Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;
    const-string v1, " \u65f6"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->setLabel(Ljava/lang/String;)V

    .line 861
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/selectdate/WheelView;->setViewAdapter(Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;)V

    .line 862
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/selectdate/WheelView;->setCyclic(Z)V

    .line 863
    return-void
.end method

.method private initMins()V
    .locals 6

    .prologue
    .line 869
    new-instance v0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;

    const/4 v2, 0x0

    const/16 v3, 0xb

    const-string v4, "%02d"

    const/4 v5, 0x5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 870
    .local v0, "numericWheelAdapter":Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;
    const-string v1, " \u5206"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->setLabel(Ljava/lang/String;)V

    .line 872
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/selectdate/WheelView;->setViewAdapter(Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;)V

    .line 873
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/selectdate/WheelView;->setCyclic(Z)V

    .line 874
    return-void
.end method

.method private initMonth()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 830
    new-instance v0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;

    const/16 v1, 0xc

    const-string v2, "%02d"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 831
    .local v0, "numericWheelAdapter":Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;
    const-string v1, " \u6708"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->setLabel(Ljava/lang/String;)V

    .line 833
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/selectdate/WheelView;->setViewAdapter(Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;)V

    .line 834
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/selectdate/WheelView;->setCyclic(Z)V

    .line 835
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scrollListener:Lcom/lzx/iteam/selectdate/OnWheelScrollListener;

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/selectdate/WheelView;->addScrollingListener(Lcom/lzx/iteam/selectdate/OnWheelScrollListener;)V

    .line 836
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    const v0, 0x7f0e0596

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mLlBack:Landroid/widget/LinearLayout;

    .line 157
    const v0, 0x7f0e0597

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvTitle:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f0e0598

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvComplete:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f0e059b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvTime:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f0e059f

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvEndTime:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f0e05a8

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvRemind:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f0e05a3

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEtTheme:Landroid/widget/EditText;

    .line 163
    const v0, 0x7f0e05a6

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEtAddress:Landroid/widget/EditText;

    .line 164
    const v0, 0x7f0e05b0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEtRemark:Landroid/widget/EditText;

    .line 165
    const v0, 0x7f0e05ae

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTbNotice:Landroid/widget/ToggleButton;

    .line 166
    const v0, 0x7f0e05ac

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTbLimit:Landroid/widget/ToggleButton;

    .line 167
    const v0, 0x7f0e0599

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mRlTimeLayout:Landroid/widget/RelativeLayout;

    .line 168
    const v0, 0x7f0e059d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mRlEndTimeLayout:Landroid/widget/RelativeLayout;

    .line 169
    const v0, 0x7f0e05ad

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mRlNotice:Landroid/widget/RelativeLayout;

    .line 170
    const v0, 0x7f0e05a7

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mRlRemind:Landroid/widget/RelativeLayout;

    .line 171
    const v0, 0x7f0e05aa

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mRlLimit:Landroid/widget/RelativeLayout;

    .line 173
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTbNotice:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 174
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTbLimit:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 175
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mLlBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mRlTimeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mRlEndTimeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mRlNotice:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mRlLimit:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mRlRemind:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvComplete:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    return-void
.end method

.method private initYear(I)V
    .locals 3
    .param p1, "curYear"    # I

    .prologue
    .line 819
    new-instance v0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;

    invoke-direct {v0, p0, p1, p1}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    .line 820
    .local v0, "numericWheelAdapter":Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;
    const-string v1, " \u5e74"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->setLabel(Ljava/lang/String;)V

    .line 822
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->year:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/selectdate/WheelView;->setViewAdapter(Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;)V

    .line 823
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->year:Lcom/lzx/iteam/selectdate/WheelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/selectdate/WheelView;->setCyclic(Z)V

    .line 824
    return-void
.end method

.method private isOverTime()Z
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 877
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 879
    .local v8, "curTime":J
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->c:Ljava/util/Calendar;

    iget v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartYear:I

    iget v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartMonth:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartDay:I

    iget v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartHour:I

    iget v5, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartMinute:I

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 880
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 888
    .local v10, "selectTime":J
    cmp-long v0, v10, v8

    if-lez v0, :cond_0

    .line 889
    iput-wide v10, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    .line 890
    const/4 v6, 0x1

    .line 892
    :cond_0
    return v6
.end method

.method private parseRemindTime(J)Ljava/lang/String;
    .locals 9
    .param p1, "time"    # J

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x3c

    .line 978
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 979
    const-string v0, "\u4e0d\u63d0\u9192"

    .line 987
    :goto_0
    return-object v0

    .line 980
    :cond_0
    iget-wide v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    .line 981
    const-string v0, "\u51c6\u65f6"

    goto :goto_0

    .line 982
    :cond_1
    iget-wide v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    sub-long/2addr v0, p1

    div-long/2addr v0, v6

    div-long/2addr v0, v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 983
    const-string v0, "1\u5c0f\u65f6"

    goto :goto_0

    .line 984
    :cond_2
    iget-wide v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    sub-long/2addr v0, p1

    div-long/2addr v0, v6

    div-long/2addr v0, v4

    const-wide/16 v2, 0x5a0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 985
    const-string v0, "1\u5929"

    goto :goto_0

    .line 987
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    sub-long/2addr v2, p1

    div-long/2addr v2, v6

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u5206\u949f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setEndTime()V
    .locals 4

    .prologue
    .line 993
    iget-wide v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndTime:J

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/DateUtil;->getYear(J)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndYear:I

    .line 994
    iget-wide v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndTime:J

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/DateUtil;->getMonth(J)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndMonth:I

    .line 995
    iget-wide v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndTime:J

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/DateUtil;->getDay(J)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndDay:I

    .line 996
    iget-wide v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndTime:J

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/DateUtil;->getHour(J)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndHour:I

    .line 997
    iget-wide v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndTime:J

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/DateUtil;->getMinute(J)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndMinute:I

    .line 998
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvEndTime:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndTime:J

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/DateUtil;->getHourAndMin(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    return-void
.end method

.method private setLimit(Ljava/lang/String;)V
    .locals 2
    .param p1, "limit"    # Ljava/lang/String;

    .prologue
    .line 355
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTbLimit:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTbLimit:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private setNotice(Ljava/lang/String;)V
    .locals 2
    .param p1, "notice"    # Ljava/lang/String;

    .prologue
    .line 337
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTbNotice:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTbNotice:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateScheduleMsg()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 939
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 940
    .local v0, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 941
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 942
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event_id"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->eventId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event_title"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTitle:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "address"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mAddress:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "boss_uid"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mBossUid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "old_start_datetime"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mOldTime:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 947
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "new_start_datetime"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "end_datetime"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndTime:J

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "alert_datetime"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mAlertTime:J

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "update"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCreateActivity;->getNotice()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "hidden"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCreateActivity;->getLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "remark"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mRemark:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mBossUid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/ScheduleData;->setPublishedUId(Ljava/lang/String;)V

    .line 958
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/ScheduleData;->setType(Ljava/lang/String;)V

    .line 959
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mUpdate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/ScheduleData;->setNotice(Ljava/lang/String;)V

    .line 960
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mLimit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/ScheduleData;->setHidden(Ljava/lang/String;)V

    .line 961
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mAlertTime:J

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/ScheduleData;->setAlertTime(Ljava/lang/String;)V

    .line 962
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/ScheduleData;->setStartTime(Ljava/lang/String;)V

    .line 963
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndTime:J

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/ScheduleData;->setEndTime(Ljava/lang/String;)V

    .line 964
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/ScheduleData;->setCreateTime(Ljava/lang/String;)V

    .line 965
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->scheduleData:Lcom/lzx/iteam/bean/ScheduleData;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mRemark:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/ScheduleData;->setRemark(Ljava/lang/String;)V

    .line 966
    new-instance v1, Lcom/lzx/iteam/net/GetScheduleMsg;

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/lzx/iteam/net/GetScheduleMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 967
    .local v1, "scheduleMsg":Lcom/lzx/iteam/net/GetScheduleMsg;
    const-string v2, "/api/event/calendar/update"

    iput-object v2, v1, Lcom/lzx/iteam/net/GetScheduleMsg;->mApi:Ljava/lang/String;

    .line 968
    iput-object v0, v1, Lcom/lzx/iteam/net/GetScheduleMsg;->mParams:Ljava/util/List;

    .line 969
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 971
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 237
    :sswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/ScheduleCreateActivity;->finish()V

    goto :goto_0

    .line 242
    :sswitch_1
    :try_start_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/ScheduleCreateActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_1
    invoke-virtual {p0}, Lcom/lzx/iteam/ScheduleCreateActivity;->showDateSelectPop()V

    goto :goto_0

    .line 243
    :catch_0
    move-exception v7

    .line 244
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 250
    .end local v7    # "e":Ljava/lang/Exception;
    :sswitch_2
    :try_start_1
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/ScheduleCreateActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 254
    :goto_2
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/lzx/iteam/ScheduleCreateActivity;->showContinueDateSelectPop()V

    goto :goto_0

    .line 251
    :catch_1
    move-exception v7

    .line 252
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 257
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v0, "\u5bf9\u4e0d\u8d77\uff0c\u8bf7\u5148\u9009\u62e9\u5f00\u59cb\u65f6\u95f4"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 262
    :sswitch_3
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTbNotice:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->toggle()V

    goto :goto_0

    .line 265
    :sswitch_4
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTbLimit:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->toggle()V

    goto :goto_0

    .line 269
    :sswitch_5
    :try_start_2
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/ScheduleCreateActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 273
    :goto_3
    invoke-virtual {p0}, Lcom/lzx/iteam/ScheduleCreateActivity;->showRemindTimePop()V

    goto/16 :goto_0

    .line 270
    :catch_2
    move-exception v7

    .line 271
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 276
    .end local v7    # "e":Ljava/lang/Exception;
    :sswitch_6
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEtTheme:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    const-string v0, "\u5bf9\u4e0d\u8d77\uff0c\u4e3b\u9898\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEtTheme:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTitle:Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    const-string v0, "\u5bf9\u4e0d\u8d77\uff0c\u5f00\u59cb\u65f6\u95f4\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvEndTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 287
    const-string v0, "\u5bf9\u4e0d\u8d77\uff0c\u7ed3\u675f\u65f6\u95f4\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 291
    :cond_4
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->c:Ljava/util/Calendar;

    iget v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartYear:I

    iget v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartMonth:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartDay:I

    iget v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndHour:I

    iget v5, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndMinute:I

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 292
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndTime:J

    .line 293
    iget v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndHour:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndMinute:I

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndTime:J

    iget-wide v2, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 294
    const-string v0, "\u7ed3\u675f\u65f6\u95f4\u5c0f\u4e8e\u5f00\u59cb\u65f6\u95f4\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9"

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 297
    :cond_5
    iget v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndHour:I

    if-nez v0, :cond_6

    iget v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndMinute:I

    if-nez v0, :cond_6

    .line 298
    iput-wide v8, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndTime:J

    .line 301
    :cond_6
    const-string v0, "\u4e0d\u63d0\u9192"

    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvRemind:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 302
    iput-wide v8, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mAlertTime:J

    .line 324
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEtAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mAddress:Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEtRemark:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mRemark:Ljava/lang/String;

    .line 326
    const-string v0, "editSchedule"

    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 327
    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCreateActivity;->updateScheduleMsg()V

    goto/16 :goto_0

    .line 303
    :cond_8
    const-string v0, "\u51c6\u65f6"

    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvRemind:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 304
    iget-wide v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    iput-wide v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mAlertTime:J

    goto :goto_4

    .line 305
    :cond_9
    const-string v0, "10\u5206\u949f"

    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvRemind:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 306
    iget-wide v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->addRemindTime(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mAlertTime:J

    goto :goto_4

    .line 307
    :cond_a
    const-string v0, "30\u5206\u949f"

    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvRemind:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 308
    iget-wide v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    const/16 v2, 0x1e

    invoke-direct {p0, v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->addRemindTime(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mAlertTime:J

    goto/16 :goto_4

    .line 309
    :cond_b
    const-string v0, "1\u5c0f\u65f6"

    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvRemind:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 310
    iget-wide v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    const/16 v2, 0x3c

    invoke-direct {p0, v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->addRemindTime(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mAlertTime:J

    goto/16 :goto_4

    .line 311
    :cond_c
    const-string v0, "1\u5929"

    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTvRemind:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 312
    iget-wide v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartTime:J

    const/16 v2, 0x5a0

    invoke-direct {p0, v2}, Lcom/lzx/iteam/ScheduleCreateActivity;->addRemindTime(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mAlertTime:J

    goto/16 :goto_4

    .line 328
    :cond_d
    const-string v0, "createSchedule"

    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCreateActivity;->addScheduleMsg()V

    goto/16 :goto_0

    .line 235
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0596 -> :sswitch_0
        0x7f0e0598 -> :sswitch_6
        0x7f0e0599 -> :sswitch_1
        0x7f0e059d -> :sswitch_2
        0x7f0e05a7 -> :sswitch_5
        0x7f0e05aa -> :sswitch_4
        0x7f0e05ad -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    const v0, 0x7f0300db

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCreateActivity;->setContentView(I)V

    .line 140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->c:Ljava/util/Calendar;

    .line 141
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->curYear:I

    .line 142
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->curMonth:I

    .line 143
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->curDate:I

    .line 144
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->c:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->curHour:I

    .line 145
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->c:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->curMinute:I

    .line 146
    new-instance v0, Lcom/lzx/iteam/provider/ScheduleDB;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/provider/ScheduleDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mScheduleDb:Lcom/lzx/iteam/provider/ScheduleDB;

    .line 147
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 149
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 150
    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCreateActivity;->initViews()V

    .line 151
    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCreateActivity;->getIntentData()V

    .line 153
    return-void
.end method

.method public showContinueDateSelectPop()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x1

    const/4 v11, 0x1

    .line 677
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030053

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 678
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f0e023f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 679
    .local v6, "layout":Landroid/widget/LinearLayout;
    const v8, 0x7f0e0240

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 680
    .local v0, "continueTime1":Landroid/widget/TextView;
    const v8, 0x7f0e0241

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 681
    .local v1, "continueTime2":Landroid/widget/TextView;
    const v8, 0x7f0e0242

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 682
    .local v2, "continueTime3":Landroid/widget/TextView;
    const v8, 0x7f0e0243

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 683
    .local v3, "continueTime4":Landroid/widget/TextView;
    const v8, 0x7f0e0244

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 684
    .local v5, "continueTimeOther":Landroid/widget/TextView;
    const v8, 0x7f0e0245

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 685
    .local v4, "continueTimeCancle":Landroid/widget/TextView;
    new-instance v8, Lcom/lzx/iteam/ScheduleCreateActivity$16;

    invoke-direct {v8, p0}, Lcom/lzx/iteam/ScheduleCreateActivity$16;-><init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    new-instance v8, Lcom/lzx/iteam/ScheduleCreateActivity$17;

    invoke-direct {v8, p0}, Lcom/lzx/iteam/ScheduleCreateActivity$17;-><init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    new-instance v8, Lcom/lzx/iteam/ScheduleCreateActivity$18;

    invoke-direct {v8, p0}, Lcom/lzx/iteam/ScheduleCreateActivity$18;-><init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    new-instance v8, Lcom/lzx/iteam/ScheduleCreateActivity$19;

    invoke-direct {v8, p0}, Lcom/lzx/iteam/ScheduleCreateActivity$19;-><init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    new-instance v8, Lcom/lzx/iteam/ScheduleCreateActivity$20;

    invoke-direct {v8, p0}, Lcom/lzx/iteam/ScheduleCreateActivity$20;-><init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    new-instance v8, Lcom/lzx/iteam/ScheduleCreateActivity$21;

    invoke-direct {v8, p0}, Lcom/lzx/iteam/ScheduleCreateActivity$21;-><init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    new-instance v8, Landroid/widget/PopupWindow;

    invoke-direct {v8, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    .line 736
    iget-object v8, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 737
    iget-object v8, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v11}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 738
    iget-object v8, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v11}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 739
    iget-object v8, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v11}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 740
    iget-object v8, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 741
    iget-object v8, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v12}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 742
    iget-object v8, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v12}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 744
    const v8, 0x7f040018

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 745
    iget-object v8, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    const/16 v9, 0x50

    invoke-virtual {v8, v7, v9, v13, v13}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 746
    iget-object v8, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->update()V

    .line 747
    new-instance v8, Lcom/lzx/iteam/ScheduleCreateActivity$22;

    invoke-direct {v8, p0}, Lcom/lzx/iteam/ScheduleCreateActivity$22;-><init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 754
    return-void
.end method

.method public showDateSelectPop()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 463
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300e1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 465
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0e0049

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/selectdate/WheelView;

    iput-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->year:Lcom/lzx/iteam/selectdate/WheelView;

    .line 466
    iget v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->curYear:I

    invoke-direct {p0, v4}, Lcom/lzx/iteam/ScheduleCreateActivity;->initYear(I)V

    .line 467
    const v4, 0x7f0e004a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/selectdate/WheelView;

    iput-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;

    .line 468
    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCreateActivity;->initMonth()V

    .line 469
    const v4, 0x7f0e004b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/selectdate/WheelView;

    iput-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    .line 470
    iget v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->curYear:I

    iget v5, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->curMonth:I

    invoke-direct {p0, v4, v5}, Lcom/lzx/iteam/ScheduleCreateActivity;->initDay(II)V

    .line 472
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->year:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v4, v7}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 473
    iget v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartMonth:I

    if-eqz v4, :cond_0

    .line 474
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;

    iget v5, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartMonth:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 478
    :goto_0
    iget v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartDay:I

    if-eqz v4, :cond_1

    .line 479
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    iget v5, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartDay:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 484
    :goto_1
    const v4, 0x7f0e05d3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/selectdate/WheelView;

    iput-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    .line 485
    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCreateActivity;->initHour()V

    .line 486
    const v4, 0x7f0e05d4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/selectdate/WheelView;

    iput-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    .line 487
    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCreateActivity;->initMins()V

    .line 489
    iget v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartHour:I

    if-eqz v4, :cond_2

    .line 490
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    iget v5, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartHour:I

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 494
    :goto_2
    const/4 v2, 0x0

    .line 495
    .local v2, "current":I
    iget v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartMinute:I

    if-eqz v4, :cond_3

    .line 496
    iget v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mStartMinute:I

    div-int/lit8 v2, v4, 0x5

    .line 500
    :goto_3
    const/16 v4, 0xb

    if-ne v2, v4, :cond_4

    .line 501
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v4, v7}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 506
    :goto_4
    const v4, 0x7f0e0048

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 507
    .local v0, "bt":Landroid/widget/TextView;
    new-instance v4, Lcom/lzx/iteam/ScheduleCreateActivity$10;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/ScheduleCreateActivity$10;-><init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    const v4, 0x7f0e0047

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 569
    .local v1, "cancel":Landroid/widget/TextView;
    new-instance v4, Lcom/lzx/iteam/ScheduleCreateActivity$11;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/ScheduleCreateActivity$11;-><init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    .line 577
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 578
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 579
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 580
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 581
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 582
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 583
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 584
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    const v5, 0x7f09000b

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 585
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    const/16 v5, 0x50

    invoke-virtual {v4, v3, v5, v7, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 586
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->update()V

    .line 587
    new-instance v4, Lcom/lzx/iteam/ScheduleCreateActivity$12;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/ScheduleCreateActivity$12;-><init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 594
    return-void

    .line 476
    .end local v0    # "bt":Landroid/widget/TextView;
    .end local v1    # "cancel":Landroid/widget/TextView;
    .end local v2    # "current":I
    :cond_0
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;

    iget v5, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->curMonth:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 481
    :cond_1
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    iget v5, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->curDate:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto/16 :goto_1

    .line 492
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    iget v5, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->curHour:I

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto/16 :goto_2

    .line 498
    .restart local v2    # "current":I
    :cond_3
    iget v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->curMinute:I

    div-int/lit8 v2, v4, 0x5

    goto/16 :goto_3

    .line 503
    :cond_4
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto/16 :goto_4
.end method

.method public showEndDateSelectPop()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 601
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300e3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 603
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0e05d3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/selectdate/WheelView;

    iput-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    .line 604
    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCreateActivity;->initHour()V

    .line 605
    const v3, 0x7f0e05d4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/selectdate/WheelView;

    iput-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    .line 606
    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCreateActivity;->initMins()V

    .line 608
    iget v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndHour:I

    if-eqz v3, :cond_0

    .line 609
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    iget v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndHour:I

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 613
    :goto_0
    iget v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndMinute:I

    if-eqz v3, :cond_1

    .line 614
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    iget v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mEndMinute:I

    div-int/lit8 v4, v4, 0x5

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 619
    :goto_1
    const v3, 0x7f0e0048

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 620
    .local v0, "bt":Landroid/widget/TextView;
    new-instance v3, Lcom/lzx/iteam/ScheduleCreateActivity$13;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/ScheduleCreateActivity$13;-><init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    const v3, 0x7f0e0047

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 644
    .local v1, "cancel":Landroid/widget/TextView;
    new-instance v3, Lcom/lzx/iteam/ScheduleCreateActivity$14;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/ScheduleCreateActivity$14;-><init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    .line 652
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 653
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 654
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 655
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 656
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 657
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 658
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 659
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    const v4, 0x7f09000b

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 660
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    const/16 v4, 0x50

    invoke-virtual {v3, v2, v4, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 661
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->update()V

    .line 662
    new-instance v3, Lcom/lzx/iteam/ScheduleCreateActivity$15;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/ScheduleCreateActivity$15;-><init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 669
    return-void

    .line 611
    .end local v0    # "bt":Landroid/widget/TextView;
    .end local v1    # "cancel":Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    iget v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->curHour:I

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 616
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    iget v4, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->curMinute:I

    div-int/lit8 v4, v4, 0x5

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto :goto_1
.end method

.method public showRemindTimePop()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 377
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03003f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 378
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f0e0195

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 379
    .local v0, "remindNo":Landroid/widget/TextView;
    const v7, 0x7f0e0196

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 380
    .local v1, "remindTime1":Landroid/widget/TextView;
    const v7, 0x7f0e0197

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 381
    .local v2, "remindTime2":Landroid/widget/TextView;
    const v7, 0x7f0e0198

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 382
    .local v3, "remindTime3":Landroid/widget/TextView;
    const v7, 0x7f0e0199

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 383
    .local v4, "remindTime4":Landroid/widget/TextView;
    const v7, 0x7f0e019a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 384
    .local v5, "remindTime5":Landroid/widget/TextView;
    new-instance v7, Lcom/lzx/iteam/ScheduleCreateActivity$3;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/ScheduleCreateActivity$3;-><init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    new-instance v7, Lcom/lzx/iteam/ScheduleCreateActivity$4;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/ScheduleCreateActivity$4;-><init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    new-instance v7, Lcom/lzx/iteam/ScheduleCreateActivity$5;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/ScheduleCreateActivity$5;-><init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    new-instance v7, Lcom/lzx/iteam/ScheduleCreateActivity$6;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/ScheduleCreateActivity$6;-><init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    new-instance v7, Lcom/lzx/iteam/ScheduleCreateActivity$7;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/ScheduleCreateActivity$7;-><init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    new-instance v7, Lcom/lzx/iteam/ScheduleCreateActivity$8;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/ScheduleCreateActivity$8;-><init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeRemindPop:Landroid/widget/PopupWindow;

    .line 438
    iget-object v7, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeRemindPop:Landroid/widget/PopupWindow;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 439
    iget-object v7, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeRemindPop:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 440
    iget-object v7, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeRemindPop:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 441
    iget-object v7, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeRemindPop:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 442
    iget-object v7, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeRemindPop:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 443
    iget-object v7, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeRemindPop:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v11}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 444
    iget-object v7, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeRemindPop:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v11}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 445
    iget-object v7, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeRemindPop:Landroid/widget/PopupWindow;

    const v8, 0x7f09000b

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 446
    iget-object v7, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeRemindPop:Landroid/widget/PopupWindow;

    const/16 v8, 0x50

    invoke-virtual {v7, v6, v8, v12, v12}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 447
    iget-object v7, p0, Lcom/lzx/iteam/ScheduleCreateActivity;->mTimeRemindPop:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->update()V

    .line 448
    new-instance v7, Lcom/lzx/iteam/ScheduleCreateActivity$9;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/ScheduleCreateActivity$9;-><init>(Lcom/lzx/iteam/ScheduleCreateActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 456
    return-void
.end method
