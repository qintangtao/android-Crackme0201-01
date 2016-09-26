.class public Lcom/lzx/iteam/AttendanceDevicesActivity;
.super Landroid/app/Activity;
.source "AttendanceDevicesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final GET_ATTENDANCE_GET_MY_DEVICE:I

.field private final GET_ATTENDANCE_SET_MY_DEVICE:I

.field private curDevice:Lcom/lzx/iteam/bean/DeviceMsgData;

.field private deviceMsgDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/DeviceMsgData;",
            ">;"
        }
    .end annotation
.end field

.field private isOpen:I

.field private mAdapter:Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;

.field private mDeviceId:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mGroupId:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLlBack:Landroid/widget/LinearLayout;

.field private mLvHistoryDeviceList:Lcom/lzx/iteam/widget/MyListView;

.field private mTvCurDeviceBind:Landroid/widget/TextView;

.field private mTvCurDeviceId:Landroid/widget/TextView;

.field private mTvCurDeviceName:Landroid/widget/TextView;

.field private mTvDeviceId:Landroid/widget/TextView;

.field private mTvDeviceName:Landroid/widget/TextView;

.field private mTvDeviceStatus:Landroid/widget/TextView;

.field private mTvHistoryText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->GET_ATTENDANCE_GET_MY_DEVICE:I

    .line 38
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->GET_ATTENDANCE_SET_MY_DEVICE:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->deviceMsgDatas:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Lcom/lzx/iteam/bean/DeviceMsgData;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/DeviceMsgData;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->curDevice:Lcom/lzx/iteam/bean/DeviceMsgData;

    .line 47
    new-instance v0, Lcom/lzx/iteam/AttendanceDevicesActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/AttendanceDevicesActivity$1;-><init>(Lcom/lzx/iteam/AttendanceDevicesActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/AttendanceDevicesActivity;I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->isOpen:I

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/AttendanceDevicesActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->deviceMsgDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/AttendanceDevicesActivity;)Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mAdapter:Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lzx/iteam/AttendanceDevicesActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvHistoryText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/lzx/iteam/AttendanceDevicesActivity;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceDevicesActivity;->getMyDeviceMsg()V

    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/AttendanceDevicesActivity;Lcom/lzx/iteam/bean/DeviceMsgData;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->curDevice:Lcom/lzx/iteam/bean/DeviceMsgData;

    return-void
.end method

.method static synthetic access$3(Lcom/lzx/iteam/AttendanceDevicesActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvDeviceStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/AttendanceDevicesActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvDeviceName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/AttendanceDevicesActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvDeviceId:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/AttendanceDevicesActivity;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->isOpen:I

    return v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/AttendanceDevicesActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvCurDeviceBind:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/AttendanceDevicesActivity;Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mAdapter:Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;

    return-void
.end method

.method static synthetic access$9(Lcom/lzx/iteam/AttendanceDevicesActivity;)Lcom/lzx/iteam/widget/MyListView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mLvHistoryDeviceList:Lcom/lzx/iteam/widget/MyListView;

    return-object v0
.end method

.method private getCurDeviceMsg()V
    .locals 5

    .prologue
    .line 141
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/AttendanceDevicesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 142
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mDeviceId:Ljava/lang/String;

    .line 143
    new-instance v0, Landroid/os/Build;

    invoke-direct {v0}, Landroid/os/Build;-><init>()V

    .line 144
    .local v0, "bd":Landroid/os/Build;
    const-string v2, "info"

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

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

    .line 145
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mDeviceName:Ljava/lang/String;

    .line 146
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->curDevice:Lcom/lzx/iteam/bean/DeviceMsgData;

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/DeviceMsgData;->setDeviceId(Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->curDevice:Lcom/lzx/iteam/bean/DeviceMsgData;

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/DeviceMsgData;->setDeviceName(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvCurDeviceId:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bbe\u5907\u53f7:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvCurDeviceName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvDeviceName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvDeviceId:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bbe\u5907\u53f7:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method

.method private getIntentData()V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceDevicesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "groupId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mGroupId:Ljava/lang/String;

    .line 124
    return-void
.end method

.method private getMyDeviceMsg()V
    .locals 5

    .prologue
    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 163
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mGroupId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v0, Lcom/lzx/iteam/net/MyDeviceMsg;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/MyDeviceMsg;-><init>(Landroid/os/Message;)V

    .line 166
    .local v0, "myDeviceMsg":Lcom/lzx/iteam/net/MyDeviceMsg;
    const-string v2, "/api/event/attendance/my_devices"

    iput-object v2, v0, Lcom/lzx/iteam/net/MyDeviceMsg;->mApi:Ljava/lang/String;

    .line 167
    iput-object v1, v0, Lcom/lzx/iteam/net/MyDeviceMsg;->mParams:Ljava/util/List;

    .line 168
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 169
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 106
    const v0, 0x7f0e00d6

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mLlBack:Landroid/widget/LinearLayout;

    .line 107
    const v0, 0x7f0e00da

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvDeviceName:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f0e00db

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvDeviceId:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0e00d7

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvDeviceStatus:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0e00d3

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvCurDeviceName:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0e00d4

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvCurDeviceId:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0e00d5

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvCurDeviceBind:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0e00dc

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvHistoryText:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0e00dd

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/MyListView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mLvHistoryDeviceList:Lcom/lzx/iteam/widget/MyListView;

    .line 116
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mTvCurDeviceBind:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mLlBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 130
    :pswitch_0
    iget v0, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->isOpen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceDevicesActivity;->setMyNewDeviceMsg()V

    goto :goto_0

    .line 135
    :pswitch_1
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceDevicesActivity;->finish()V

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00d5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceDevicesActivity;->setContentView(I)V

    .line 99
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceDevicesActivity;->initViews()V

    .line 100
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceDevicesActivity;->getIntentData()V

    .line 101
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceDevicesActivity;->getCurDeviceMsg()V

    .line 102
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceDevicesActivity;->getMyDeviceMsg()V

    .line 103
    return-void
.end method

.method public setMyDeviceMsg(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 194
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mGroupId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 198
    .local v0, "getMsgHttpReceiver":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    const-string v2, "/api/event/attendance/set_default_devices"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 199
    iput-object v1, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 200
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 201
    return-void
.end method

.method public setMyNewDeviceMsg()V
    .locals 5

    .prologue
    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 177
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mGroupId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device_number"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mDeviceId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device_type"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device_name"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mDeviceName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceDevicesActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 183
    .local v0, "getMsgHttpReceiver":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    const-string v2, "/api/event/attendance/insert_new_default_devices"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 184
    iput-object v1, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 185
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 186
    return-void
.end method
