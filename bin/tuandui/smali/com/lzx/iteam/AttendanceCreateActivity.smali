.class public Lcom/lzx/iteam/AttendanceCreateActivity;
.super Landroid/app/Activity;
.source "AttendanceCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final DEL_ATTENDANCE_MSG:I

.field private final GET_ATTENDANCE_LIST:I

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

.field private mAdapter:Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;

.field private mContactId:Ljava/lang/String;

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mGroupId:Ljava/lang/String;

.field private mGroupName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLlBack:Landroid/widget/LinearLayout;

.field private mLlNew:Landroid/widget/LinearLayout;

.field private mLvList:Landroid/widget/ListView;

.field private mPosition:I

.field private mUserType:Ljava/lang/String;

.field private mWaitDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mGroupId:Ljava/lang/String;

    .line 47
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->GET_ATTENDANCE_LIST:I

    .line 48
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->DEL_ATTENDANCE_MSG:I

    .line 50
    new-instance v0, Lcom/lzx/iteam/AttendanceCreateActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/AttendanceCreateActivity$1;-><init>(Lcom/lzx/iteam/AttendanceCreateActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/AttendanceCreateActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->attendanceDatas:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/AttendanceCreateActivity;)Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mAdapter:Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/AttendanceCreateActivity;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceCreateActivity;->httpReqDlgShow()V

    return-void
.end method

.method static synthetic access$11(Lcom/lzx/iteam/AttendanceCreateActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/lzx/iteam/AttendanceCreateActivity;->delAttendance(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/AttendanceCreateActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->attendanceDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/AttendanceCreateActivity;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceCreateActivity;->httpReqDlgDismiss()V

    return-void
.end method

.method static synthetic access$4(Lcom/lzx/iteam/AttendanceCreateActivity;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/AttendanceCreateActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/AttendanceCreateActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/AttendanceCreateActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mUserType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/AttendanceCreateActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mContactId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/AttendanceCreateActivity;I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mPosition:I

    return-void
.end method

.method private delAttendance(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 155
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mGroupId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "attendance_form_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 159
    .local v0, "getMsgHttpReceiver":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    const-string v2, "/api/event/attendance/del"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 160
    iput-object v1, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 161
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 163
    return-void
.end method

.method private getAttendanceList()V
    .locals 5

    .prologue
    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 139
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mGroupId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v0, Lcom/lzx/iteam/net/GetAttendanceList;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/lzx/iteam/net/GetAttendanceList;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 142
    .local v0, "getAttendanceList":Lcom/lzx/iteam/net/GetAttendanceList;
    const-string v2, "/api/event/attendance/list"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetAttendanceList;->mApi:Ljava/lang/String;

    .line 143
    iput-object v1, v0, Lcom/lzx/iteam/net/GetAttendanceList;->mParams:Ljava/util/List;

    .line 144
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 146
    return-void
.end method

.method private getIntentData()V
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "group_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mGroupId:Ljava/lang/String;

    .line 128
    const-string v1, "group_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mGroupName:Ljava/lang/String;

    .line 129
    const-string v1, "user_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mUserType:Ljava/lang/String;

    .line 130
    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mContactId:Ljava/lang/String;

    .line 131
    return-void
.end method

.method private httpReqDlgDismiss()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mWaitDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mWaitDialog:Landroid/app/Dialog;

    .line 228
    :cond_0
    return-void
.end method

.method private httpReqDlgShow()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mWaitDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 213
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->waitDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mWaitDialog:Landroid/app/Dialog;

    .line 215
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 218
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 89
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 90
    const v1, 0x7f0e00ca

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/AttendanceCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mLvList:Landroid/widget/ListView;

    .line 91
    const v1, 0x7f0e00c9

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/AttendanceCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mLlBack:Landroid/widget/LinearLayout;

    .line 92
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e00c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mLlNew:Landroid/widget/LinearLayout;

    .line 95
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mLvList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 96
    new-instance v1, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mAdapter:Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;

    .line 97
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mLvList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mAdapter:Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mLlBack:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mLlNew:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mLvList:Landroid/widget/ListView;

    new-instance v2, Lcom/lzx/iteam/AttendanceCreateActivity$2;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/AttendanceCreateActivity$2;-><init>(Lcom/lzx/iteam/AttendanceCreateActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 115
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mLvList:Landroid/widget/ListView;

    new-instance v2, Lcom/lzx/iteam/AttendanceCreateActivity$3;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/AttendanceCreateActivity$3;-><init>(Lcom/lzx/iteam/AttendanceCreateActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 123
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 206
    :goto_0
    :pswitch_0
    return-void

    .line 192
    :pswitch_1
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceCreateActivity;->finish()V

    goto :goto_0

    .line 195
    :pswitch_2
    new-instance v0, Lcom/lzx/iteam/bean/AttendanceData;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/AttendanceData;-><init>()V

    .line 196
    .local v0, "attendanceData":Lcom/lzx/iteam/bean/AttendanceData;
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/AttendanceData;->setGroupId(Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/AttendanceData;->setGroupName(Ljava/lang/String;)V

    .line 198
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lzx/iteam/BaiduMapActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "attendanceData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 200
    const-string v2, "group_name"

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v2, "user_type"

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mUserType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v2, "contact_id"

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mContactId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/AttendanceCreateActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x7f0e00c7
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCreateActivity;->setContentView(I)V

    .line 83
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceCreateActivity;->initView()V

    .line 84
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceCreateActivity;->getIntentData()V

    .line 85
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceCreateActivity;->getAttendanceList()V

    .line 86
    return-void
.end method

.method public showDeleteAttendanceDlg(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 170
    const v2, 0x7f080062

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/AttendanceCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "okText":Ljava/lang/String;
    const v2, 0x7f08002d

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/AttendanceCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "cancelText":Ljava/lang/String;
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    const-string v3, "\u5220\u9664\u8be5\u8003\u52e4\u70b9\uff1f"

    invoke-virtual {v2, v1, v0, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 173
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCreateActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    new-instance v3, Lcom/lzx/iteam/AttendanceCreateActivity$4;

    invoke-direct {v3, p0, p1}, Lcom/lzx/iteam/AttendanceCreateActivity$4;-><init>(Lcom/lzx/iteam/AttendanceCreateActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 186
    return-void
.end method
