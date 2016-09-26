.class public Lcom/lzx/iteam/AttendanceManageActivity;
.super Landroid/app/Activity;
.source "AttendanceManageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final SET_NOTIFICATION:I

.field private attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

.field private mHandler:Landroid/os/Handler;

.field private mLlBack:Landroid/widget/LinearLayout;

.field private mNotice:Ljava/lang/String;

.field private mRlDeviceChange:Landroid/widget/RelativeLayout;

.field private mRlNotice:Landroid/widget/RelativeLayout;

.field private mTbNotice:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/16 v0, 0x2711

    iput v0, p0, Lcom/lzx/iteam/AttendanceManageActivity;->SET_NOTIFICATION:I

    .line 39
    new-instance v0, Lcom/lzx/iteam/AttendanceManageActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/AttendanceManageActivity$1;-><init>(Lcom/lzx/iteam/AttendanceManageActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceManageActivity;->mHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/AttendanceManageActivity;)Lcom/lzx/iteam/bean/AttendanceData;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceManageActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/AttendanceManageActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceManageActivity;->mNotice:Ljava/lang/String;

    return-object v0
.end method

.method private getIntentData()V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceManageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "attendanceData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/AttendanceData;

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceManageActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    .line 79
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceManageActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/AttendanceData;->getIsAlert()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceManageActivity;->mNotice:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceManageActivity;->mNotice:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/lzx/iteam/AttendanceManageActivity;->setNotice(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private getNotice()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceManageActivity;->mTbNotice:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "1"

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceManageActivity;->mNotice:Ljava/lang/String;

    .line 95
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    .line 97
    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceManageActivity;->mNotice:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 66
    const v0, 0x7f0e00f5

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceManageActivity;->mLlBack:Landroid/widget/LinearLayout;

    .line 67
    const v0, 0x7f0e00f6

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceManageActivity;->mRlDeviceChange:Landroid/widget/RelativeLayout;

    .line 68
    const v0, 0x7f0e00f8

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceManageActivity;->mRlNotice:Landroid/widget/RelativeLayout;

    .line 69
    const v0, 0x7f0e00f9

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceManageActivity;->mTbNotice:Landroid/widget/ToggleButton;

    .line 70
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceManageActivity;->mLlBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceManageActivity;->mRlDeviceChange:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceManageActivity;->mRlNotice:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceManageActivity;->mTbNotice:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 74
    return-void
.end method

.method private setAttendanceNotificationMsg()V
    .locals 6

    .prologue
    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "attendance_form_id"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceManageActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->get_id()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceManageActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "is_notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceManageActivity;->getNotice()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceManageActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2711

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 133
    .local v0, "msg":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    iput-object v1, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 134
    const-string v2, "/api/event/attendance/notification"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 135
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 136
    return-void
.end method

.method private setNotice(Ljava/lang/String;)V
    .locals 2
    .param p1, "notice"    # Ljava/lang/String;

    .prologue
    .line 85
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceManageActivity;->mTbNotice:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceManageActivity;->mTbNotice:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 121
    :goto_0
    :pswitch_0
    return-void

    .line 106
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v0, "back":Landroid/content/Intent;
    const-string v2, "attendance"

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceManageActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 108
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/lzx/iteam/AttendanceManageActivity;->setResult(ILandroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceManageActivity;->finish()V

    goto :goto_0

    .line 112
    .end local v0    # "back":Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lzx/iteam/AttendanceDevicesActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "groupId"

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceManageActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/AttendanceManageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 117
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_3
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceManageActivity;->mTbNotice:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->toggle()V

    .line 118
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceManageActivity;->setAttendanceNotificationMsg()V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00f5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceManageActivity;->setContentView(I)V

    .line 61
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceManageActivity;->initViews()V

    .line 62
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceManageActivity;->getIntentData()V

    .line 63
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 140
    packed-switch p1, :pswitch_data_0

    .line 149
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 142
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v0, "back":Landroid/content/Intent;
    const-string v1, "attendance"

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceManageActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 144
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/lzx/iteam/AttendanceManageActivity;->setResult(ILandroid/content/Intent;)V

    .line 145
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceManageActivity;->finish()V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
