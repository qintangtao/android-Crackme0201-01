.class public Lcom/lzx/iteam/AttendanceDeviceErrorActivity;
.super Lcom/lzx/iteam/base/MyBaseActivity;
.source "AttendanceDeviceErrorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final GET_DEVICE_MSG:I

.field private mDeviceId:Ljava/lang/String;

.field private mGroupId:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutBack:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e00d6
    .end annotation
.end field

.field private mSetUid:Ljava/lang/String;

.field private mTvErrorId:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e00d9
    .end annotation
.end field

.field private mTvErrorName:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e00d8
    .end annotation
.end field

.field private mTvId:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e00db
    .end annotation
.end field

.field private mTvName:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e00da
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lzx/iteam/base/MyBaseActivity;-><init>()V

    .line 49
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->GET_DEVICE_MSG:I

    .line 50
    new-instance v0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/AttendanceDeviceErrorActivity$1;-><init>(Lcom/lzx/iteam/AttendanceDeviceErrorActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->mHandler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/AttendanceDeviceErrorActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->mTvName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/AttendanceDeviceErrorActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->mTvId:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/AttendanceDeviceErrorActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->mTvErrorName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/AttendanceDeviceErrorActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->mTvErrorId:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/AttendanceDeviceErrorActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private getAttendanceCalendarMsg()V
    .locals 5

    .prologue
    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device_id"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->mDeviceId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->mGroupId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "set_uid"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->mSetUid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v0, Lcom/lzx/iteam/net/GetExceptionDeviceMsg;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetExceptionDeviceMsg;-><init>(Landroid/os/Message;)V

    .line 121
    .local v0, "msg":Lcom/lzx/iteam/net/GetExceptionDeviceMsg;
    iput-object v1, v0, Lcom/lzx/iteam/net/GetExceptionDeviceMsg;->mParams:Ljava/util/List;

    .line 122
    const-string v2, "/api/event/attendance/get_exception_device"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetExceptionDeviceMsg;->mApi:Ljava/lang/String;

    .line 123
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 124
    return-void
.end method


# virtual methods
.method public initData()V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "groupId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->mGroupId:Ljava/lang/String;

    .line 98
    const-string v1, "deviceId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->mDeviceId:Ljava/lang/String;

    .line 99
    const-string v1, "setUid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->mSetUid:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->getAttendanceCalendarMsg()V

    .line 102
    return-void
.end method

.method public initListener()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->mLayoutBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 108
    :pswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceDeviceErrorActivity;->finish()V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x7f0e00d6
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    const v0, 0x7f030022

    invoke-super {p0, p1, v0}, Lcom/lzx/iteam/base/MyBaseActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 87
    return-void
.end method
