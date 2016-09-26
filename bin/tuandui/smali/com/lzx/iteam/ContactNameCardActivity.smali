.class public Lcom/lzx/iteam/ContactNameCardActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ContactNameCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/ContactNameCardActivity$MyPagerAdapter;
    }
.end annotation


# instance fields
.field private final GET_CONTACT_NAMECARD:I

.field private final MSG_SINGLE_CHAT:I

.field private final MSG_TALK_PREVIEW:I

.field private groupInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudContact;",
            ">;"
        }
    .end annotation
.end field

.field private groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddress:Ljava/lang/StringBuilder;

.field private mAvatar:Ljava/lang/String;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mCompany:Ljava/lang/String;

.field private mDefaultNameCard:Landroid/widget/LinearLayout;

.field private mEmail:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHtsCategoryStrip:Lcom/lzx/iteam/widget/HorizontalTabStrip;

.field private mIvAvatar:Landroid/widget/ImageView;

.field private mIvSex:Landroid/widget/ImageView;

.field private mIvTalkImage1:Landroid/widget/ImageView;

.field private mIvTalkImage2:Landroid/widget/ImageView;

.field private mIvTalkImage3:Landroid/widget/ImageView;

.field private mIvTalkImage4:Landroid/widget/ImageView;

.field private mLimitPhone:Ljava/lang/String;

.field private mLlBack:Landroid/widget/LinearLayout;

.field private mLlChatBtn:Landroid/widget/LinearLayout;

.field private mLlTalkImage:Landroid/widget/LinearLayout;

.field private mName:Ljava/lang/String;

.field private mPhone:Ljava/lang/String;

.field private mPosition:Ljava/lang/String;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mRlTalkImage:Landroid/widget/RelativeLayout;

.field private mSex:I

.field private mTvHaveNoTeam:Landroid/widget/TextView;

.field private mTvUserName:Landroid/widget/TextView;

.field private mUserId:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field private mVpPager:Lcom/lzx/iteam/widget/WrapContentHeightViewPager;

