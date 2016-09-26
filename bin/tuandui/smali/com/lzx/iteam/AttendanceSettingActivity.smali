.class public Lcom/lzx/iteam/AttendanceSettingActivity;
.super Landroid/app/Activity;
.source "AttendanceSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final ADD_NEW_ATTENDANCE:I

.field private final GET_ATTENDANCE_MEMBER:I

.field private final REMOVE_ATTENDANCE_MEMBER:I

.field private final REQUEST_CODE_ADDRESS:I

.field private final REQUEST_CODE_DEVIATION:I

.field private final REQUEST_CODE_MEMBER:I

.field private final REQUEST_CODE_WORKDATE:I

.field private final UPDATE_ATTENDANCE:I

.field private attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

.field private c:Ljava/util/Calendar;

.field private endHour:I

.field private endMinute:I

.field private hour:Lcom/lzx/iteam/selectdate/WheelView;

.field private mAddress:Ljava/lang/String;

.field private mContactId:Ljava/lang/String;

.field private mDeviation:Ljava/lang/String;

.field private mEndHour:I

.field private mEndMinute:I

.field private mEndTime:Ljava/lang/String;

.field private mEtName:Landroid/widget/EditText;

.field private mGroupName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLlBack:Landroid/widget/LinearLayout;

.field private mMember:Ljava/lang/String;

.field private mMemberCount:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mOk:Landroid/widget/TextView;

.field private mRlAddress:Landroid/widget/RelativeLayout;

.field private mRlDeviation:Landroid/widget/RelativeLayout;

.field private mRlEndTime:Landroid/widget/RelativeLayout;

.field private mRlMember:Landroid/widget/RelativeLayout;

.field private mRlStartTime:Landroid/widget/RelativeLayout;

.field private mRlWorkDate:Landroid/widget/RelativeLayout;

.field private mStartHour:I

.field private mStartMinute:I

.field private mStartTime:Ljava/lang/String;

.field private mTimePop:Landroid/widget/PopupWindow;

.field private mTvAddress:Landroid/widget/TextView;

.field private mTvDeviation:Landroid/widget/TextView;

.field private mTvEndTime:Landroid/widget/TextView;

.field private mTvMember:Landroid/widget/TextView;

.field private mTvStartTime:Landroid/widget/TextView;

.field private mTvWorkDate:Landroid/widget/TextView;

.field private mType:Z

.field private mUserType:Ljava/lang/String;

.field private mWorkDate:Ljava/lang/String;

.field private mins:Lcom/lzx/iteam/selectdate/WheelView;

.field private startHour:I

.field private startMinute:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/16 v0, 0x64

    iput v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->REQUEST_CODE_WORKDATE:I

    .line 44
    const/16 v0, 0x65

    iput v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->REQUEST_CODE_ADDRESS:I

    .line 45
    const/16 v0, 0x66

    iput v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->REQUEST_CODE_DEVIATION:I

    .line 46
    const/16 v0, 0x67

    iput v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->REQUEST_CODE_MEMBER:I

    .line 50
    const/16 v0, 0x9

    iput v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->startHour:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->endHour:I

    .line 51
    iput v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->startMinute:I

    iput v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->endMinute:I

    .line 56
    const-string v0, "9:00"

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mStartTime:Ljava/lang/String;

    const-string v0, "18:00"

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEndTime:Ljava/lang/String;

    .line 57
    const-string v0, "1,2,3,4,5"

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mWorkDate:Ljava/lang/String;

    const-string v0, "300"

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mDeviation:Ljava/lang/String;

    .line 65
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->ADD_NEW_ATTENDANCE:I

    .line 66
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->UPDATE_ATTENDANCE:I

    .line 67
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->GET_ATTENDANCE_MEMBER:I

    .line 68
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->REMOVE_ATTENDANCE_MEMBER:I

    .line 71
    new-instance v0, Lcom/lzx/iteam/AttendanceSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/AttendanceSettingActivity$1;-><init>(Lcom/lzx/iteam/AttendanceSettingActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/AttendanceSettingActivity;)Lcom/lzx/iteam/bean/AttendanceData;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/AttendanceSettingActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/AttendanceSettingActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mMemberCount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lzx/iteam/AttendanceSettingActivity;)Lcom/lzx/iteam/selectdate/WheelView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/lzx/iteam/AttendanceSettingActivity;I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mStartHour:I

    return-void
