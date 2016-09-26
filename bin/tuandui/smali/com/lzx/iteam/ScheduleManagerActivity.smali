.class public Lcom/lzx/iteam/ScheduleManagerActivity;
.super Landroid/app/Activity;
.source "ScheduleManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static mSelectPosition:I


# instance fields
.field private final DEL_SCHEDULE_MANAGER:I

.field private final GET_SCHEDULE_MANAGER:I

.field private delUserId:Ljava/lang/String;

.field private flag:I

.field private mAdapter:Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;

.field private mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

.field private mGroupId:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIvHelp:Landroid/widget/ImageView;

.field private mLayoutMember:Landroid/widget/FrameLayout;

.field private mLlBack:Landroid/widget/LinearLayout;

.field private mLlHelp:Landroid/widget/LinearLayout;

.field private mLlNoData:Landroid/widget/LinearLayout;

.field private mLvMangerList:Landroid/widget/ListView;

.field private mTvAddManager:Landroid/widget/TextView;

.field private mTvNoManager:Landroid/widget/TextView;

.field private mTvNotice:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private managers:Ljava/util/ArrayList;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, -0x1

    sput v0, Lcom/lzx/iteam/ScheduleManagerActivity;->mSelectPosition:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->GET_SCHEDULE_MANAGER:I

    .line 42
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->DEL_SCHEDULE_MANAGER:I

    .line 49
    new-instance v0, Lcom/lzx/iteam/ScheduleManagerActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ScheduleManagerActivity$1;-><init>(Lcom/lzx/iteam/ScheduleManagerActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ScheduleManagerActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->managers:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/ScheduleManagerActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->managers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/ScheduleManagerActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mLvMangerList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/ScheduleManagerActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mLlNoData:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/ScheduleManagerActivity;)Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mAdapter:Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/ScheduleManagerActivity;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->flag:I

    return v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/ScheduleManagerActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mTvNoManager:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/ScheduleManagerActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mTvNotice:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/ScheduleManagerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->delUserId:Ljava/lang/String;

    return-object v0
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 147
    const v0, 0x7f0e05c1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mLlBack:Landroid/widget/LinearLayout;

    .line 148
    const v0, 0x7f0e05c7

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mLlNoData:Landroid/widget/LinearLayout;

    .line 149
    const v0, 0x7f0e05c2

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mLlHelp:Landroid/widget/LinearLayout;

    .line 150
    const v0, 0x7f0e05c4

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mIvHelp:Landroid/widget/ImageView;

    .line 151
    const v0, 0x7f0e05c5

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mTvAddManager:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f0e05c9

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mLvMangerList:Landroid/widget/ListView;

    .line 153
    const v0, 0x7f0e05c3

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mTvTitle:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0e05ca

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mTvNotice:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0e05c6

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mLayoutMember:Landroid/widget/FrameLayout;

    .line 156
    const v0, 0x7f0e00ff

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mTvNoManager:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mLlBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mLlHelp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mTvAddManager:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    new-instance v0, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mAdapter:Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;

    .line 162
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mLvMangerList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 163
    return-void
.end method