.field private mWhich:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->groupInfos:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->groups:Ljava/util/ArrayList;

    .line 61
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->GET_CONTACT_NAMECARD:I

    .line 62
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->MSG_TALK_PREVIEW:I

    .line 63
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->MSG_SINGLE_CHAT:I

    .line 65
    new-instance v0, Lcom/lzx/iteam/ContactNameCardActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ContactNameCardActivity$1;-><init>(Lcom/lzx/iteam/ContactNameCardActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mHandler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ContactNameCardActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mUserName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/ContactNameCardActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mAvatar:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mIvAvatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lzx/iteam/ContactNameCardActivity;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mSex:I

    return v0
.end method

.method static synthetic access$12(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mIvSex:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lzx/iteam/ContactNameCardActivity;)Lcom/lzx/iteam/widget/WrapContentHeightViewPager;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mVpPager:Lcom/lzx/iteam/widget/WrapContentHeightViewPager;

    return-object v0
.end method

.method static synthetic access$14(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mTvHaveNoTeam:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mLlTalkImage:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mIvTalkImage4:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mIvTalkImage3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mIvTalkImage2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mIvTalkImage1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/ContactNameCardActivity;I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mSex:I

    return-void
.end method

.method static synthetic access$20(Lcom/lzx/iteam/ContactNameCardActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method static synthetic access$21(Lcom/lzx/iteam/ContactNameCardActivity;I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mWhich:I

    return-void
.end method

.method static synthetic access$3(Lcom/lzx/iteam/ContactNameCardActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->groupInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/ContactNameCardActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/ContactNameCardActivity;Lcom/lzx/iteam/widget/HorizontalTabStrip;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mHtsCategoryStrip:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    return-void
.end method

.method static synthetic access$6(Lcom/lzx/iteam/ContactNameCardActivity;)Lcom/lzx/iteam/widget/HorizontalTabStrip;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mHtsCategoryStrip:Lcom/lzx/iteam/widget/HorizontalTabStrip;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/ContactNameCardActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mTvUserName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/ContactNameCardActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/ContactNameCardActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mAvatar:Ljava/lang/String;

    return-object v0
.end method

.method private addChatGroupContact(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "contactId"    # Ljava/lang/String;

    .prologue
    .line 324
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 326
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "recv_user_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_id"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance v0, Lcom/lzx/iteam/net/GetChatGroupMsg;

    .line 330
    iget-object v2, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 329
    invoke-direct {v0, v2, p0}, Lcom/lzx/iteam/net/GetChatGroupMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 331
    .local v0, "getChatGroupMsg":Lcom/lzx/iteam/net/GetChatGroupMsg;
    const-string v2, "/api/chatgroup/create_single"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetChatGroupMsg;->mApi:Ljava/lang/String;

    .line 332
    iput-object v1, v0, Lcom/lzx/iteam/net/GetChatGroupMsg;->mParams:Ljava/util/List;

    .line 333
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 334
    return-void
.end method

.method private getContactNameCard(Landroid/content/Context;Landroid/os/Message;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    .line 293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 295
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "set_user_id"

    iget-object v4, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mUserId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v0, Lcom/lzx/iteam/net/GetContactNameCardMsg;

    invoke-direct {v0, p1, p2}, Lcom/lzx/iteam/net/GetContactNameCardMsg;-><init>(Landroid/content/Context;Landroid/os/Message;)V

    .line 298
    .local v0, "getContactNameCardMsg":Lcom/lzx/iteam/net/GetContactNameCardMsg;
    const-string v2, "/api/contact/namecards"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetContactNameCardMsg;->mApi:Ljava/lang/String;

    .line 299
    iput-object v1, v0, Lcom/lzx/iteam/net/GetContactNameCardMsg;->mParams:Ljava/util/List;

    .line 300
    invoke-static {p1}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 301
    return-void
.end method

.method private getTalkPreView(Landroid/content/Context;Landroid/os/Message;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 312
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "talk_user_id"

    iget-object v4, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mUserId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance v0, Lcom/lzx/iteam/net/GetCloudContactTalkPreViewMsg;

    invoke-direct {v0, p1, p2}, Lcom/lzx/iteam/net/GetCloudContactTalkPreViewMsg;-><init>(Landroid/content/Context;Landroid/os/Message;)V

    .line 315
    .local v0, "getCloudContactTalkPreViewMsg":Lcom/lzx/iteam/net/GetCloudContactTalkPreViewMsg;
    const-string v2, "/api/talk/preview"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetCloudContactTalkPreViewMsg;->mApi:Ljava/lang/String;

    .line 316
    iput-object v1, v0, Lcom/lzx/iteam/net/GetCloudContactTalkPreViewMsg;->mParams:Ljava/util/List;

    .line 317
    invoke-static {p1}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execTalkHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 318
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/lzx/iteam/ContactNameCardActivity;->getContactNameCard(Landroid/content/Context;Landroid/os/Message;)V

    .line 230
    const-string v0, "0"

    iget-object v1, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/lzx/iteam/ContactNameCardActivity;->getTalkPreView(Landroid/content/Context;Landroid/os/Message;)V

    .line 234
    :cond_0
    return-void
.end method

.method private initIntentData()V
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/lzx/iteam/ContactNameCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 225
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mUserId:Ljava/lang/String;

    .line 226
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 194
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 195
    const v0, 0x7f0e021b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactNameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mLlBack:Landroid/widget/LinearLayout;

    .line 196
    const v0, 0x7f0e0222

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactNameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mTvHaveNoTeam:Landroid/widget/TextView;

    .line 197
    const v0, 0x7f0e021f

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactNameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mTvUserName:Landroid/widget/TextView;

    .line 198
    const v0, 0x7f0e0223

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactNameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/WrapContentHeightViewPager;

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mVpPager:Lcom/lzx/iteam/widget/WrapContentHeightViewPager;

    .line 206
    const v0, 0x7f0e021d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactNameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mIvAvatar:Landroid/widget/ImageView;

    .line 207
    const v0, 0x7f0e0220

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactNameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mIvSex:Landroid/widget/ImageView;

    .line 209
    const v0, 0x7f0e0228

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactNameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mIvTalkImage1:Landroid/widget/ImageView;

    .line 210
    const v0, 0x7f0e0229

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactNameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mIvTalkImage2:Landroid/widget/ImageView;

    .line 211
    const v0, 0x7f0e022a

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactNameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mIvTalkImage3:Landroid/widget/ImageView;

    .line 212
    const v0, 0x7f0e022b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactNameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mIvTalkImage4:Landroid/widget/ImageView;

    .line 213
    const v0, 0x7f0e0226

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactNameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mLlTalkImage:Landroid/widget/LinearLayout;

    .line 214
    const v0, 0x7f0e0224

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactNameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mRlTalkImage:Landroid/widget/RelativeLayout;

    .line 215
    const v0, 0x7f0e022c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactNameCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mLlChatBtn:Landroid/widget/LinearLayout;

    .line 217
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mLlBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mRlTalkImage:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mIvAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mLlChatBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 240
    :sswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/ContactNameCardActivity;->finish()V

    goto :goto_0

    .line 252
    :sswitch_1
    const-string v3, "0"

    iget-object v4, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mUserId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    const-string v3, "\u5bf9\u4e0d\u8d77\uff0c\u8be5\u7528\u6237\u672a\u6ce8\u518c\uff0c\u65e0\u6cd5\u8fdb\u5165\u5176\u4e2a\u4eba\u7a7a\u95f4"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 255
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/TalkListActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    .local v2, "intent1":Landroid/content/Intent;
    sget-object v3, Lcom/lzx/iteam/TalkListActivity;->OTHER_PERSONAL_SPACE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v3, "set_user_id"

    iget-object v4, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mUserId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ContactNameCardActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 263
    .end local v2    # "intent1":Landroid/content/Intent;
    :sswitch_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v0, "image":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mAvatar:Ljava/lang/String;

    const-string v4, "\\?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/ImagePagerActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "image_origin"

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    const-string v3, "image_urls"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ContactNameCardActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 271
    .end local v0    # "image":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_3
    iget-object v3, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v4, "useid"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mUserId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 272
    const-string v3, "\u5bf9\u4e0d\u8d77\uff0c\u60a8\u4e0d\u80fd\u548c\u81ea\u5df1\u804a\u5929"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 274
    :cond_2
    const-string v3, "0"

    iget-object v4, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mUserId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mUserId:Ljava/lang/String;

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 275
    :cond_3
    const-string v3, "\u8be5\u7528\u6237\u5c1a\u672a\u6ce8\u518c\uff0c\u8bf7\u9080\u8bf7\u4ed6\u6ce8\u518c\u540e\u518d\u53d1\u804a\u5929\u6d88\u606f"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 277
    :cond_4
    iget-object v3, p0, Lcom/lzx/iteam/ContactNameCardActivity;->groupInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 278
    iget-object v4, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mUserId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lzx/iteam/ContactNameCardActivity;->groupInfos:Ljava/util/ArrayList;

    iget v5, p0, Lcom/lzx/iteam/ContactNameCardActivity;->mWhich:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/CloudContact;

    iget-object v3, v3, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/lzx/iteam/ContactNameCardActivity;->addChatGroupContact(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e021b -> :sswitch_0
        0x7f0e021d -> :sswitch_2
        0x7f0e0224 -> :sswitch_1
        0x7f0e022c -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 183
    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactNameCardActivity;->setContentView(I)V

    .line 184
    invoke-direct {p0}, Lcom/lzx/iteam/ContactNameCardActivity;->initView()V

    .line 185
    invoke-direct {p0}, Lcom/lzx/iteam/ContactNameCardActivity;->initIntentData()V

    .line 186
    invoke-direct {p0}, Lcom/lzx/iteam/ContactNameCardActivity;->initData()V

    .line 187
    return-void
.end method
