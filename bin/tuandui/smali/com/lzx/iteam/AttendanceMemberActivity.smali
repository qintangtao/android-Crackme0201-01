.class public Lcom/lzx/iteam/AttendanceMemberActivity;
.super Landroid/app/Activity;
.source "AttendanceMemberActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final GET_IF_ALLOW_CHANGE_DEVICE:I

.field private final SET_IF_ALLOW_CHANGE_DEVICE:I

.field private attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

.field private mAdapter:Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;

.field private mAllow:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLlBack:Landroid/widget/LinearLayout;

.field private mLlMemberManage:Landroid/widget/LinearLayout;

.field private mLlNoData:Landroid/widget/LinearLayout;

.field private mLvMemberList:Landroid/widget/ListView;

.field private mRlAllow:Landroid/widget/RelativeLayout;

.field private mTbAllow:Landroid/widget/ToggleButton;

.field private mTvAdd:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private member:Lcom/lzx/iteam/bean/ScheduleManager;

.field private members:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ScheduleManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->GET_IF_ALLOW_CHANGE_DEVICE:I

    .line 44
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->SET_IF_ALLOW_CHANGE_DEVICE:I

    .line 45
    new-instance v0, Lcom/lzx/iteam/AttendanceMemberActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/AttendanceMemberActivity$1;-><init>(Lcom/lzx/iteam/AttendanceMemberActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/AttendanceMemberActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mAllow:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/AttendanceMemberActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mAllow:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/AttendanceMemberActivity;)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceMemberActivity;->getIfAllowChangeDevice()V

    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/AttendanceMemberActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/lzx/iteam/AttendanceMemberActivity;->setAllow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/lzx/iteam/AttendanceMemberActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mLvMemberList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/AttendanceMemberActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mTvAdd:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/AttendanceMemberActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->members:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/AttendanceMemberActivity;Lcom/lzx/iteam/bean/ScheduleManager;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->member:Lcom/lzx/iteam/bean/ScheduleManager;

    return-void
.end method

.method static synthetic access$7(Lcom/lzx/iteam/AttendanceMemberActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mTvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/AttendanceMemberActivity;)Lcom/lzx/iteam/bean/ScheduleManager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->member:Lcom/lzx/iteam/bean/ScheduleManager;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/AttendanceMemberActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mLlMemberManage:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getAllow()I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mTbAllow:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "1"

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mAllow:Ljava/lang/String;

    .line 234
    const/4 v0, 0x1

    .line 237
    :goto_0
    return v0

    .line 236
    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mAllow:Ljava/lang/String;

    .line 237
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIfAllowChangeDevice()V
    .locals 5

    .prologue
    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 247
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "attendance_uid"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->member:Lcom/lzx/iteam/bean/ScheduleManager;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/ScheduleManager;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v0, Lcom/lzx/iteam/net/MyDeviceMsg;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/MyDeviceMsg;-><init>(Landroid/os/Message;)V

    .line 251
    .local v0, "myDeviceMsg":Lcom/lzx/iteam/net/MyDeviceMsg;
    const-string v2, "/api/event/attendance/devices_status"

    iput-object v2, v0, Lcom/lzx/iteam/net/MyDeviceMsg;->mApi:Ljava/lang/String;

    .line 252
    iput-object v1, v0, Lcom/lzx/iteam/net/MyDeviceMsg;->mParams:Ljava/util/List;

    .line 253
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 254
    return-void
.end method

