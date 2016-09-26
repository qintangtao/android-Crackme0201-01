.class public Lcom/lzx/iteam/AttendanceMainActivity;
.super Landroid/app/Activity;
.source "AttendanceMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final GET_ATTENDANCE_DO:I

.field private final GET_ATTENDANCE_FACE:I

.field private Tag:Ljava/lang/String;

.field private attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

.field private attendanceDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/AttendanceData;",
            ">;"
        }
    .end annotation
.end field

.field private deviceId:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private mAction:Ljava/lang/String;

.field private mBtnLocRefresh:Landroid/widget/Button;

.field private mCountPopupWindow:Landroid/widget/PopupWindow;

.field private mGroupId:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIvArrow:Landroid/widget/ImageView;

.field private mIvSignIn:Landroid/widget/ImageView;

.field private mIvSignOut:Landroid/widget/ImageView;

.field private mLatitude:D

.field private mLlBack:Landroid/widget/LinearLayout;

.field private mLlHelp:Landroid/widget/LinearLayout;

.field private mLlSignIn:Landroid/widget/LinearLayout;

.field private mLlSignOut:Landroid/widget/LinearLayout;

.field private mLlTitle:Landroid/widget/LinearLayout;

.field private mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

.field private mLongitude:D

.field private mProgressDialog:Landroid/app/Dialog;

.field private mReceiverGroupId:Ljava/lang/String;

.field private mReceiverGroupName:Ljava/lang/String;

.field private mTeamDialog:Landroid/app/Dialog;

.field private mTopLineView:Landroid/view/View;

.field private mTvCount:Landroid/widget/TextView;

.field private mTvCurrentTime:Landroid/widget/TextView;

.field private mTvLocAddress:Landroid/widget/TextView;

.field private mTvLocNote:Landroid/widget/TextView;

.field private mTvLocation:Landroid/widget/TextView;

.field private mTvManage:Landroid/widget/TextView;

.field private mTvSignIn:Landroid/widget/TextView;

.field private mTvSignOut:Landroid/widget/TextView;

.field private mTvSignTime:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const-string v0, "AttendanceMainActivity"

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->Tag:Ljava/lang/String;

    .line 55
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->GET_ATTENDANCE_FACE:I

    .line 56
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->GET_ATTENDANCE_DO:I

    .line 70
    new-instance v0, Lcom/lzx/iteam/AttendanceMainActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/AttendanceMainActivity$1;-><init>(Lcom/lzx/iteam/AttendanceMainActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/AttendanceMainActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceDatas:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/AttendanceMainActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mIvSignIn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lzx/iteam/AttendanceMainActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mIvSignOut:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/lzx/iteam/AttendanceMainActivity;)V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->waitDlgDismiss()V

    return-void
.end method

.method static synthetic access$13(Lcom/lzx/iteam/AttendanceMainActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvSignIn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/lzx/iteam/AttendanceMainActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvSignOut:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->Tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lzx/iteam/AttendanceMainActivity;D)V
    .locals 1

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLatitude:D

    return-void
.end method

.method static synthetic access$17(Lcom/lzx/iteam/AttendanceMainActivity;D)V
    .locals 1

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLongitude:D

    return-void
.end method

.method static synthetic access$18(Lcom/lzx/iteam/AttendanceMainActivity;)V
    .locals 0

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->getAttendanceFace()V

    return-void
.end method