# virtual methods
.method public delScheduleManager(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "approvalContactId"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x3e9

    .line 228
    iput-object p1, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->delUserId:Ljava/lang/String;

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 231
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->flag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 233
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "manager"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 235
    .local v0, "getMsgHttpReceiver":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    const-string v2, "/api/event/calendar/del_manager"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 236
    iput-object v1, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 237
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 247
    .end local v0    # "getMsgHttpReceiver":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->flag:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 239
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "approval_contact_id"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "current_contact_id"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v4, v4, Lcom/lzx/iteam/bean/CloudGroup;->contactId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 242
    .restart local v0    # "getMsgHttpReceiver":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    const-string v2, "/api/group/remove_approval_manager"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 243
    iput-object v1, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 244
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    goto :goto_0
.end method

.method public getApprovalManager()V
    .locals 5

    .prologue
    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v0, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 255
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mGroupId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v1, Lcom/lzx/iteam/net/ScheduleManagerMsg;

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lcom/lzx/iteam/net/ScheduleManagerMsg;-><init>(Landroid/os/Message;Landroid/content/Context;I)V

    .line 261
    .local v1, "scheduleManagerMsg":Lcom/lzx/iteam/net/ScheduleManagerMsg;
    const-string v2, "/api/group/approval_manager_list"

    iput-object v2, v1, Lcom/lzx/iteam/net/ScheduleManagerMsg;->mApi:Ljava/lang/String;

    .line 262
    iput-object v0, v1, Lcom/lzx/iteam/net/ScheduleManagerMsg;->mParams:Ljava/util/List;

    .line 263
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 265
    return-void
.end method

.method public getScheduleManager()V
    .locals 5

    .prologue
    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v0, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 216
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v1, Lcom/lzx/iteam/net/ScheduleManagerMsg;

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/lzx/iteam/net/ScheduleManagerMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 218
    .local v1, "scheduleManagerMsg":Lcom/lzx/iteam/net/ScheduleManagerMsg;
    const-string v2, "/api/event/calendar/get_managers"

    iput-object v2, v1, Lcom/lzx/iteam/net/ScheduleManagerMsg;->mApi:Ljava/lang/String;

    .line 219
    iput-object v0, v1, Lcom/lzx/iteam/net/ScheduleManagerMsg;->mParams:Ljava/util/List;

    .line 220
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 222
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 208
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 169
    :pswitch_1
    invoke-virtual {p0}, Lcom/lzx/iteam/ScheduleManagerActivity;->finish()V

    goto :goto_0

    .line 172
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/HelpActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v0, "help":Landroid/content/Intent;
    const-string v3, "title"

    const-string v4, "\u5982\u4f55\u8bbe\u7f6e\u5ba1\u6279\u4eba?"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v3, "type"

    const/16 v4, 0x10

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 178
    .end local v0    # "help":Landroid/content/Intent;
    :pswitch_3
    iget v3, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->flag:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 179
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/ChooseContactByTeamActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "schedule_manager_add"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ScheduleManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 182
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget v3, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->flag:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 183
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "group_id"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget-wide v6, v5, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v3, "tag_id"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v3, "tag_name"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v4, v4, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v3, "group_name"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v4, v4, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v3, "group_img"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v4, v4, Lcom/lzx/iteam/bean/CloudGroup;->groupImg:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v3, "group_type"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget v4, v4, Lcom/lzx/iteam/bean/CloudGroup;->groupType:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    const-string v3, "user_type"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v4, v4, Lcom/lzx/iteam/bean/CloudGroup;->userType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v3, "contact_count"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget v4, v4, Lcom/lzx/iteam/bean/CloudGroup;->contactCount:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    const-string v3, "contact_id"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v4, v4, Lcom/lzx/iteam/bean/CloudGroup;->contactId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v3, "groupData"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 194
    const-string v3, "where"

    const-string v4, "cloud"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v3, "approval_leader_add"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ScheduleManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 197
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget v3, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->flag:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 198
    sget v3, Lcom/lzx/iteam/ScheduleManagerActivity;->mSelectPosition:I

    if-eq v3, v6, :cond_3

    .line 199
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 200
    .local v2, "result":Landroid/content/Intent;
    const-string v4, "leader"

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->managers:Ljava/util/ArrayList;

    sget v5, Lcom/lzx/iteam/ScheduleManagerActivity;->mSelectPosition:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v6, v2}, Lcom/lzx/iteam/ScheduleManagerActivity;->setResult(ILandroid/content/Intent;)V

    .line 203
    .end local v2    # "result":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Lcom/lzx/iteam/ScheduleManagerActivity;->finish()V

    goto/16 :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x7f0e05c1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const v2, 0x7f0300de

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ScheduleManagerActivity;->setContentView(I)V

    .line 119
    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleManagerActivity;->initViews()V

    .line 120
    invoke-virtual {p0}, Lcom/lzx/iteam/ScheduleManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 121
    .local v1, "pass":Landroid/content/Intent;
    const-string v2, "schedule_manager"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    const/4 v2, 0x1

    iput v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->flag:I

    .line 123
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mTvTitle:Landroid/widget/TextView;

    const-string v3, "\u65e5\u7a0b\u7ba1\u7406\u5458"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0}, Lcom/lzx/iteam/ScheduleManagerActivity;->getScheduleManager()V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const-string v2, "approval_leader_add"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    const/4 v2, 0x2

    iput v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->flag:I

    .line 127
    const-string v2, "groupData"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/CloudGroup;

    iput-object v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget-wide v4, v3, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mGroupId:Ljava/lang/String;

    .line 129
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mTvTitle:Landroid/widget/TextView;

    const-string v3, "\u5ba1\u6279\u4eba\u8bbe\u7f6e"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mIvHelp:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    invoke-virtual {p0}, Lcom/lzx/iteam/ScheduleManagerActivity;->getApprovalManager()V

    goto :goto_0

    .line 132
    :cond_2
    const-string v2, "approval_leader_select"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    const/4 v2, 0x3

    iput v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->flag:I

    .line 134
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mTvTitle:Landroid/widget/TextView;

    const-string v3, "\u5ba1\u6279\u4eba"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mTvAddManager:Landroid/widget/TextView;

    const-string v3, "\u5b8c\u6210"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const-string v2, "group_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mGroupId:Ljava/lang/String;

    .line 137
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mTvNotice:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mLayoutMember:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 139
    .local v0, "linearParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {p0, v2}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 140
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mLayoutMember:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    invoke-virtual {p0}, Lcom/lzx/iteam/ScheduleManagerActivity;->getApprovalManager()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->flag:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->managers:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ScheduleManager;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleManager;->getAttendance()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "0"

    iget-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->managers:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ScheduleManager;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleManager;->getAttendance()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const-string v0, "\u4e0d\u5728\u4e00\u4e2a\u8003\u52e4\u91cc\u9762\uff0c\u4e0d\u53ef\u9009\u62e9"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 278
    :goto_0
    return-void

    .line 274
    :cond_0
    sput p3, Lcom/lzx/iteam/ScheduleManagerActivity;->mSelectPosition:I

    .line 275
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleManagerActivity;->mAdapter:Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/ScheduleManagerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