.method private getIntentData()V
    .locals 8

    .prologue
    .line 107
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->members:Ljava/util/ArrayList;

    .line 108
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceMemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 109
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "attendanceData"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/lzx/iteam/bean/AttendanceData;

    iput-object v6, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    .line 110
    iget-object v6, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v6}, Lcom/lzx/iteam/bean/AttendanceData;->getMembers()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 112
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    iget-object v6, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v6}, Lcom/lzx/iteam/bean/AttendanceData;->getMembers()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 113
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v1, v6, :cond_1

    .line 121
    iget-object v6, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mAdapter:Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;

    iget-object v7, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->members:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;->bindData(Ljava/util/ArrayList;)V

    .line 122
    iget-object v6, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mLvMemberList:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mAdapter:Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    :goto_1
    return-void

    .line 114
    .restart local v1    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 115
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v5, Lcom/lzx/iteam/bean/ScheduleManager;

    invoke-direct {v5}, Lcom/lzx/iteam/bean/ScheduleManager;-><init>()V

    .line 116
    .local v5, "member":Lcom/lzx/iteam/bean/ScheduleManager;
    const-string v6, "user_id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/bean/ScheduleManager;->setUserId(Ljava/lang/String;)V

    .line 117
    const-string v6, "contact_name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/bean/ScheduleManager;->setUserName(Ljava/lang/String;)V

    .line 118
    const-string v6, "user_image"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/bean/ScheduleManager;->setAvatar(Ljava/lang/String;)V

    .line 119
    iget-object v6, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->members:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "member":Lcom/lzx/iteam/bean/ScheduleManager;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 80
    const v0, 0x7f0e00fa

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mLlBack:Landroid/widget/LinearLayout;

    .line 81
    const v0, 0x7f0e00fd

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mLlNoData:Landroid/widget/LinearLayout;

    .line 82
    const v0, 0x7f0e0101

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mLlMemberManage:Landroid/widget/LinearLayout;

    .line 83
    const v0, 0x7f0e0102

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mRlAllow:Landroid/widget/RelativeLayout;

    .line 84
    const v0, 0x7f0e0103

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mTbAllow:Landroid/widget/ToggleButton;

    .line 85
    const v0, 0x7f0e00fc

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mTvAdd:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0e00fb

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mTvTitle:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f0e0100

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mLvMemberList:Landroid/widget/ListView;

    .line 88
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mLlBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mTvAdd:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mRlAllow:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mTbAllow:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 92
    new-instance v0, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mAdapter:Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;

    .line 93
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mLvMemberList:Landroid/widget/ListView;

    new-instance v1, Lcom/lzx/iteam/AttendanceMemberActivity$2;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/AttendanceMemberActivity$2;-><init>(Lcom/lzx/iteam/AttendanceMemberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    return-void
.end method

.method private setAllow(Ljava/lang/String;)V
    .locals 2
    .param p1, "notice"    # Ljava/lang/String;

    .prologue
    .line 224
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mTbAllow:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mTbAllow:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private setIfAllowChangeDevice()V
    .locals 6

    .prologue
    .line 260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 262
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "attendance_uid"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->member:Lcom/lzx/iteam/bean/ScheduleManager;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/ScheduleManager;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "is_open"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceMemberActivity;->getAllow()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 267
    .local v0, "getMsgHttpReceiver":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    const-string v2, "/api/event/attendance/switch_set_device"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 268
    iput-object v1, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 269
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 270
    return-void
.end method


# virtual methods
.method public delAttendanceMember(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mAdapter:Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/AttendanceMemberAdapter;->bindData(Ljava/util/ArrayList;)V

    .line 220
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 181
    :goto_0
    return-void

    .line 134
    :sswitch_0
    iget-object v6, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mLvMemberList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 135
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 136
    .local v3, "jsonArray":Lorg/json/JSONArray;
    iget-object v6, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->members:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 148
    .local v0, "back":Landroid/content/Intent;
    const-string v6, "members"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v6, "memberCount"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v0}, Lcom/lzx/iteam/AttendanceMemberActivity;->setResult(ILandroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceMemberActivity;->finish()V

    goto :goto_0

    .line 136
    .end local v0    # "back":Landroid/content/Intent;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/bean/ScheduleManager;

    .line 137
    .local v5, "manager":Lcom/lzx/iteam/bean/ScheduleManager;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 139
    .local v4, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "contact_name"

    invoke-virtual {v5}, Lcom/lzx/iteam/bean/ScheduleManager;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v7, "user_id"

    invoke-virtual {v5}, Lcom/lzx/iteam/bean/ScheduleManager;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v7, "user_image"

    invoke-virtual {v5}, Lcom/lzx/iteam/bean/ScheduleManager;->getAvatar()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 153
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "manager":Lcom/lzx/iteam/bean/ScheduleManager;
    :cond_1
    iget-object v6, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mLvMemberList:Landroid/widget/ListView;

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 154
    iget-object v6, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mLlMemberManage:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    iget-object v6, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mTvAdd:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v6, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mTvTitle:Landroid/widget/TextView;

    const-string v7, "\u9009\u62e9\u6210\u5458"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 162
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "attendance_member_add"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v6, "attendanceData"

    iget-object v7, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 165
    const-string v6, "group_id"

    iget-object v7, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v7}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v6, "tag_id"

    const-string v7, "0"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v6, "tag_name"

    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceMemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "group_name"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v6, "group_name"

    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceMemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "group_name"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v6, "user_type"

    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceMemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "create_type"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v6, "contact_count"

    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceMemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "contact_count"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v6, "contact_id"

    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceMemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "contact_id"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v6, "where"

    const-string v7, "cloud"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/AttendanceMemberActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 176
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_2
    iget-object v6, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mTbAllow:Landroid/widget/ToggleButton;

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->toggle()V

    .line 177
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceMemberActivity;->setIfAllowChangeDevice()V

    goto/16 :goto_0

    .line 132
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00fa -> :sswitch_0
        0x7f0e00fc -> :sswitch_1
        0x7f0e0102 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceMemberActivity;->setContentView(I)V

    .line 74
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceMemberActivity;->initViews()V

    .line 75
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceMemberActivity;->getIntentData()V

    .line 76
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x0

    .line 186
    packed-switch p1, :pswitch_data_0

    .line 214
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 188
    :pswitch_0
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mLvMemberList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 189
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 190
    .local v2, "jsonArray":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->members:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 202
    .local v0, "back":Landroid/content/Intent;
    const-string v5, "members"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v5, "memberCount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v0}, Lcom/lzx/iteam/AttendanceMemberActivity;->setResult(ILandroid/content/Intent;)V

    .line 205
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceMemberActivity;->finish()V

    goto :goto_0

    .line 190
    .end local v0    # "back":Landroid/content/Intent;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/bean/ScheduleManager;

    .line 191
    .local v4, "manager":Lcom/lzx/iteam/bean/ScheduleManager;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 193
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "contact_name"

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/ScheduleManager;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v6, "user_id"

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/ScheduleManager;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v6, "user_image"

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/ScheduleManager;->getAvatar()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 207
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "manager":Lcom/lzx/iteam/bean/ScheduleManager;
    :cond_1
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mLvMemberList:Landroid/widget/ListView;

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 208
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mLlMemberManage:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mTvAdd:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceMemberActivity;->mTvTitle:Landroid/widget/TextView;

    const-string v6, "\u9009\u62e9\u6210\u5458"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
