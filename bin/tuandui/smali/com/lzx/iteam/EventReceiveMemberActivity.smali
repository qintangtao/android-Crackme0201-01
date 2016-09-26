.class public Lcom/lzx/iteam/EventReceiveMemberActivity;
.super Landroid/app/Activity;
.source "EventReceiveMemberActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final EVENT_MEMBER_MSG:I

.field private mBack:Landroid/widget/LinearLayout;

.field private mEventId:Ljava/lang/String;

.field private mEventType:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mMemberCount:Landroid/widget/TextView;

.field private mMemberForCreatorLayout:Landroid/widget/ScrollView;

.field private mNormalGrid:Landroid/widget/GridView;

.field private mReadedAdapter:Lcom/lzx/iteam/adapter/EventMemberAdapter;

.field private mReadedCount:Landroid/widget/TextView;

.field private mReadedGrid:Lcom/lzx/iteam/gridimg/MyGridView;

.field private mUnReadAdapter:Lcom/lzx/iteam/adapter/EventMemberAdapter;

.field private mUnReadCount:Landroid/widget/TextView;

.field private mUnReadGrid:Lcom/lzx/iteam/gridimg/MyGridView;

.field private mUserType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/16 v0, 0x65

    iput v0, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->EVENT_MEMBER_MSG:I

    .line 45
    new-instance v0, Lcom/lzx/iteam/EventReceiveMemberActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/EventReceiveMemberActivity$1;-><init>(Lcom/lzx/iteam/EventReceiveMemberActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mHandler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/EventReceiveMemberActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mEventType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/EventReceiveMemberActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mReadedCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/EventReceiveMemberActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/EventReceiveMemberActivity;Lcom/lzx/iteam/adapter/EventMemberAdapter;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mReadedAdapter:Lcom/lzx/iteam/adapter/EventMemberAdapter;

    return-void
.end method

.method static synthetic access$4(Lcom/lzx/iteam/EventReceiveMemberActivity;Lcom/lzx/iteam/adapter/EventMemberAdapter;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadAdapter:Lcom/lzx/iteam/adapter/EventMemberAdapter;

    return-void
.end method

.method static synthetic access$5(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/gridimg/MyGridView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mReadedGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/adapter/EventMemberAdapter;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mReadedAdapter:Lcom/lzx/iteam/adapter/EventMemberAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/gridimg/MyGridView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/EventReceiveMemberActivity;)Lcom/lzx/iteam/adapter/EventMemberAdapter;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadAdapter:Lcom/lzx/iteam/adapter/EventMemberAdapter;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/EventReceiveMemberActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mEventId:Ljava/lang/String;

    return-object v0
.end method

.method private getIntentData()V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/lzx/iteam/EventReceiveMemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "event_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mEventId:Ljava/lang/String;

    .line 184
    const-string v1, "1"

    iput-object v1, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mUserType:Ljava/lang/String;

    .line 185
    const-string v1, "event_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mEventType:Ljava/lang/String;

    .line 197
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 157
    const v0, 0x7f0e03a8

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EventReceiveMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mBack:Landroid/widget/LinearLayout;

    .line 158
    const v0, 0x7f0e03b0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EventReceiveMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mNormalGrid:Landroid/widget/GridView;

    .line 159
    const v0, 0x7f0e03aa

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EventReceiveMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mMemberForCreatorLayout:Landroid/widget/ScrollView;

    .line 160
    const v0, 0x7f0e03ae

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EventReceiveMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/gridimg/MyGridView;

    iput-object v0, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mReadedGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    .line 161
    const v0, 0x7f0e03ac

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EventReceiveMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/gridimg/MyGridView;

    iput-object v0, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    .line 162
    const v0, 0x7f0e03ad

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EventReceiveMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mReadedCount:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f0e03ab

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EventReceiveMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadCount:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f0e03af

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EventReceiveMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mMemberCount:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mUnReadGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    new-instance v1, Lcom/lzx/iteam/EventReceiveMemberActivity$2;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/EventReceiveMemberActivity$2;-><init>(Lcom/lzx/iteam/EventReceiveMemberActivity;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/gridimg/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 179
    return-void
.end method


# virtual methods
.method public getEventMember()V
    .locals 5

    .prologue
    .line 203
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 205
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event_id"

    iget-object v4, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mEventId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v0, Lcom/lzx/iteam/net/EventMemberMsg;

    iget-object v2, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/EventReceiveMemberActivity;->mEventType:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/lzx/iteam/net/EventMemberMsg;-><init>(Landroid/os/Message;Ljava/lang/String;)V

    .line 208
    .local v0, "message":Lcom/lzx/iteam/net/EventMemberMsg;
    const-string v2, "/api/event/get_members"

    iput-object v2, v0, Lcom/lzx/iteam/net/EventMemberMsg;->mApi:Ljava/lang/String;

    .line 209
    iput-object v1, v0, Lcom/lzx/iteam/net/EventMemberMsg;->mParams:Ljava/util/List;

    .line 210
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 212
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 220
    :goto_0
    return-void

    .line 218
    :pswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/EventReceiveMemberActivity;->finish()V

    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x7f0e03a8
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const v0, 0x7f030080

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EventReceiveMemberActivity;->setContentView(I)V

    .line 150
    invoke-direct {p0}, Lcom/lzx/iteam/EventReceiveMemberActivity;->initViews()V

    .line 151
    invoke-direct {p0}, Lcom/lzx/iteam/EventReceiveMemberActivity;->getIntentData()V

    .line 152
    invoke-virtual {p0}, Lcom/lzx/iteam/EventReceiveMemberActivity;->getEventMember()V

    .line 153
    return-void
.end method