.method static synthetic access$19(Lcom/lzx/iteam/AttendanceMainActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvLocation:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcom/lzx/iteam/AttendanceMainActivity;DD)Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lzx/iteam/AttendanceMainActivity;->getDistance(DD)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21(Lcom/lzx/iteam/AttendanceMainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lcom/lzx/iteam/AttendanceMainActivity;->getAttendanceDoMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22(Lcom/lzx/iteam/AttendanceMainActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTeamDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$23(Lcom/lzx/iteam/AttendanceMainActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mCountPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$24(Lcom/lzx/iteam/AttendanceMainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/lzx/iteam/AttendanceMainActivity;->refreshLoction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mReceiverGroupId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/AttendanceMainActivity;Lcom/lzx/iteam/bean/AttendanceData;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    return-void
.end method

.method static synthetic access$5(Lcom/lzx/iteam/AttendanceMainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/AttendanceMainActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mIvArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/AttendanceMainActivity;Lcom/lzx/iteam/bean/AttendanceData;)V
    .locals 0

    .prologue
    .line 596
    invoke-direct {p0, p1}, Lcom/lzx/iteam/AttendanceMainActivity;->setAttendanceMsg(Lcom/lzx/iteam/bean/AttendanceData;)V

    return-void
.end method

.method private getAttendanceDoMsg(Ljava/lang/String;)V
    .locals 8
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 517
    const-string v3, "4.9E-324"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLatitude:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "4.9E-324"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLongitude:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-wide v4, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLatitude:D

    iget-wide v6, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLongitude:D

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/lzx/iteam/AttendanceMainActivity;->getDistance(DD)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getDeviation()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v3, v4, :cond_1

    .line 518
    :cond_0
    const-string v3, "\u60a8\u5c1a\u672a\u5230\u8fbe\u8003\u52e4\u70b9\u9644\u8fd1\n\u65e0\u6cd5\u7b7e\u5230"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/lzx/iteam/AttendanceMainActivity;->showNoticeDlg(Ljava/lang/String;I)V

    .line 538
    :goto_0
    return-void

    .line 520
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v2, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sid"

    .line 522
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "attendance_form_id"

    iget-object v5, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v5}, Lcom/lzx/iteam/bean/AttendanceData;->get_id()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "attendance_type"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "latitude"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLatitude:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "longitude"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLongitude:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "device_name"

    iget-object v5, p0, Lcom/lzx/iteam/AttendanceMainActivity;->deviceName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "device_type"

    const-string v5, "1"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "device_number"

    iget-object v5, p0, Lcom/lzx/iteam/AttendanceMainActivity;->deviceId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 531
    .local v1, "msg":Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 532
    new-instance v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 533
    .local v0, "getMsgHttpReceiver":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    const-string v3, "/api/event/attendance/do"

    iput-object v3, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 534
    iput-object v2, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 535
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    goto/16 :goto_0
.end method

.method private getAttendanceFace()V
    .locals 5

    .prologue
    .line 501
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 503
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    new-instance v0, Lcom/lzx/iteam/net/AttendanceFaceMsg;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/lzx/iteam/net/AttendanceFaceMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 505
    .local v0, "attendanceFaceMsg":Lcom/lzx/iteam/net/AttendanceFaceMsg;
    const-string v2, "/api/event/attendance/face"

    iput-object v2, v0, Lcom/lzx/iteam/net/AttendanceFaceMsg;->mApi:Ljava/lang/String;

    .line 506
    iput-object v1, v0, Lcom/lzx/iteam/net/AttendanceFaceMsg;->mParams:Ljava/util/List;

    .line 507
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 509
    return-void
.end method

.method private getCurDeviceMsg()V
    .locals 5

    .prologue
    .line 570
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/AttendanceMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 571
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/AttendanceMainActivity;->deviceId:Ljava/lang/String;

    .line 572
    new-instance v0, Landroid/os/Build;

    invoke-direct {v0}, Landroid/os/Build;-><init>()V

    .line 573
    .local v0, "bd":Landroid/os/Build;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, p0, Lcom/lzx/iteam/AttendanceMainActivity;->deviceName:Ljava/lang/String;

    .line 574
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceMainActivity;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deviceName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceMainActivity;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deviceId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceMainActivity;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-void
.end method

.method private getDistance(DD)Ljava/lang/String;
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 558
    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 559
    .local v1, "start":Lcom/baidu/mapapi/model/LatLng;
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLatitude:D

    iget-wide v4, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLongitude:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 562
    .local v0, "end":Lcom/baidu/mapapi/model/LatLng;
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceMainActivity;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7b7e\u5230\u7ecf\u7eac\u5ea6 latitude:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "longitude:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceMainActivity;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5b9a\u4f4d\u7ecf\u7eac\u5ea6 latitude:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLatitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "longitude:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLongitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceMainActivity;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8ddd\u79bb distance:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-static {v1, v0}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    return-object v2
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 176
    const v0, 0x7f0e00e0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLlTitle:Landroid/widget/LinearLayout;

    .line 177
    const v0, 0x7f0e00df

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLlHelp:Landroid/widget/LinearLayout;

    .line 178
    const v0, 0x7f0e00e2

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mIvArrow:Landroid/widget/ImageView;

    .line 179
    const v0, 0x7f0e00e1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvTitle:Landroid/widget/TextView;

    .line 180
    const v0, 0x7f0e00e4

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvManage:Landroid/widget/TextView;

    .line 181
    const v0, 0x7f0e00e3

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvCount:Landroid/widget/TextView;

    .line 182
    const v0, 0x7f0e00e7

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvCurrentTime:Landroid/widget/TextView;

    .line 183
    const v0, 0x7f0e00e9

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvSignTime:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f0e00ec

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvLocation:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f0e00ee

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvLocNote:Landroid/widget/TextView;

    .line 186
    const v0, 0x7f0e00ed

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvLocAddress:Landroid/widget/TextView;

    .line 187
    const v0, 0x7f0e00eb

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mBtnLocRefresh:Landroid/widget/Button;

    .line 188
    const v0, 0x7f0e00ef

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLlSignIn:Landroid/widget/LinearLayout;

    .line 189
    const v0, 0x7f0e00f0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mIvSignIn:Landroid/widget/ImageView;

    .line 190
    const v0, 0x7f0e00f1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvSignIn:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f0e00f2

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLlSignOut:Landroid/widget/LinearLayout;

    .line 192
    const v0, 0x7f0e00f3

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mIvSignOut:Landroid/widget/ImageView;

    .line 193
    const v0, 0x7f0e00f4

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvSignOut:Landroid/widget/TextView;

    .line 194
    const v0, 0x7f0e00de

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLlBack:Landroid/widget/LinearLayout;

    .line 195
    const v0, 0x7f0e00e5

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTopLineView:Landroid/view/View;

    .line 197
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLlHelp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLlTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvManage:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvCount:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mBtnLocRefresh:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLlSignIn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLlSignOut:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLlBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->waitDlgShow()V

    .line 207
    new-instance v0, Lcom/lzx/iteam/util/LocationUtil;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/util/LocationUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    .line 208
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    new-instance v1, Lcom/lzx/iteam/AttendanceMainActivity$2;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/AttendanceMainActivity$2;-><init>(Lcom/lzx/iteam/AttendanceMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/LocationUtil;->setListener(Lcom/lzx/iteam/util/LocationUtil$LocationStatus;)V

    .line 223
    return-void
.end method

.method private refreshLoction(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    invoke-virtual {v0}, Lcom/lzx/iteam/util/LocationUtil;->stopLocation()V

    .line 358
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    invoke-virtual {v0}, Lcom/lzx/iteam/util/LocationUtil;->destoryLocation()V

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->waitDlgShow()V

    .line 362
    new-instance v0, Lcom/lzx/iteam/util/LocationUtil;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/util/LocationUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    .line 363
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    new-instance v1, Lcom/lzx/iteam/AttendanceMainActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/lzx/iteam/AttendanceMainActivity$4;-><init>(Lcom/lzx/iteam/AttendanceMainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/LocationUtil;->setListener(Lcom/lzx/iteam/util/LocationUtil$LocationStatus;)V

    .line 380
    return-void
.end method

.method private setAttendanceMsg(Lcom/lzx/iteam/bean/AttendanceData;)V
    .locals 14
    .param p1, "attendanceData"    # Lcom/lzx/iteam/bean/AttendanceData;

    .prologue
    .line 597
    iget-object v8, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v8, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvSignTime:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u4e0a\u73ed\u65f6\u95f4:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getStartWorkTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  \u4e0b\u73ed\u65f6\u95f4:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getEndWorkTime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v8, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvLocAddress:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u8003\u52e4\u70b9:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v8, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvLocNote:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getDeviation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u7c73\u5185\u53ef\u4ee5\u7b7e\u5230)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getLatitude()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getLongitude()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/lzx/iteam/AttendanceMainActivity;->getDistance(DD)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_2

    .line 603
    iget-object v8, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvLocation:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u5f53\u524d\u5b9a\u4f4d\u8ddd\u79bb\u8003\u52e4\u5730\u70b9"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getLatitude()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getLongitude()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/lzx/iteam/AttendanceMainActivity;->getDistance(DD)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u5343\u7c73"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    :goto_0
    const-string v8, "1"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getSignIn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 611
    iget-object v8, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mIvSignIn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0202f8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 612
    iget-object v8, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvSignIn:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getSignInTime()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-static {v10, v11}, Lcom/lzx/iteam/util/DateUtil;->getHourAndMin(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\u5df2\u7b7e\u5230"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getStartWorkTime()Ljava/lang/String;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 614
    .local v6, "startWorkHour":I
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getStartWorkTime()Ljava/lang/String;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 616
    .local v7, "startWorkMinute":I
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getSignInTime()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/lzx/iteam/util/DateUtil;->getHour(J)I

    move-result v2

    .line 617
    .local v2, "signInHour":I
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getSignInTime()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/lzx/iteam/util/DateUtil;->getMinute(J)I

    move-result v3

    .line 619
    .local v3, "signInMinute":I
    if-gt v2, v6, :cond_0

    if-ne v2, v6, :cond_3

    if-le v3, v7, :cond_3

    .line 620
    :cond_0
    iget-object v8, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvSignIn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a000e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 631
    .end local v2    # "signInHour":I
    .end local v3    # "signInMinute":I
    .end local v6    # "startWorkHour":I
    .end local v7    # "startWorkMinute":I
    :goto_1
    const-string v8, "1"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getSignOut()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 632
    iget-object v8, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mIvSignOut:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0202fa

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 633
    iget-object v8, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvSignOut:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getSignOutTime()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-static {v10, v11}, Lcom/lzx/iteam/util/DateUtil;->getHourAndMin(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\u5df2\u7b7e\u9000"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getEndWorkTime()Ljava/lang/String;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 635
    .local v0, "endWorkHour":I
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getEndWorkTime()Ljava/lang/String;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 637
    .local v1, "endWorkMinute":I
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getSignOutTime()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/lzx/iteam/util/DateUtil;->getHour(J)I

    move-result v4

    .line 638
    .local v4, "signOutHour":I
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getSignOutTime()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/lzx/iteam/util/DateUtil;->getMinute(J)I

    move-result v5

    .line 640
    .local v5, "signOutMinute":I
    if-lt v4, v0, :cond_1

    if-ne v4, v0, :cond_5

    if-ge v5, v1, :cond_5

    .line 641
    :cond_1
    iget-object v8, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvSignOut:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a000e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 652
    .end local v0    # "endWorkHour":I
    .end local v1    # "endWorkMinute":I
    .end local v4    # "signOutHour":I
    .end local v5    # "signOutMinute":I
    :goto_2
    return-void

    .line 606
    :cond_2
    iget-object v8, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvLocation:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u5f53\u524d\u5b9a\u4f4d\u8ddd\u79bb\u8003\u52e4\u5730\u70b9"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getLatitude()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceData;->getLongitude()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/lzx/iteam/AttendanceMainActivity;->getDistance(DD)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u7c73"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 622
    .restart local v2    # "signInHour":I
    .restart local v3    # "signInMinute":I
    .restart local v6    # "startWorkHour":I
    .restart local v7    # "startWorkMinute":I
    :cond_3
    iget-object v8, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvSignIn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00bf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 625
    .end local v2    # "signInHour":I
    .end local v3    # "signInMinute":I
    .end local v6    # "startWorkHour":I
    .end local v7    # "startWorkMinute":I
    :cond_4
    iget-object v8, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvSignIn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00bf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 626
    iget-object v8, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mIvSignIn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0202f7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 627
    iget-object v8, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvSignIn:Landroid/widget/TextView;

    const-string v9, "\u7b7e\u5230"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 643
    .restart local v0    # "endWorkHour":I
    .restart local v1    # "endWorkMinute":I
    .restart local v4    # "signOutHour":I
    .restart local v5    # "signOutMinute":I
    :cond_5
    iget-object v8, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvSignOut:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00bf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 647
    .end local v0    # "endWorkHour":I
    .end local v1    # "endWorkMinute":I
    .end local v4    # "signOutHour":I
    .end local v5    # "signOutMinute":I
    :cond_6
    iget-object v8, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvSignOut:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a00bf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 648
    iget-object v8, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mIvSignOut:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0202f9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 649
    iget-object v8, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvSignOut:Landroid/widget/TextView;

    const-string v9, "\u7b7e\u9000"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private setData()V
    .locals 4

    .prologue
    .line 343
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTvCurrentTime:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/DateUtil;->getYearDate1(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 345
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mAction:Ljava/lang/String;

    .line 346
    const-string v1, "my_receiver"

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    const-string v1, "groupId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mReceiverGroupId:Ljava/lang/String;

    .line 348
    const-string v1, "groupName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mReceiverGroupName:Ljava/lang/String;

    .line 350
    :cond_0
    return-void
.end method

.method private showAttendanceCountPop()V
    .locals 19

    .prologue
    .line 442
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03001c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 443
    .local v13, "mainView":Landroid/view/View;
    const v3, 0x7f0e00c5

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 444
    .local v14, "myCount":Landroid/widget/LinearLayout;
    const v3, 0x7f0e00c6

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 445
    .local v12, "allCount":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    if-eqz v3, :cond_0

    const-string v3, "1"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getIsAdmin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 446
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 451
    :goto_0
    new-instance v3, Lcom/lzx/iteam/AttendanceMainActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lzx/iteam/AttendanceMainActivity$8;-><init>(Lcom/lzx/iteam/AttendanceMainActivity;)V

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    new-instance v3, Lcom/lzx/iteam/AttendanceMainActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lzx/iteam/AttendanceMainActivity$9;-><init>(Lcom/lzx/iteam/AttendanceMainActivity;)V

    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    const/high16 v3, 0x43200000    # 160.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v15

    .line 475
    .local v15, "popWidth":I
    new-instance v3, Landroid/widget/PopupWindow;

    .line 477
    const/4 v4, -0x2

    invoke-direct {v3, v13, v15, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 475
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/AttendanceMainActivity;->mCountPopupWindow:Landroid/widget/PopupWindow;

    .line 478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/AttendanceMainActivity;->mCountPopupWindow:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/AttendanceMainActivity;->mCountPopupWindow:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/AttendanceMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    sub-int/2addr v3, v15

    add-int/lit8 v17, v3, -0xa

    .line 481
    .local v17, "xOffSet":I
    const/high16 v3, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v18

    .line 482
    .local v18, "yOffSet":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/AttendanceMainActivity;->mCountPopupWindow:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 483
    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 482
    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/AttendanceMainActivity;->mCountPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/AttendanceMainActivity;->mTopLineView:Landroid/view/View;

    move/from16 v0, v18

    neg-int v5, v0

    move/from16 v0, v17

    invoke-virtual {v3, v4, v0, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 485
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v11, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 486
    .local v11, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0xfa

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 487
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e4ccccd    # 0.2f

    .line 488
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const v8, 0x3f68f5c3    # 0.91f

    .line 489
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 487
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 490
    .local v2, "sa":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 491
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 492
    .local v16, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 493
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 494
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 495
    return-void

    .line 448
    .end local v2    # "sa":Landroid/view/animation/ScaleAnimation;
    .end local v11    # "aa":Landroid/view/animation/AlphaAnimation;
    .end local v15    # "popWidth":I
    .end local v16    # "set":Landroid/view/animation/AnimationSet;
    .end local v17    # "xOffSet":I
    .end local v18    # "yOffSet":I
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private showTeamDialog()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 388
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 389
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 388
    iput-object v5, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTeamDialog:Landroid/app/Dialog;

    .line 390
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTeamDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 391
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTeamDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 392
    .local v4, "window":Landroid/view/Window;
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTeamDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 393
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const v5, 0x3e99999a    # 0.3f

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 395
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 397
    const v5, 0x7f03002b

    invoke-virtual {v4, v5}, Landroid/view/Window;->setContentView(I)V

    .line 399
    invoke-virtual {v4, v6, v6}, Landroid/view/Window;->setLayout(II)V

    .line 401
    const v5, 0x7f090019

    invoke-virtual {v4, v5}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 403
    const v5, 0x7f0e0128

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 404
    .local v2, "listView":Landroid/widget/ListView;
    const v5, 0x7f0e0127

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 407
    .local v1, "cancelLayout":Landroid/widget/LinearLayout;
    new-instance v0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;-><init>(Landroid/content/Context;)V

    .line 408
    .local v0, "adapter":Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceDatas:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;->bindData(Ljava/util/ArrayList;I)V

    .line 409
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 411
    new-instance v5, Lcom/lzx/iteam/AttendanceMainActivity$5;

    invoke-direct {v5, p0}, Lcom/lzx/iteam/AttendanceMainActivity$5;-><init>(Lcom/lzx/iteam/AttendanceMainActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 422
    new-instance v5, Lcom/lzx/iteam/AttendanceMainActivity$6;

    invoke-direct {v5, p0}, Lcom/lzx/iteam/AttendanceMainActivity$6;-><init>(Lcom/lzx/iteam/AttendanceMainActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mTeamDialog:Landroid/app/Dialog;

    new-instance v6, Lcom/lzx/iteam/AttendanceMainActivity$7;

    invoke-direct {v6, p0}, Lcom/lzx/iteam/AttendanceMainActivity$7;-><init>(Lcom/lzx/iteam/AttendanceMainActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 435
    return-void
.end method

.method private waitDlgDismiss()V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 591
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mProgressDialog:Landroid/app/Dialog;

    .line 593
    :cond_0
    return-void
.end method

.method private waitDlgShow()V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mProgressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 581
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u5b9a\u4f4d,\u8bf7\u7a0d\u540e"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/AllDialogUtil;->waitDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mProgressDialog:Landroid/app/Dialog;

    .line 583
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 586
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 657
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 658
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 659
    packed-switch p1, :pswitch_data_0

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 661
    :pswitch_0
    const-string v0, "attendance"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/AttendanceData;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    goto :goto_0

    .line 659
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 230
    :sswitch_0
    iget-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    if-eqz v9, :cond_0

    .line 231
    iget-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    .line 232
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02003a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 233
    iget-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mIvArrow:Landroid/widget/ImageView;

    const v10, 0x7f020036

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 235
    :cond_1
    iget-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mIvArrow:Landroid/widget/ImageView;

    const v10, 0x7f02003a

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    iget-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceDatas:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceDatas:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->showTeamDialog()V

    goto :goto_0

    .line 243
    :sswitch_1
    iget-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    if-eqz v9, :cond_2

    .line 244
    new-instance v2, Landroid/content/Intent;

    const-class v9, Lcom/lzx/iteam/AttendanceManageActivity;

    invoke-direct {v2, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .local v2, "intent":Landroid/content/Intent;
    const-string v9, "attendanceData"

    iget-object v10, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 246
    const/16 v9, 0x64

    invoke-virtual {p0, v2, v9}, Lcom/lzx/iteam/AttendanceMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 248
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v9, "\u60a8\u4e0d\u5c5e\u4e8e\u4efb\u4f55\u8003\u52e4\u70b9\uff0c\u65e0\u6cd5\u8fdb\u884c\u8003\u52e4\u64cd\u4f5c"

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 252
    :sswitch_2
    iget-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    if-eqz v9, :cond_3

    .line 253
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->showAttendanceCountPop()V

    goto :goto_0

    .line 255
    :cond_3
    const-string v9, "\u60a8\u4e0d\u5c5e\u4e8e\u4efb\u4f55\u8003\u52e4\u70b9\uff0c\u65e0\u6cd5\u8fdb\u884c\u8003\u52e4\u64cd\u4f5c"

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 259
    :sswitch_3
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->waitDlgShow()V

    .line 260
    iget-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    if-eqz v9, :cond_4

    .line 261
    iget-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    invoke-virtual {v9}, Lcom/lzx/iteam/util/LocationUtil;->stopLocation()V

    .line 262
    iget-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    invoke-virtual {v9}, Lcom/lzx/iteam/util/LocationUtil;->destoryLocation()V

    .line 263
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    .line 265
    :cond_4
    new-instance v9, Lcom/lzx/iteam/util/LocationUtil;

    invoke-direct {v9, p0}, Lcom/lzx/iteam/util/LocationUtil;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    .line 266
    iget-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    new-instance v10, Lcom/lzx/iteam/AttendanceMainActivity$3;

    invoke-direct {v10, p0}, Lcom/lzx/iteam/AttendanceMainActivity$3;-><init>(Lcom/lzx/iteam/AttendanceMainActivity;)V

    invoke-virtual {v9, v10}, Lcom/lzx/iteam/util/LocationUtil;->setListener(Lcom/lzx/iteam/util/LocationUtil$LocationStatus;)V

    goto/16 :goto_0

    .line 287
    :sswitch_4
    iget-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    if-eqz v9, :cond_8

    .line 288
    const-string v9, "1"

    iget-object v10, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v10}, Lcom/lzx/iteam/bean/AttendanceData;->getSignIn()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 289
    const-string v9, "\u60a8\u4eca\u5929\u5df2\u7ecf\u7b7e\u5230\uff0c\u8bf7\u52ff\u91cd\u590d\u6253\u5361"

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 291
    :cond_5
    iget-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v9}, Lcom/lzx/iteam/bean/AttendanceData;->getStartWorkTime()Ljava/lang/String;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 292
    .local v7, "startWorkHour":I
    iget-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v9}, Lcom/lzx/iteam/bean/AttendanceData;->getStartWorkTime()Ljava/lang/String;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 294
    .local v8, "startWorkMinute":I
    iget-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v9}, Lcom/lzx/iteam/bean/AttendanceData;->getSignInTime()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-static {v10, v11}, Lcom/lzx/iteam/util/DateUtil;->getHour(J)I

    move-result v3

    .line 295
    .local v3, "signInHour":I
    iget-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v9}, Lcom/lzx/iteam/bean/AttendanceData;->getSignInTime()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-static {v10, v11}, Lcom/lzx/iteam/util/DateUtil;->getMinute(J)I

    move-result v4

    .line 297
    .local v4, "signInMinute":I
    if-gt v3, v7, :cond_6

    if-ne v3, v7, :cond_7

    if-le v4, v8, :cond_7

    .line 298
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u73b0\u5728\u662f"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/lzx/iteam/util/DateUtil;->getHourAndMin(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u5206,\u60a8\u5df2\u8fdf\u5230\n\u662f\u5426\u786e\u8ba4\u7b7e\u5230"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/lzx/iteam/AttendanceMainActivity;->showNoticeDlg(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 301
    :cond_7
    const-string v9, "1"

    invoke-direct {p0, v9}, Lcom/lzx/iteam/AttendanceMainActivity;->refreshLoction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 305
    .end local v3    # "signInHour":I
    .end local v4    # "signInMinute":I
    .end local v7    # "startWorkHour":I
    .end local v8    # "startWorkMinute":I
    :cond_8
    const-string v9, "\u60a8\u4e0d\u5c5e\u4e8e\u4efb\u4f55\u8003\u52e4\u70b9\uff0c\u65e0\u6cd5\u8fdb\u884c\u8003\u52e4\u64cd\u4f5c"

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 309
    :sswitch_5
    iget-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    if-eqz v9, :cond_c

    .line 310
    const-string v9, "1"

    iget-object v10, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v10}, Lcom/lzx/iteam/bean/AttendanceData;->getSignOut()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 311
    const-string v9, "\u60a8\u4eca\u5929\u5df2\u7ecf\u7b7e\u9000\uff0c\u8bf7\u52ff\u91cd\u590d\u6253\u5361"

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 313
    :cond_9
    iget-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v9}, Lcom/lzx/iteam/bean/AttendanceData;->getEndWorkTime()Ljava/lang/String;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 314
    .local v0, "endWorkHour":I
    iget-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v9}, Lcom/lzx/iteam/bean/AttendanceData;->getEndWorkTime()Ljava/lang/String;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 316
    .local v1, "endWorkMinute":I
    iget-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v9}, Lcom/lzx/iteam/bean/AttendanceData;->getSignOutTime()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-static {v10, v11}, Lcom/lzx/iteam/util/DateUtil;->getHour(J)I

    move-result v5

    .line 317
    .local v5, "signOutHour":I
    iget-object v9, p0, Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v9}, Lcom/lzx/iteam/bean/AttendanceData;->getSignOutTime()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-static {v10, v11}, Lcom/lzx/iteam/util/DateUtil;->getMinute(J)I

    move-result v6

    .line 319
    .local v6, "signOutMinute":I
    if-lt v5, v0, :cond_a

    if-ne v5, v0, :cond_b

    if-ge v6, v1, :cond_b

    .line 320
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u73b0\u5728\u662f"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/lzx/iteam/util/DateUtil;->getHourAndMin(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u5206,\u8fd8\u672a\u4e0b\u73ed\n\u60a8\u662f\u5426\u786e\u8ba4\u7b7e\u9000"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {p0, v9, v10}, Lcom/lzx/iteam/AttendanceMainActivity;->showNoticeDlg(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 323
    :cond_b
    const-string v9, "2"

    invoke-direct {p0, v9}, Lcom/lzx/iteam/AttendanceMainActivity;->refreshLoction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 327
    .end local v0    # "endWorkHour":I
    .end local v1    # "endWorkMinute":I
    .end local v5    # "signOutHour":I
    .end local v6    # "signOutMinute":I
    :cond_c
    const-string v9, "\u60a8\u4e0d\u5c5e\u4e8e\u4efb\u4f55\u8003\u52e4\u70b9\uff0c\u65e0\u6cd5\u8fdb\u884c\u8003\u52e4\u64cd\u4f5c"

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 331
    :sswitch_6
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->finish()V

    goto/16 :goto_0

    .line 334
    :sswitch_7
    new-instance v2, Landroid/content/Intent;

    const-class v9, Lcom/lzx/iteam/HelpActivity;

    invoke-direct {v2, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v9, "title"

    const-string v10, "\u5982\u4f55\u8bbe\u7f6e\u8003\u52e4\u70b9?"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v9, "type"

    const/4 v10, 0x2

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/AttendanceMainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 228
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00de -> :sswitch_6
        0x7f0e00df -> :sswitch_7
        0x7f0e00e0 -> :sswitch_0
        0x7f0e00e3 -> :sswitch_2
        0x7f0e00e4 -> :sswitch_1
        0x7f0e00eb -> :sswitch_3
        0x7f0e00ef -> :sswitch_4
        0x7f0e00f2 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/SDKInitializer;->initialize(Landroid/content/Context;)V

    .line 169
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->setContentView(I)V

    .line 170
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->initViews()V

    .line 171
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->setData()V

    .line 172
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceMainActivity;->getCurDeviceMsg()V

    .line 173
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 542
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 543
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    invoke-virtual {v0}, Lcom/lzx/iteam/util/LocationUtil;->stopLocation()V

    .line 545
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    invoke-virtual {v0}, Lcom/lzx/iteam/util/LocationUtil;->destoryLocation()V

    .line 546
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity;->mLocationUtil:Lcom/lzx/iteam/util/LocationUtil;

    .line 548
    :cond_0
    return-void
.end method

.method public showNoticeDlg(Ljava/lang/String;I)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 669
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v1

    .line 670
    .local v1, "mDialogUtil":Lcom/lzx/iteam/util/AllDialogUtil;
    const v3, 0x7f080061

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/AttendanceMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, "okText":Ljava/lang/String;
    const v3, 0x7f08002d

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/AttendanceMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "cancelText":Ljava/lang/String;
    const/4 v3, 0x3

    if-ne p2, v3, :cond_0

    .line 673
    const-string v3, "\u63d0\u793a"

    const-string v4, "\u77e5\u9053\u4e86"

    invoke-virtual {v1, v3, p1, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 677
    :goto_0
    new-instance v3, Lcom/lzx/iteam/AttendanceMainActivity$10;

    invoke-direct {v3, p0, p2}, Lcom/lzx/iteam/AttendanceMainActivity$10;-><init>(Lcom/lzx/iteam/AttendanceMainActivity;I)V

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 695
    return-void

    .line 675
    :cond_0
    const-string v3, "\u63d0\u793a"

    invoke-virtual {v1, v3, p1, v2, v0}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0
.end method