.end method

.method static synthetic access$13(Lcom/lzx/iteam/AttendanceSettingActivity;)Lcom/lzx/iteam/selectdate/WheelView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/lzx/iteam/AttendanceSettingActivity;I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mStartMinute:I

    return-void
.end method

.method static synthetic access$15(Lcom/lzx/iteam/AttendanceSettingActivity;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mStartMinute:I

    return v0
.end method

.method static synthetic access$16(Lcom/lzx/iteam/AttendanceSettingActivity;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mStartHour:I

    return v0
.end method

.method static synthetic access$17(Lcom/lzx/iteam/AttendanceSettingActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mStartTime:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$18(Lcom/lzx/iteam/AttendanceSettingActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTvStartTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/lzx/iteam/AttendanceSettingActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mStartTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/AttendanceSettingActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mUserType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcom/lzx/iteam/AttendanceSettingActivity;I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEndHour:I

    return-void
.end method

.method static synthetic access$21(Lcom/lzx/iteam/AttendanceSettingActivity;I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEndMinute:I

    return-void
.end method

.method static synthetic access$22(Lcom/lzx/iteam/AttendanceSettingActivity;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEndMinute:I

    return v0
.end method

.method static synthetic access$23(Lcom/lzx/iteam/AttendanceSettingActivity;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEndHour:I

    return v0
.end method

.method static synthetic access$24(Lcom/lzx/iteam/AttendanceSettingActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEndTime:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$25(Lcom/lzx/iteam/AttendanceSettingActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTvEndTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$26(Lcom/lzx/iteam/AttendanceSettingActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEndTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$27(Lcom/lzx/iteam/AttendanceSettingActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTimePop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$28(Lcom/lzx/iteam/AttendanceSettingActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/lzx/iteam/AttendanceSettingActivity;->removeMember(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/lzx/iteam/AttendanceSettingActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mContactId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/AttendanceSettingActivity;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mType:Z

    return v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/AttendanceSettingActivity;)V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceSettingActivity;->addAttendanceMsg()V

    return-void
.end method

.method static synthetic access$6(Lcom/lzx/iteam/AttendanceSettingActivity;)V
    .locals 0

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceSettingActivity;->updateAttendanceMsg()V

    return-void
.end method

.method static synthetic access$7(Lcom/lzx/iteam/AttendanceSettingActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mMember:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/lzx/iteam/AttendanceSettingActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mMemberCount:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/lzx/iteam/AttendanceSettingActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mMember:Ljava/lang/String;

    return-object v0
.end method

.method private addAttendanceMsg()V
    .locals 5

    .prologue
    .line 574
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 576
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_name"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "name"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "address"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "longitude"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "latitude"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "members"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getMembers()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "start_work_time"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getStartWorkTime()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "end_work_time"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getEndWorkTime()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "deviation"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getDeviation()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "work_date"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getWorkDate()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    new-instance v0, Lcom/lzx/iteam/net/CreateAttendanceMsg;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/lzx/iteam/net/CreateAttendanceMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 589
    .local v0, "createAttendanceMsg":Lcom/lzx/iteam/net/CreateAttendanceMsg;
    const-string v2, "/api/event/attendance/new"

    iput-object v2, v0, Lcom/lzx/iteam/net/CreateAttendanceMsg;->mApi:Ljava/lang/String;

    .line 590
    iput-object v1, v0, Lcom/lzx/iteam/net/CreateAttendanceMsg;->mParams:Ljava/util/List;

    .line 591
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 593
    return-void
.end method

.method private getAttendanceMemberList()V
    .locals 5

    .prologue
    .line 625
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 626
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 627
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "attendance_form_id"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->get_id()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    new-instance v0, Lcom/lzx/iteam/net/GetAttendanceMemberList;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/lzx/iteam/net/GetAttendanceMemberList;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 631
    .local v0, "getAttendanceMemberList":Lcom/lzx/iteam/net/GetAttendanceMemberList;
    const-string v2, "/api/event/attendance/member_list"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetAttendanceMemberList;->mApi:Ljava/lang/String;

    .line 632
    iput-object v1, v0, Lcom/lzx/iteam/net/GetAttendanceMemberList;->mParams:Ljava/util/List;

    .line 633
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 635
    return-void
.end method

.method private getIntentData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 221
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 222
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "group_name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mGroupName:Ljava/lang/String;

    .line 223
    const-string v3, "user_type"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mUserType:Ljava/lang/String;

    .line 224
    const-string v3, "contact_id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mContactId:Ljava/lang/String;

    .line 225
    const-string v3, "attendanceData"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/AttendanceData;

    iput-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    .line 226
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/AttendanceData;->get_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    iput-boolean v5, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mType:Z

    .line 229
    :cond_0
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/AttendanceData;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mAddress:Ljava/lang/String;

    .line 230
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/AttendanceData;->getMembers()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mMember:Ljava/lang/String;

    .line 231
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/AttendanceData;->getMemberCount()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mMemberCount:Ljava/lang/String;

    .line 232
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/AttendanceData;->getStartWorkTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 233
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/AttendanceData;->getStartWorkTime()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mStartTime:Ljava/lang/String;

    .line 234
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mStartTime:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mStartHour:I

    .line 235
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mStartTime:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mStartMinute:I

    .line 238
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/AttendanceData;->getEndWorkTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 239
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/AttendanceData;->getEndWorkTime()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEndTime:Ljava/lang/String;

    .line 240
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEndTime:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEndHour:I

    .line 241
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEndTime:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEndMinute:I

    .line 243
    :cond_2
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/AttendanceData;->getWorkDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 244
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/AttendanceData;->getWorkDate()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mWorkDate:Ljava/lang/String;

    .line 246
    :cond_3
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/AttendanceData;->getDeviation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 247
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/AttendanceData;->getDeviation()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mDeviation:Ljava/lang/String;

    .line 249
    :cond_4
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/AttendanceData;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mName:Ljava/lang/String;

    .line 250
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mMember:Ljava/lang/String;

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 252
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mMember:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 253
    .local v2, "jsonArray":Lorg/json/JSONArray;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mMemberCount:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :goto_0
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTvMember:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mMemberCount:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u4eba"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTvAddress:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTvStartTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mStartTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTvEndTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEndTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTvDeviation:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mDeviation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEtName:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mName:Ljava/lang/String;

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 268
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEtName:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 270
    :cond_5
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceSettingActivity;->setWorkDate()V

    .line 273
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 258
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_6
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceSettingActivity;->getAttendanceMemberList()V

    goto :goto_0
.end method

.method private initHour()V
    .locals 4

    .prologue
    .line 496
    new-instance v0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;

    const/4 v1, 0x0

    const/16 v2, 0x17

    const-string v3, "%02d"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 497
    .local v0, "numericWheelAdapter":Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;
    const-string v1, " \u65f6"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->setLabel(Ljava/lang/String;)V

    .line 499
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/selectdate/WheelView;->setViewAdapter(Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;)V

    .line 500
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/selectdate/WheelView;->setCyclic(Z)V

    .line 501
    return-void
.end method

.method private initMins()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 507
    new-instance v0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;

    const/4 v2, 0x0

    const/16 v3, 0x3b

    const-string v4, "%02d"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 508
    .local v0, "numericWheelAdapter":Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;
    const-string v1, " \u5206"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->setLabel(Ljava/lang/String;)V

    .line 510
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/selectdate/WheelView;->setViewAdapter(Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;)V

    .line 511
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v1, v5}, Lcom/lzx/iteam/selectdate/WheelView;->setCyclic(Z)V

    .line 512
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 190
    const v0, 0x7f0e0108

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mLlBack:Landroid/widget/LinearLayout;

    .line 191
    const v0, 0x7f0e0109

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mOk:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f0e010c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEtName:Landroid/widget/EditText;

    .line 194
    const v0, 0x7f0e010f

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTvStartTime:Landroid/widget/TextView;

    .line 195
    const v0, 0x7f0e0113

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTvEndTime:Landroid/widget/TextView;

    .line 196
    const v0, 0x7f0e0117

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTvWorkDate:Landroid/widget/TextView;

    .line 197
    const v0, 0x7f0e011b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTvMember:Landroid/widget/TextView;

    .line 198
    const v0, 0x7f0e011f

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTvAddress:Landroid/widget/TextView;

    .line 199
    const v0, 0x7f0e0123

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTvDeviation:Landroid/widget/TextView;

    .line 201
    const v0, 0x7f0e010d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mRlStartTime:Landroid/widget/RelativeLayout;

    .line 202
    const v0, 0x7f0e0111

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mRlEndTime:Landroid/widget/RelativeLayout;

    .line 203
    const v0, 0x7f0e0115

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mRlWorkDate:Landroid/widget/RelativeLayout;

    .line 204
    const v0, 0x7f0e0119

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mRlMember:Landroid/widget/RelativeLayout;

    .line 205
    const v0, 0x7f0e011d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mRlAddress:Landroid/widget/RelativeLayout;

    .line 206
    const v0, 0x7f0e0121

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mRlDeviation:Landroid/widget/RelativeLayout;

    .line 208
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mLlBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mRlStartTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mRlEndTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mRlWorkDate:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mRlMember:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mRlAddress:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mRlDeviation:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    return-void
.end method

.method private removeMember(Ljava/lang/String;)V
    .locals 5
    .param p1, "members"    # Ljava/lang/String;

    .prologue
    .line 641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .local v0, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 643
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "members"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    new-instance v1, Lcom/lzx/iteam/net/RemoveMemberMsg;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lzx/iteam/net/RemoveMemberMsg;-><init>(Landroid/os/Message;)V

    .line 647
    .local v1, "removeMemberMsg":Lcom/lzx/iteam/net/RemoveMemberMsg;
    const-string v2, "/api/event/attendance/remove_member"

    iput-object v2, v1, Lcom/lzx/iteam/net/RemoveMemberMsg;->mApi:Ljava/lang/String;

    .line 648
    iput-object v0, v1, Lcom/lzx/iteam/net/RemoveMemberMsg;->mParams:Ljava/util/List;

    .line 649
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 651
    return-void
.end method

.method private setWorkDate()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 655
    const-string v3, "1,2,3,4,5"

    iget-object v5, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mWorkDate:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 656
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTvWorkDate:Landroid/widget/TextView;

    const-string v4, "\u5de5\u4f5c\u65e5"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mWorkDate:Ljava/lang/String;

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 660
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mWorkDate:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "weeks":[Ljava/lang/String;
    array-length v5, v2

    move v3, v4

    :goto_1
    if-lt v3, v5, :cond_2

    .line 678
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTvWorkDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 661
    :cond_2
    aget-object v1, v2, v3

    .line 662
    .local v1, "week":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 663
    const-string v6, "\u5468\u4e00"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 664
    :cond_4
    const-string v6, "2"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 665
    const-string v6, "\u5468\u4e8c"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 666
    :cond_5
    const-string v6, "3"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 667
    const-string v6, "\u5468\u4e09"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 668
    :cond_6
    const-string v6, "4"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 669
    const-string v6, "\u5468\u56db"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 670
    :cond_7
    const-string v6, "5"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 671
    const-string v6, "\u5468\u4e94"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 672
    :cond_8
    const-string v6, "6"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 673
    const-string v6, "\u5468\u516d"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 674
    :cond_9
    const-string v6, "7"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 675
    const-string v6, "\u5468\u65e5"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private updateAttendanceMsg()V
    .locals 5

    .prologue
    .line 600
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 602
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "attendance_form_id"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->get_id()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "name"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "address"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "longitude"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "latitude"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "members"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getMembers()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "start_work_time"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getStartWorkTime()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "end_work_time"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getEndWorkTime()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "deviation"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getDeviation()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "work_date"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getWorkDate()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    new-instance v0, Lcom/lzx/iteam/net/CreateAttendanceMsg;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/lzx/iteam/net/CreateAttendanceMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 615
    .local v0, "createAttendanceMsg":Lcom/lzx/iteam/net/CreateAttendanceMsg;
    const-string v2, "/api/event/attendance/update"

    iput-object v2, v0, Lcom/lzx/iteam/net/CreateAttendanceMsg;->mApi:Ljava/lang/String;

    .line 616
    iput-object v1, v0, Lcom/lzx/iteam/net/CreateAttendanceMsg;->mParams:Ljava/util/List;

    .line 617
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 619
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 366
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 367
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 368
    packed-switch p1, :pswitch_data_0

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 370
    :pswitch_0
    const-string v0, "attendanceData"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/AttendanceData;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    .line 371
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTvAddress:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/AttendanceData;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 374
    :pswitch_1
    const-string v0, "deviation"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mDeviation:Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTvDeviation:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mDeviation:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u7c73"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 378
    :pswitch_2
    const-string v0, "week"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mWorkDate:Ljava/lang/String;

    .line 379
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceSettingActivity;->setWorkDate()V

    goto :goto_0

    .line 382
    :pswitch_3
    const-string v0, "members"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mMember:Ljava/lang/String;

    .line 383
    const-string v0, "memberCount"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mMemberCount:Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mMemberCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/AttendanceData;->setMemberCount(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mMember:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/AttendanceData;->setMembers(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTvMember:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mMemberCount:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u4eba"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 362
    :goto_0
    return-void

    .line 279
    :sswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceSettingActivity;->showCancelSetDlg()V

    goto :goto_0

    .line 282
    :sswitch_1
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mStartTime:Ljava/lang/String;

    invoke-static {v5}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 283
    const-string v5, " \u5bf9\u4e0d\u8d77\uff0c\u4e0a\u73ed\u65f6\u95f4\u4e0d\u80fd\u4e3a\u7a7a\uff0c\u8bf7\u9009\u62e9\u4e0a\u73ed\u65f6\u95f4"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 286
    :cond_0
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEndTime:Ljava/lang/String;

    invoke-static {v5}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 287
    const-string v5, " \u5bf9\u4e0d\u8d77\uff0c\u4e0b\u73ed\u65f6\u95f4\u4e0d\u80fd\u4e3a\u7a7a\uff0c\u8bf7\u9009\u62e9\u4e0b\u73ed\u65f6\u95f4"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 291
    :cond_1
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v5}, Lcom/lzx/iteam/bean/AttendanceData;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 292
    const-string v5, " \u5bf9\u4e0d\u8d77\uff0c\u5730\u5740\u4e0d\u80fd\u4e3a\u7a7a\uff0c\u8bf7\u9009\u62e9\u5730\u5740"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 295
    :cond_2
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEtName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mName:Ljava/lang/String;

    .line 296
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mName:Ljava/lang/String;

    invoke-static {v5}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 297
    const-string v5, " \u5bf9\u4e0d\u8d77\uff0c\u8003\u52e4\u540d\u5b57\u4e0d\u80fd\u4e3a\u7a7a\uff0c\u8bf7\u8f93\u5165\u540d\u5b57"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 301
    :cond_3
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    iget-object v6, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mMemberCount:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setMemberCount(Ljava/lang/String;)V

    .line 302
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    iget-object v6, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mMember:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setMembers(Ljava/lang/String;)V

    .line 303
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    iget-object v6, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setName(Ljava/lang/String;)V

    .line 304
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    iget-object v6, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mStartTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setStartWorkTime(Ljava/lang/String;)V

    .line 305
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    iget-object v6, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEndTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setEndWorkTime(Ljava/lang/String;)V

    .line 306
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    iget-object v6, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mDeviation:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setDeviation(Ljava/lang/String;)V

    .line 307
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    iget-object v6, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mWorkDate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/bean/AttendanceData;->setWorkDate(Ljava/lang/String;)V

    .line 308
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v5}, Lcom/lzx/iteam/bean/AttendanceData;->get_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 309
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceSettingActivity;->addAttendanceMsg()V

    goto/16 :goto_0

    .line 311
    :cond_4
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceSettingActivity;->updateAttendanceMsg()V

    goto/16 :goto_0

    .line 317
    :sswitch_2
    :try_start_0
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/lzx/iteam/AttendanceSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceSettingActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_1
    invoke-virtual {p0, v8}, Lcom/lzx/iteam/AttendanceSettingActivity;->showTimeSelectPop(I)V

    goto/16 :goto_0

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 325
    .end local v1    # "e":Ljava/lang/Exception;
    :sswitch_3
    :try_start_1
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/lzx/iteam/AttendanceSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceSettingActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 329
    :goto_2
    invoke-virtual {p0, v9}, Lcom/lzx/iteam/AttendanceSettingActivity;->showTimeSelectPop(I)V

    goto/16 :goto_0

    .line 326
    :catch_1
    move-exception v1

    .line 327
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 332
    .end local v1    # "e":Ljava/lang/Exception;
    :sswitch_4
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/lzx/iteam/AttendanceSelectWeekActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    .local v4, "workdate":Landroid/content/Intent;
    const-string v5, "workdate"

    iget-object v6, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mWorkDate:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5}, Lcom/lzx/iteam/AttendanceSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 337
    .end local v4    # "workdate":Landroid/content/Intent;
    :sswitch_5
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/lzx/iteam/AttendanceMemberActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    .local v3, "member":Landroid/content/Intent;
    const-string v5, "attendance_member_add"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v5, "attendanceData"

    iget-object v6, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 340
    const-string v5, "group_id"

    iget-object v6, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v6}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string v5, "tag_id"

    const-string v6, "0"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string v5, "tag_name"

    iget-object v6, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v5, "group_name"

    iget-object v6, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v5, "user_type"

    iget-object v6, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mUserType:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v5, "contact_id"

    iget-object v6, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mContactId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v5, "where"

    const-string v6, "cloud"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const/16 v5, 0x67

    invoke-virtual {p0, v3, v5}, Lcom/lzx/iteam/AttendanceSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 350
    .end local v3    # "member":Landroid/content/Intent;
    :sswitch_6
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/lzx/iteam/BaiduMapActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    .local v2, "map":Landroid/content/Intent;
    const-string v5, "update"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string v5, "attendanceData"

    iget-object v6, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 353
    const/16 v5, 0x65

    invoke-virtual {p0, v2, v5}, Lcom/lzx/iteam/AttendanceSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 356
    .end local v2    # "map":Landroid/content/Intent;
    :sswitch_7
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/lzx/iteam/AttendanceDeviationActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    .local v0, "deviation":Landroid/content/Intent;
    const-string v5, "deviation"

    iget-object v6, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mDeviation:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const/16 v5, 0x66

    invoke-virtual {p0, v0, v5}, Lcom/lzx/iteam/AttendanceSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 277
    :sswitch_data_0
    .sparse-switch
        0x7f0e0108 -> :sswitch_0
        0x7f0e0109 -> :sswitch_1
        0x7f0e010d -> :sswitch_2
        0x7f0e0111 -> :sswitch_3
        0x7f0e0115 -> :sswitch_4
        0x7f0e0119 -> :sswitch_5
        0x7f0e011d -> :sswitch_6
        0x7f0e0121 -> :sswitch_7
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 184
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceSettingActivity;->setContentView(I)V

    .line 185
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceSettingActivity;->initViews()V

    .line 186
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceSettingActivity;->getIntentData()V

    .line 187
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 687
    packed-switch p1, :pswitch_data_0

    .line 692
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 689
    :pswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceSettingActivity;->showCancelSetDlg()V

    goto :goto_0

    .line 687
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public showCancelSetDlg()V
    .locals 5

    .prologue
    .line 518
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v1

    .line 519
    .local v1, "mDialogUtil":Lcom/lzx/iteam/util/AllDialogUtil;
    const v4, 0x7f080061

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/AttendanceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, "okText":Ljava/lang/String;
    const v4, 0x7f08002d

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/AttendanceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "cancelText":Ljava/lang/String;
    const-string v2, "\u662f\u5426\u786e\u5b9a\u653e\u5f03\n\u5bf9\u8003\u52e4\u70b9\u7684\u4fee\u6539?"

    .line 522
    .local v2, "notice":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mType:Z

    if-eqz v4, :cond_0

    .line 523
    const-string v2, "\u662f\u5426\u786e\u5b9a\u653e\u5f03\n\u65b0\u8003\u52e4\u70b9\u521b\u5efa?"

    .line 525
    :cond_0
    invoke-virtual {v1, v3, v0, v2}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 526
    new-instance v4, Lcom/lzx/iteam/AttendanceSettingActivity$5;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/AttendanceSettingActivity$5;-><init>(Lcom/lzx/iteam/AttendanceSettingActivity;)V

    invoke-virtual {v1, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 545
    return-void
.end method

.method public showNoticeDlg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "members"    # Ljava/lang/String;

    .prologue
    .line 551
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v1

    .line 552
    .local v1, "mDialogUtil":Lcom/lzx/iteam/util/AllDialogUtil;
    const v3, 0x7f080061

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/AttendanceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 553
    .local v2, "okText":Ljava/lang/String;
    const v3, 0x7f08002d

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/AttendanceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "cancelText":Ljava/lang/String;
    invoke-virtual {v1, v2, v0, p1}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 555
    new-instance v3, Lcom/lzx/iteam/AttendanceSettingActivity$6;

    invoke-direct {v3, p0, p2}, Lcom/lzx/iteam/AttendanceSettingActivity$6;-><init>(Lcom/lzx/iteam/AttendanceSettingActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 567
    return-void
.end method

.method public showTimeSelectPop(I)V
    .locals 9
    .param p1, "type"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 400
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300e3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 402
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0e05d3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/selectdate/WheelView;

    iput-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    .line 403
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceSettingActivity;->initHour()V

    .line 404
    const v3, 0x7f0e05d4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/selectdate/WheelView;

    iput-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    .line 405
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceSettingActivity;->initMins()V

    .line 407
    if-ne p1, v6, :cond_2

    .line 408
    iget v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mStartHour:I

    if-eqz v3, :cond_0

    .line 409
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    iget v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mStartHour:I

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 413
    :goto_0
    iget v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mStartMinute:I

    if-eqz v3, :cond_1

    .line 414
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    iget v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mStartMinute:I

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 432
    :goto_1
    const v3, 0x7f0e0048

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 433
    .local v0, "bt":Landroid/widget/TextView;
    new-instance v3, Lcom/lzx/iteam/AttendanceSettingActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/lzx/iteam/AttendanceSettingActivity$2;-><init>(Lcom/lzx/iteam/AttendanceSettingActivity;I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    const v3, 0x7f0e0047

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 464
    .local v1, "cancel":Landroid/widget/TextView;
    new-instance v3, Lcom/lzx/iteam/AttendanceSettingActivity$3;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/AttendanceSettingActivity$3;-><init>(Lcom/lzx/iteam/AttendanceSettingActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTimePop:Landroid/widget/PopupWindow;

    .line 472
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTimePop:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 473
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTimePop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 474
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTimePop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 475
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTimePop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 476
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTimePop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 477
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTimePop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 478
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTimePop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 479
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTimePop:Landroid/widget/PopupWindow;

    const v4, 0x7f09000b

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 480
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTimePop:Landroid/widget/PopupWindow;

    const/16 v4, 0x50

    invoke-virtual {v3, v2, v4, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 481
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mTimePop:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->update()V

    .line 482
    new-instance v3, Lcom/lzx/iteam/AttendanceSettingActivity$4;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/AttendanceSettingActivity$4;-><init>(Lcom/lzx/iteam/AttendanceSettingActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 489
    return-void

    .line 411
    .end local v0    # "bt":Landroid/widget/TextView;
    .end local v1    # "cancel":Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    iget v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->startHour:I

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto :goto_0

    .line 416
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    iget v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->startMinute:I

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto :goto_1

    .line 419
    :cond_2
    iget v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEndHour:I

    if-eqz v3, :cond_3

    .line 420
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    iget v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEndHour:I

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 424
    :goto_2
    iget v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEndMinute:I

    if-eqz v3, :cond_4

    .line 425
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    iget v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mEndMinute:I

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto/16 :goto_1

    .line 422
    :cond_3
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    iget v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->endHour:I

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto :goto_2

    .line 427
    :cond_4
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    iget v4, p0, Lcom/lzx/iteam/AttendanceSettingActivity;->endMinute:I

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto/16 :goto_1
.end method
