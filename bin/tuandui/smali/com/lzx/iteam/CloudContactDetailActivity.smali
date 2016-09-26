.class public Lcom/lzx/iteam/CloudContactDetailActivity;
.super Landroid/app/Activity;
.source "CloudContactDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ACTION_CLOUD_CONTACT:Ljava/lang/String; = "com.lzx.iteam.ACTION_CLOUD_CONTACT"


# instance fields
.field private final GET_CLOUD_CONTACT:I

.field private final MSG_AUTH_ACCESS:I

.field private final MSG_AUTH_DETAIL:I

.field private final MSG_AUTH_SHIELD:I

.field private final MSG_SINGLE_CHAT:I

.field private final MSG_TALK_PREVIEW:I

.field private final REMOVE_CLOUD_CONTACT:I

.field private cloudContact:Lcom/lzx/iteam/bean/CloudContact;

.field private downloadImageTask:Lcom/lzx/iteam/task/DownloadImageTask;

.field private mAccess:I

.field private mCalendarPurview:Ljava/lang/String;

.field private mCloudAddress:Ljava/lang/StringBuilder;

.field private mCloudContactCompany:Ljava/lang/String;

.field private mCloudContactEmail:Ljava/lang/String;

.field private mCloudContactId:Ljava/lang/String;

.field private mCloudContactName:Ljava/lang/String;

.field private mCloudContactNote:Ljava/lang/String;

.field private mCloudContactPosition:Ljava/lang/String;

.field private mCloudContactSex:I

.field private mCloudCurrentContactId:Ljava/lang/String;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mCloudGroupId:Ljava/lang/String;

.field private mCloudGroupName:Ljava/lang/String;

.field private mCloudImage:Ljava/lang/String;

.field private mCloudPhoneNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Landroid/app/Dialog;

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mHandler:Landroid/os/Handler;

.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mIvAuthIn:Landroid/widget/ImageView;

.field private mIvAuthLook:Landroid/widget/ImageView;

.field private mIvContactPhoto:Landroid/widget/ImageView;

.field private mIvContactSex:Landroid/widget/ImageView;

.field private mIvContactStatus:Landroid/widget/ImageView;

.field private mIvShare:Landroid/widget/ImageView;

.field private mIvTalkImage1:Landroid/widget/ImageView;

.field private mIvTalkImage2:Landroid/widget/ImageView;

.field private mIvTalkImage3:Landroid/widget/ImageView;

.field private mIvTalkImage4:Landroid/widget/ImageView;

.field private mLimitPhone:Ljava/lang/String;

.field private mLlAuthMore:Landroid/widget/LinearLayout;

.field private mLlBack:Landroid/widget/LinearLayout;

.field private mLlChatBtn:Landroid/widget/LinearLayout;

.field private mLlHelp:Landroid/widget/LinearLayout;

.field private mLlMore:Landroid/widget/LinearLayout;

.field private mLlNote:Landroid/widget/LinearLayout;

.field private mLlTalkImage:Landroid/widget/LinearLayout;

.field private mMainLayout:Landroid/widget/LinearLayout;

.field private mMoreWindow:Landroid/widget/PopupWindow;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mRlPersonNote:Landroid/widget/RelativeLayout;

.field private mRlSchedule:Landroid/widget/RelativeLayout;

.field private mRlTalkImage:Landroid/widget/RelativeLayout;

.field private mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

.field private mShareUtil:Lcom/lzx/iteam/util/ShareUtil;

.field private mShield:I

.field private mSvCloudContact:Landroid/widget/ScrollView;

.field private mTvContactAddress:Landroid/widget/TextView;

.field private mTvContactCompany:Landroid/widget/TextView;

.field private mTvContactEmail:Landroid/widget/TextView;

.field private mTvContactName:Landroid/widget/TextView;

.field private mTvContactNote:Landroid/widget/TextView;

.field private mTvContactPhone:Landroid/widget/TextView;

.field private mTvContactPosition:Landroid/widget/TextView;

.field private mTvSchedule:Landroid/widget/TextView;

.field private mUserId:Ljava/lang/String;

.field private mUserType:Ljava/lang/String;

.field private myUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudImage:Ljava/lang/String;

    .line 89
    const/16 v0, 0x2710

    iput v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->REMOVE_CLOUD_CONTACT:I

    .line 90
    const/16 v0, 0x2711

    iput v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->GET_CLOUD_CONTACT:I

    .line 91
    const/16 v0, 0x2712

    iput v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->MSG_SINGLE_CHAT:I

    .line 92
    const/16 v0, 0x2713

    iput v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->MSG_AUTH_DETAIL:I

    .line 93
    const/16 v0, 0x2714

    iput v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->MSG_AUTH_ACCESS:I

    .line 94
    const/16 v0, 0x2715

    iput v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->MSG_AUTH_SHIELD:I

    .line 95
    const/16 v0, 0x2716

    iput v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->MSG_TALK_PREVIEW:I

    .line 97
    new-instance v0, Lcom/lzx/iteam/CloudContactDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/CloudContactDetailActivity$1;-><init>(Lcom/lzx/iteam/CloudContactDetailActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/CloudContactDetailActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/CloudContactDetailActivity;)V
    .locals 0

    .prologue
    .line 1074
    invoke-direct {p0}, Lcom/lzx/iteam/CloudContactDetailActivity;->setAuthIcon()V

    return-void
.end method

.method static synthetic access$11(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$12(Lcom/lzx/iteam/CloudContactDetailActivity;Landroid/content/Context;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 900
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/CloudContactDetailActivity;->getTalkPreView(Landroid/content/Context;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$13(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlTalkImage:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$14(Lcom/lzx/iteam/CloudContactDetailActivity;)Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0
.end method

.method static synthetic access$15(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvTalkImage4:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvTalkImage3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvTalkImage2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvTalkImage1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactPhone:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->myUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$22(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudCurrentContactId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$23(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactCompany:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$24(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactPosition:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$25(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$26(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudImage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$27(Lcom/lzx/iteam/CloudContactDetailActivity;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactSex:I

    return v0
.end method

.method static synthetic access$28(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudAddress:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$29(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactNote:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudPhoneNumbers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$30(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLimitPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$31(Lcom/lzx/iteam/CloudContactDetailActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$32(Lcom/lzx/iteam/CloudContactDetailActivity;)Lcom/lzx/iteam/util/ShareUtil;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mShareUtil:Lcom/lzx/iteam/util/ShareUtil;

    return-object v0
.end method

.method static synthetic access$33(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$34(Lcom/lzx/iteam/CloudContactDetailActivity;Landroid/content/Context;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 839
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/CloudContactDetailActivity;->getAuthAccess(Landroid/content/Context;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$35(Lcom/lzx/iteam/CloudContactDetailActivity;Landroid/content/Context;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 861
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/CloudContactDetailActivity;->getAuthShield(Landroid/content/Context;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$36(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudGroupId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$37(Lcom/lzx/iteam/CloudContactDetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 802
    invoke-direct {p0, p1, p2, p3}, Lcom/lzx/iteam/CloudContactDetailActivity;->removeContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/lzx/iteam/CloudContactDetailActivity;)Lcom/lzx/iteam/util/AllDialogUtil;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/CloudContactDetailActivity;Lcom/lzx/iteam/bean/CloudContact;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->cloudContact:Lcom/lzx/iteam/bean/CloudContact;

    return-void
.end method

.method static synthetic access$6(Lcom/lzx/iteam/CloudContactDetailActivity;)Lcom/lzx/iteam/bean/CloudContact;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->cloudContact:Lcom/lzx/iteam/bean/CloudContact;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/CloudContactDetailActivity;Lcom/lzx/iteam/bean/CloudContact;)V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/lzx/iteam/CloudContactDetailActivity;->setCloudContactData(Lcom/lzx/iteam/bean/CloudContact;)V

    return-void
.end method

.method static synthetic access$8(Lcom/lzx/iteam/CloudContactDetailActivity;I)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mAccess:I

    return-void
.end method

.method static synthetic access$9(Lcom/lzx/iteam/CloudContactDetailActivity;I)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mShield:I

    return-void
.end method

.method private addChatGroupContact(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "contactId"    # Ljava/lang/String;

    .prologue
    .line 821
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 822
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 823
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "recv_user_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_id"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    new-instance v0, Lcom/lzx/iteam/net/GetChatGroupMsg;

    .line 827
    iget-object v2, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2712

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 826
    invoke-direct {v0, v2, p0}, Lcom/lzx/iteam/net/GetChatGroupMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 828
    .local v0, "getChatGroupMsg":Lcom/lzx/iteam/net/GetChatGroupMsg;
    const-string v2, "/api/chatgroup/create_single"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetChatGroupMsg;->mApi:Ljava/lang/String;

    .line 829
    iput-object v1, v0, Lcom/lzx/iteam/net/GetChatGroupMsg;->mParams:Ljava/util/List;

    .line 830
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 831
    return-void
.end method

.method private getAuthAccess(Landroid/content/Context;Landroid/os/Message;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    .line 840
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 841
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 842
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "set_user_id"

    iget-object v4, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mUserId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    iget v2, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mAccess:I

    if-nez v2, :cond_0

    .line 845
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "set_type"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    :goto_0
    new-instance v0, Lcom/lzx/iteam/net/GetCloudContactAuthMsg;

    invoke-direct {v0, p1, p2}, Lcom/lzx/iteam/net/GetCloudContactAuthMsg;-><init>(Landroid/content/Context;Landroid/os/Message;)V

    .line 850
    .local v0, "getCloudContactAuthMsg":Lcom/lzx/iteam/net/GetCloudContactAuthMsg;
    const-string v2, "/api/auth/access"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetCloudContactAuthMsg;->mApi:Ljava/lang/String;

    .line 851
    iput-object v1, v0, Lcom/lzx/iteam/net/GetCloudContactAuthMsg;->mParams:Ljava/util/List;

    .line 852
    invoke-static {p1}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 853
    return-void

    .line 847
    .end local v0    # "getCloudContactAuthMsg":Lcom/lzx/iteam/net/GetCloudContactAuthMsg;
    :cond_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "set_type"

    const-string v4, "0"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getAuthDetail(Landroid/content/Context;Landroid/os/Message;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    .line 884
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 885
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 886
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "set_user_id"

    iget-object v4, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mUserId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    new-instance v0, Lcom/lzx/iteam/net/GetCloudContactAuthMsg;

    invoke-direct {v0, p1, p2}, Lcom/lzx/iteam/net/GetCloudContactAuthMsg;-><init>(Landroid/content/Context;Landroid/os/Message;)V

    .line 889
    .local v0, "getCloudContactAuthMsg":Lcom/lzx/iteam/net/GetCloudContactAuthMsg;
    const-string v2, "/api/auth/detail"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetCloudContactAuthMsg;->mApi:Ljava/lang/String;

    .line 890
    iput-object v1, v0, Lcom/lzx/iteam/net/GetCloudContactAuthMsg;->mParams:Ljava/util/List;

    .line 891
    invoke-static {p1}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 892
    return-void
.end method

.method private getAuthShield(Landroid/content/Context;Landroid/os/Message;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    .line 862
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 863
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 864
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "set_user_id"

    iget-object v4, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mUserId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    iget v2, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mShield:I

    if-nez v2, :cond_0

    .line 867
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "set_type"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    :goto_0
    new-instance v0, Lcom/lzx/iteam/net/GetCloudContactAuthMsg;

    invoke-direct {v0, p1, p2}, Lcom/lzx/iteam/net/GetCloudContactAuthMsg;-><init>(Landroid/content/Context;Landroid/os/Message;)V

    .line 872
    .local v0, "getCloudContactAuthMsg":Lcom/lzx/iteam/net/GetCloudContactAuthMsg;
    const-string v2, "/api/auth/shield"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetCloudContactAuthMsg;->mApi:Ljava/lang/String;

    .line 873
    iput-object v1, v0, Lcom/lzx/iteam/net/GetCloudContactAuthMsg;->mParams:Ljava/util/List;

    .line 874
    invoke-static {p1}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 875
    return-void

    .line 869
    .end local v0    # "getCloudContactAuthMsg":Lcom/lzx/iteam/net/GetCloudContactAuthMsg;
    :cond_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "set_type"

    const-string v4, "0"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getCloudContact(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cloudContactID"    # Ljava/lang/String;
    .param p3, "message"    # Landroid/os/Message;

    .prologue
    .line 786
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 787
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 788
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_id"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    new-instance v0, Lcom/lzx/iteam/net/GetCloudContactMsg;

    invoke-direct {v0, p1, p3}, Lcom/lzx/iteam/net/GetCloudContactMsg;-><init>(Landroid/content/Context;Landroid/os/Message;)V

    .line 791
    .local v0, "getCloudContactMsg":Lcom/lzx/iteam/net/GetCloudContactMsg;
    const-string v2, "/api/contact/get"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetCloudContactMsg;->mApi:Ljava/lang/String;

    .line 792
    iput-object v1, v0, Lcom/lzx/iteam/net/GetCloudContactMsg;->mParams:Ljava/util/List;

    .line 793
    invoke-static {p1}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 794
    return-void
.end method

.method private getTalkPreView(Landroid/content/Context;Landroid/os/Message;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    .line 901
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 902
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 903
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 904
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "talk_user_id"

    iget-object v4, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mUserId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    new-instance v0, Lcom/lzx/iteam/net/GetCloudContactTalkPreViewMsg;

    invoke-direct {v0, p1, p2}, Lcom/lzx/iteam/net/GetCloudContactTalkPreViewMsg;-><init>(Landroid/content/Context;Landroid/os/Message;)V

    .line 906
    .local v0, "getCloudContactTalkPreViewMsg":Lcom/lzx/iteam/net/GetCloudContactTalkPreViewMsg;
    const-string v2, "/api/talk/preview"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetCloudContactTalkPreViewMsg;->mApi:Ljava/lang/String;

    .line 907
    iput-object v1, v0, Lcom/lzx/iteam/net/GetCloudContactTalkPreViewMsg;->mParams:Ljava/util/List;

    .line 908
    invoke-static {p1}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execTalkHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 909
    return-void
.end method

.method private initProperty()V
    .locals 3

    .prologue
    .line 315
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 316
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 317
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 318
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    invoke-virtual {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->waitDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mDialog:Landroid/app/Dialog;

    .line 319
    invoke-static {p0}, Lcom/lzx/iteam/util/ShareUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/ShareUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mShareUtil:Lcom/lzx/iteam/util/ShareUtil;

    .line 320
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "create_type"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mUserType:Ljava/lang/String;

    .line 321
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 322
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "useid"

    const-string v2, "\uff0d1"

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->myUid:Ljava/lang/String;

    .line 323
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 268
    const v0, 0x7f0e019b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mMainLayout:Landroid/widget/LinearLayout;

    .line 269
    const v0, 0x7f0e019d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlHelp:Landroid/widget/LinearLayout;

    .line 270
    const v0, 0x7f0e019f

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mSvCloudContact:Landroid/widget/ScrollView;

    .line 271
    const v0, 0x7f0e019c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlBack:Landroid/widget/LinearLayout;

    .line 272
    const v0, 0x7f0e019e

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlMore:Landroid/widget/LinearLayout;

    .line 273
    const v0, 0x7f0e01ad

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlChatBtn:Landroid/widget/LinearLayout;

    .line 274
    const v0, 0x7f0e01ae

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlNote:Landroid/widget/LinearLayout;

    .line 276
    const v0, 0x7f0e01a2

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mRlPersonNote:Landroid/widget/RelativeLayout;

    .line 277
    const v0, 0x7f0e01a4

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvSchedule:Landroid/widget/TextView;

    .line 278
    const v0, 0x7f0e01a3

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mRlSchedule:Landroid/widget/RelativeLayout;

    .line 279
    const v0, 0x7f0e052a

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactName:Landroid/widget/TextView;

    .line 280
    const v0, 0x7f0e0531

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactPhone:Landroid/widget/TextView;

    .line 281
    const v0, 0x7f0e0533

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactAddress:Landroid/widget/TextView;

    .line 282
    const v0, 0x7f0e0532

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactEmail:Landroid/widget/TextView;

    .line 283
    const v0, 0x7f0e052c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactPosition:Landroid/widget/TextView;

    .line 284
    const v0, 0x7f0e0530

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactCompany:Landroid/widget/TextView;

    .line 285
    const v0, 0x7f0e01af

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactNote:Landroid/widget/TextView;

    .line 286
    const v0, 0x7f0e052b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvContactSex:Landroid/widget/ImageView;

    .line 287
    const v0, 0x7f0e0333

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvContactPhoto:Landroid/widget/ImageView;

    .line 288
    const v0, 0x7f0e0528

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvContactStatus:Landroid/widget/ImageView;

    .line 290
    const v0, 0x7f0e052d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvAuthIn:Landroid/widget/ImageView;

    .line 291
    const v0, 0x7f0e052e

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvAuthLook:Landroid/widget/ImageView;

    .line 292
    const v0, 0x7f0e052f

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvShare:Landroid/widget/ImageView;

    .line 293
    const v0, 0x7f0e0529

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlAuthMore:Landroid/widget/LinearLayout;

    .line 296
    const v0, 0x7f0e01a9

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvTalkImage1:Landroid/widget/ImageView;

    .line 297
    const v0, 0x7f0e01aa

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvTalkImage2:Landroid/widget/ImageView;

    .line 298
    const v0, 0x7f0e01ab

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvTalkImage3:Landroid/widget/ImageView;

    .line 299
    const v0, 0x7f0e01ac

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvTalkImage4:Landroid/widget/ImageView;

    .line 300
    const v0, 0x7f0e01a7

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlTalkImage:Landroid/widget/LinearLayout;

    .line 301
    const v0, 0x7f0e01a5

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mRlTalkImage:Landroid/widget/RelativeLayout;

    .line 303
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlHelp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlMore:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlChatBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mRlPersonNote:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvContactPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvShare:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mRlTalkImage:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mRlSchedule:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    return-void
.end method

.method private parseCloudIntent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 329
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 330
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "current_contact_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudCurrentContactId:Ljava/lang/String;

    .line 331
    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactId:Ljava/lang/String;

    .line 332
    const-string v1, "group_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudGroupId:Ljava/lang/String;

    .line 333
    const-string v1, "group_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudGroupName:Ljava/lang/String;

    .line 334
    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mUserId:Ljava/lang/String;

    .line 336
    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudGroupId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudGroupId:Ljava/lang/String;

    const-string v2, "561"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlMore:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 339
    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlChatBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlMore:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlAuthMore:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 353
    const-string v1, "2"

    iget-object v2, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mUserType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "3"

    iget-object v2, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mUserType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvShare:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    :goto_0
    return-void

    .line 356
    :cond_2
    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvShare:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private removeContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "contactId"    # Ljava/lang/String;
    .param p2, "currentId"    # Ljava/lang/String;
    .param p3, "gid"    # Ljava/lang/String;

    .prologue
    .line 803
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 804
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 805
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "del_contact_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "current_contact_id"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    new-instance v0, Lcom/lzx/iteam/net/RemoveCloudContactCcMsg;

    .line 811
    iget-object v2, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 810
    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/RemoveCloudContactCcMsg;-><init>(Landroid/os/Message;)V

    .line 812
    .local v0, "addGroup":Lcom/lzx/iteam/net/RemoveCloudContactCcMsg;
    const-string v2, "/api/contact/remove"

    iput-object v2, v0, Lcom/lzx/iteam/net/RemoveCloudContactCcMsg;->mApi:Ljava/lang/String;

    .line 813
    iput-object v1, v0, Lcom/lzx/iteam/net/RemoveCloudContactCcMsg;->mParams:Ljava/util/List;

    .line 814
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 815
    return-void
.end method

.method private setAuthIcon()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1075
    iget v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mAccess:I

    if-nez v0, :cond_2

    .line 1076
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvAuthIn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1080
    :cond_0
    :goto_0
    iget v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mShield:I

    if-nez v0, :cond_3

    .line 1081
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvAuthLook:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1086
    :cond_1
    :goto_1
    return-void

    .line 1077
    :cond_2
    iget v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mAccess:I

    if-ne v0, v2, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvAuthIn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1082
    :cond_3
    iget v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mShield:I

    if-ne v0, v2, :cond_1

    .line 1083
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvAuthLook:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setCloudContactData(Lcom/lzx/iteam/bean/CloudContact;)V
    .locals 14
    .param p1, "cloudContact"    # Lcom/lzx/iteam/bean/CloudContact;

    .prologue
    .line 368
    iget-object v10, p1, Lcom/lzx/iteam/bean/CloudContact;->calendar_purview:Ljava/lang/String;

    iput-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCalendarPurview:Ljava/lang/String;

    .line 369
    iget v10, p1, Lcom/lzx/iteam/bean/CloudContact;->contact_sex:I

    iput v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactSex:I

    .line 370
    iget-object v10, p1, Lcom/lzx/iteam/bean/CloudContact;->contactRemarks:Ljava/lang/String;

    iput-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactNote:Ljava/lang/String;

    .line 371
    iget-object v10, p1, Lcom/lzx/iteam/bean/CloudContact;->phone_purview:Ljava/lang/String;

    iput-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLimitPhone:Ljava/lang/String;

    .line 372
    iget-object v10, p1, Lcom/lzx/iteam/bean/CloudContact;->contactName:Ljava/lang/String;

    iput-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactName:Ljava/lang/String;

    .line 373
    iget-object v10, p1, Lcom/lzx/iteam/bean/CloudContact;->contact_image:Ljava/lang/String;

    iput-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudImage:Ljava/lang/String;

    .line 375
    iget-object v8, p1, Lcom/lzx/iteam/bean/CloudContact;->contact_phone:Ljava/lang/String;

    .line 379
    .local v8, "phone":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudPhoneNumbers:Ljava/util/ArrayList;

    .line 380
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudPhoneNumbers:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    const/4 v6, 0x0

    .line 386
    .local v6, "object":Lorg/json/JSONObject;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    iget-object v10, p1, Lcom/lzx/iteam/bean/CloudContact;->contact_card:Ljava/lang/String;

    invoke-direct {v7, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 387
    .end local v6    # "object":Lorg/json/JSONObject;
    .local v7, "object":Lorg/json/JSONObject;
    if-eqz v7, :cond_a

    :try_start_1
    const-string v10, "organization"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 388
    const-string v10, "organization"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactCompany:Ljava/lang/String;

    .line 393
    :goto_0
    const-string v10, "jobtitle"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 395
    const-string v10, "jobtitle"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactPosition:Ljava/lang/String;

    .line 399
    :goto_1
    const-string v10, "demails"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 401
    const-string v10, "demails"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 402
    .local v5, "emailObject":Lorg/json/JSONObject;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .local v4, "email":Ljava/lang/StringBuilder;
    const-string v10, "_$!<Work>!$_"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 404
    const-string v10, "_$!<Work>!$_"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_0
    const-string v10, "_$!<Home>!$_"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 407
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "_$!<Home>!$_"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactEmail:Ljava/lang/String;

    .line 423
    .end local v4    # "email":Ljava/lang/StringBuilder;
    .end local v5    # "emailObject":Lorg/json/JSONObject;
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudAddress:Ljava/lang/StringBuilder;

    .line 424
    const-string v10, "daddresses"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 425
    const-string v10, "daddresses"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 426
    .local v1, "address":Lorg/json/JSONObject;
    const-string v10, "_$!<Work>!$_"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 427
    .local v0, "add":Lorg/json/JSONObject;
    const-string v10, "City"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 428
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudAddress:Ljava/lang/StringBuilder;

    const-string v11, "City"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_2
    const-string v10, "State"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 431
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudAddress:Ljava/lang/StringBuilder;

    const-string v11, "State"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :cond_3
    const-string v10, "Street"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 434
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudAddress:Ljava/lang/StringBuilder;

    const-string v11, "Street"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_4
    const-string v10, "ZIP"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 437
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudAddress:Ljava/lang/StringBuilder;

    const-string v11, "ZIP"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_5
    const-string v10, "Country"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 440
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudAddress:Ljava/lang/StringBuilder;

    const-string v11, "Country"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v7

    .line 454
    .end local v0    # "add":Lorg/json/JSONObject;
    .end local v1    # "address":Lorg/json/JSONObject;
    .end local v7    # "object":Lorg/json/JSONObject;
    .restart local v6    # "object":Lorg/json/JSONObject;
    :cond_6
    :goto_3
    const-string v10, "cloud_contact_data"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactSex:I

    if-nez v10, :cond_d

    .line 458
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvContactSex:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    :cond_7
    :goto_4
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactCompany:Ljava/lang/String;

    invoke-static {v10}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 469
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactCompany:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactCompany:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    :cond_8
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactPosition:Ljava/lang/String;

    invoke-static {v10}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 483
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactPosition:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 484
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactPosition:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactPosition:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    :goto_5
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactEmail:Ljava/lang/String;

    invoke-static {v10}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 491
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactEmail:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactEmail:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    :goto_6
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactName:Ljava/lang/String;

    invoke-static {v10}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 497
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactName:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    :goto_7
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudAddress:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 504
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactAddress:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudAddress:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    :goto_8
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactNote:Ljava/lang/String;

    invoke-static {v10}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 512
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactNote:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "  "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactNote:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    :goto_9
    iget-object v9, p1, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    .line 519
    .local v9, "uid":Ljava/lang/String;
    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 520
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvContactStatus:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    :goto_a
    sget-object v10, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v11, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudImage:Ljava/lang/String;

    iget-object v12, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvContactPhoto:Landroid/widget/ImageView;

    sget-object v13, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v10, v11, v12, v13}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 532
    const-string v10, "1"

    iget-object v11, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLimitPhone:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 533
    iget-object v2, p1, Lcom/lzx/iteam/bean/CloudContact;->contactPhoneNum:Ljava/util/ArrayList;

    .line 534
    .local v2, "contactPhoneNum":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/PhoneNumItem;>;"
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_9

    .line 535
    const-string v10, "cloudContact"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v11, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactPhone:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lzx/iteam/bean/PhoneNumItem;

    iget-object v10, v10, Lcom/lzx/iteam/bean/PhoneNumItem;->phoneNum:Ljava/lang/String;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactPhone:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/CloudContactDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0078

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 540
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactPhone:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    .end local v2    # "contactPhoneNum":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/PhoneNumItem;>;"
    :cond_9
    :goto_b
    const-string v10, "1"

    iget-object v11, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCalendarPurview:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 556
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvSchedule:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/CloudContactDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0076

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 562
    :goto_c
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->dismiss()V

    .line 563
    return-void

    .line 390
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v9    # "uid":Ljava/lang/String;
    .restart local v7    # "object":Lorg/json/JSONObject;
    :cond_a
    :try_start_2
    const-string v10, ""

    iput-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactCompany:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v10

    move-object v6, v7

    .line 446
    .end local v7    # "object":Lorg/json/JSONObject;
    .restart local v6    # "object":Lorg/json/JSONObject;
    :goto_d
    :try_start_3
    const-string v10, "daddresses"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 447
    const-string v10, "daddresses"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 448
    .restart local v1    # "address":Lorg/json/JSONObject;
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudAddress:Ljava/lang/StringBuilder;

    const-string v11, "_$!<Work>!$_"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 450
    .end local v1    # "address":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    .line 451
    .local v3, "e1":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 397
    .end local v3    # "e1":Lorg/json/JSONException;
    .end local v6    # "object":Lorg/json/JSONObject;
    .restart local v7    # "object":Lorg/json/JSONObject;
    :cond_b
    :try_start_4
    const-string v10, ""

    iput-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactPosition:Ljava/lang/String;

    goto/16 :goto_1

    .line 412
    :cond_c
    const-string v10, ""

    iput-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactEmail:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 459
    .end local v7    # "object":Lorg/json/JSONObject;
    .restart local v6    # "object":Lorg/json/JSONObject;
    :cond_d
    iget v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactSex:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    .line 460
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvContactSex:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvContactSex:Landroid/widget/ImageView;

    const v11, 0x7f0202eb

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 462
    :cond_e
    iget v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactSex:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_7

    .line 463
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvContactSex:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvContactSex:Landroid/widget/ImageView;

    const v11, 0x7f0202ea

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 486
    :cond_f
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactPosition:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 493
    :cond_10
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactEmail:Landroid/widget/TextView;

    const-string v11, "\u8d44\u6599\u672a\u5b8c\u5584"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 499
    :cond_11
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactName:Landroid/widget/TextView;

    const-string v11, "\u65e0\u540d\u79f0"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 506
    :cond_12
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactAddress:Landroid/widget/TextView;

    const-string v11, "\u8d44\u6599\u672a\u5b8c\u5584"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 514
    :cond_13
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactNote:Landroid/widget/TextView;

    const-string v11, "\u6682\u65e0\u4e2a\u4eba\u4fe1\u606f"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 522
    .restart local v9    # "uid":Ljava/lang/String;
    :cond_14
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mIvContactStatus:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    .line 551
    :cond_15
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactPhone:Landroid/widget/TextView;

    const-string v11, "\u9650\u5236\u53f7\u7801\u516c\u5f00"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactPhone:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/CloudContactDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0077

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_b

    .line 558
    :cond_16
    iget-object v10, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvSchedule:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/CloudContactDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a00bd

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_c

    .end local v9    # "uid":Ljava/lang/String;
    :catch_2
    move-exception v10

    goto/16 :goto_d

    .end local v6    # "object":Lorg/json/JSONObject;
    .restart local v7    # "object":Lorg/json/JSONObject;
    :cond_17
    move-object v6, v7

    .end local v7    # "object":Lorg/json/JSONObject;
    .restart local v6    # "object":Lorg/json/JSONObject;
    goto/16 :goto_3
.end method

.method private showCallDialog()V
    .locals 4

    .prologue
    .line 567
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mTvContactPhone:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u53d1\u77ed\u4fe1"

    const-string v3, "\u6253\u7535\u8bdd"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->titleOneDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 568
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    new-instance v1, Lcom/lzx/iteam/CloudContactDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/CloudContactDetailActivity$2;-><init>(Lcom/lzx/iteam/CloudContactDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 584
    return-void
.end method


# virtual methods
.method public deleteContact()V
    .locals 8

    .prologue
    .line 756
    const v4, 0x7f0800b3

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/CloudContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, "confirmToDel":Ljava/lang/String;
    const v4, 0x7f0800b5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/lzx/iteam/CloudContactDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 758
    .local v3, "delMsg":Ljava/lang/String;
    const v4, 0x7f08002c

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/CloudContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 759
    .local v1, "confirmBtn":Ljava/lang/String;
    const v4, 0x7f08002d

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/CloudContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "cancelBtn":Ljava/lang/String;
    iget-object v4, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    invoke-virtual {v4, v2, v3, v1, v0}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 761
    iget-object v4, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    new-instance v5, Lcom/lzx/iteam/CloudContactDetailActivity$11;

    invoke-direct {v5, p0}, Lcom/lzx/iteam/CloudContactDetailActivity$11;-><init>(Lcom/lzx/iteam/CloudContactDetailActivity;)V

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 776
    return-void
.end method

.method public initShake()Lcom/lzx/iteam/util/SendCardShakeListener;
    .locals 2

    .prologue
    .line 1057
    new-instance v0, Lcom/lzx/iteam/util/SendCardShakeListener;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/util/SendCardShakeListener;-><init>(Landroid/content/Context;)V

    .line 1058
    .local v0, "shaker":Lcom/lzx/iteam/util/SendCardShakeListener;
    new-instance v1, Lcom/lzx/iteam/CloudContactDetailActivity$12;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/CloudContactDetailActivity$12;-><init>(Lcom/lzx/iteam/CloudContactDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/SendCardShakeListener;->setOnShakeListener(Lcom/lzx/iteam/util/SendCardShakeListener$OnShakeListener;)V

    .line 1071
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1026
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1027
    packed-switch p1, :pswitch_data_0

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1029
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, p0, v0, v1}, Lcom/lzx/iteam/CloudContactDetailActivity;->getCloudContact(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 1031
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 1027
    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 942
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 944
    :sswitch_0
    iget-object v5, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->cloudContact:Lcom/lzx/iteam/bean/CloudContact;

    if-eqz v5, :cond_0

    .line 945
    iget-object v5, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v6, "useid"

    const-string v7, "0"

    invoke-virtual {v5, v6, v7}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->cloudContact:Lcom/lzx/iteam/bean/CloudContact;

    iget-object v6, v6, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 946
    const-string v5, "\u5bf9\u4e0d\u8d77\uff0c\u60a8\u4e0d\u80fd\u548c\u81ea\u5df1\u804a\u5929"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 948
    :cond_1
    const-string v5, "0"

    iget-object v6, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->cloudContact:Lcom/lzx/iteam/bean/CloudContact;

    iget-object v6, v6, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->cloudContact:Lcom/lzx/iteam/bean/CloudContact;

    iget-object v5, v5, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    invoke-static {v5}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 949
    :cond_2
    const-string v5, "\u8be5\u7528\u6237\u5c1a\u672a\u6ce8\u518c\uff0c\u8bf7\u9080\u8bf7\u4ed6\u6ce8\u518c\u540e\u518d\u53d1\u804a\u5929\u6d88\u606f"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 951
    :cond_3
    iget-object v5, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->cloudContact:Lcom/lzx/iteam/bean/CloudContact;

    iget-object v5, v5, Lcom/lzx/iteam/bean/CloudContact;->userId:Ljava/lang/String;

    iget-object v6, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactId:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/lzx/iteam/CloudContactDetailActivity;->addChatGroupContact(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 958
    :sswitch_1
    iget-object v5, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlNote:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 959
    iget-object v5, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlNote:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 960
    iget-object v5, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mSvCloudContact:Landroid/widget/ScrollView;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 961
    iget-object v5, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlChatBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 963
    :cond_4
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudContactDetailActivity;->finish()V

    goto :goto_0

    .line 967
    :sswitch_2
    invoke-virtual {p0, v7}, Lcom/lzx/iteam/CloudContactDetailActivity;->showPopwindow(Z)V

    goto :goto_0

    .line 970
    :sswitch_3
    const-string v5, "1"

    iget-object v6, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLimitPhone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 971
    invoke-direct {p0}, Lcom/lzx/iteam/CloudContactDetailActivity;->showCallDialog()V

    goto :goto_0

    .line 973
    :cond_5
    const-string v5, "\u53f7\u7801\u672a\u516c\u5f00"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 978
    :sswitch_4
    iget-object v5, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mSvCloudContact:Landroid/widget/ScrollView;

    invoke-virtual {v5, v6}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 979
    iget-object v5, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlChatBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 980
    iget-object v5, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlNote:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 983
    :sswitch_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 984
    .local v2, "image":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudImage:Ljava/lang/String;

    const-string v6, "\\?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/lzx/iteam/ImagePagerActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 986
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "image_origin"

    const/4 v6, 0x4

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 987
    const-string v5, "image_urls"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 988
    invoke-virtual {p0, v3}, Lcom/lzx/iteam/CloudContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 991
    .end local v2    # "image":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "intent":Landroid/content/Intent;
    :sswitch_6
    invoke-virtual {p0, v8}, Lcom/lzx/iteam/CloudContactDetailActivity;->showPopwindow(Z)V

    goto/16 :goto_0

    .line 994
    :sswitch_7
    const-string v5, "0"

    iget-object v6, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mUserId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 995
    const-string v5, "\u5bf9\u4e0d\u8d77\uff0c\u8be5\u7528\u6237\u672a\u6ce8\u518c\uff0c\u65e0\u6cd5\u8fdb\u5165\u5176\u4e2a\u4eba\u7a7a\u95f4"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 997
    :cond_6
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/lzx/iteam/TalkListActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 998
    .local v4, "intent1":Landroid/content/Intent;
    sget-object v5, Lcom/lzx/iteam/TalkListActivity;->OTHER_PERSONAL_SPACE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    const-string v5, "set_user_id"

    iget-object v6, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mUserId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1000
    invoke-virtual {p0, v4}, Lcom/lzx/iteam/CloudContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1004
    .end local v4    # "intent1":Landroid/content/Intent;
    :sswitch_8
    const-string v5, "1"

    iget-object v6, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCalendarPurview:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1005
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/lzx/iteam/ScheduleCalendarActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1006
    .local v0, "calendar":Landroid/content/Intent;
    const-string v5, "userId"

    iget-object v6, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1007
    const-string v5, "userName"

    iget-object v6, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1008
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1009
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudContactDetailActivity;->finish()V

    goto/16 :goto_0

    .line 1011
    .end local v0    # "calendar":Landroid/content/Intent;
    :cond_7
    const-string v5, "\u672a\u83b7\u6388\u6743\uff0c\u4e0d\u80fd\u67e5\u770b\u5bf9\u65b9\u65e5\u7a0b\u8868"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1015
    :sswitch_9
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/lzx/iteam/HelpActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1016
    .local v1, "help":Landroid/content/Intent;
    const-string v5, "title"

    const-string v6, "\u5982\u4f55\u4f7f\u7528\u8054\u7cfb\u4eba\u8be6\u60c5?"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1017
    const-string v5, "type"

    const/16 v6, 0x11

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1018
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CloudContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 942
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e019c -> :sswitch_1
        0x7f0e019d -> :sswitch_9
        0x7f0e019e -> :sswitch_2
        0x7f0e01a2 -> :sswitch_4
        0x7f0e01a3 -> :sswitch_8
        0x7f0e01a5 -> :sswitch_7
        0x7f0e01ad -> :sswitch_0
        0x7f0e0333 -> :sswitch_5
        0x7f0e052f -> :sswitch_6
        0x7f0e0531 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 256
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->setContentView(I)V

    .line 257
    invoke-direct {p0}, Lcom/lzx/iteam/CloudContactDetailActivity;->initViews()V

    .line 258
    invoke-direct {p0}, Lcom/lzx/iteam/CloudContactDetailActivity;->initProperty()V

    .line 259
    invoke-direct {p0}, Lcom/lzx/iteam/CloudContactDetailActivity;->parseCloudIntent()V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudContactId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, p0, v0, v1}, Lcom/lzx/iteam/CloudContactDetailActivity;->getCloudContact(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 261
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2713

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->getAuthDetail(Landroid/content/Context;Landroid/os/Message;)V

    .line 262
    const-string v0, "0"

    iget-object v1, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2716

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->getTalkPreView(Landroid/content/Context;Landroid/os/Message;)V

    .line 265
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1090
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1091
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    invoke-virtual {v0}, Lcom/lzx/iteam/util/SendCardShakeListener;->pause()V

    .line 1093
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    .line 1095
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 1040
    packed-switch p1, :pswitch_data_0

    .line 1052
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1042
    :pswitch_0
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlNote:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlNote:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1044
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mSvCloudContact:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1045
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mLlChatBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1047
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudContactDetailActivity;->finish()V

    goto :goto_0

    .line 1040
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 924
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 925
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 926
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    invoke-virtual {v0}, Lcom/lzx/iteam/util/SendCardShakeListener;->pause()V

    .line 929
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 913
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 914
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    invoke-virtual {v0}, Lcom/lzx/iteam/util/SendCardShakeListener;->resume()V

    .line 919
    :goto_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 920
    return-void

    .line 917
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/CloudContactDetailActivity;->initShake()Lcom/lzx/iteam/util/SendCardShakeListener;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 933
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 934
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->opening:Z

    .line 935
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    invoke-virtual {v0}, Lcom/lzx/iteam/util/SendCardShakeListener;->pause()V

    .line 938
    :cond_0
    return-void
.end method

.method public showPopwindow(Z)V
    .locals 13
    .param p1, "isShare"    # Z

    .prologue
    .line 587
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03005b

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 588
    .local v7, "moreView":Landroid/view/View;
    const v8, 0x7f0e02aa

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 589
    .local v5, "btnEdit":Landroid/widget/Button;
    const v8, 0x7f0e02ad

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 590
    .local v3, "btnDelete":Landroid/widget/Button;
    const v8, 0x7f0e02ac

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 591
    .local v6, "btnWxShare":Landroid/widget/Button;
    const v8, 0x7f0e02ab

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 592
    .local v4, "btnDxShare":Landroid/widget/Button;
    const v8, 0x7f0e02ae

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 593
    .local v0, "btnAuthIn":Landroid/widget/Button;
    const v8, 0x7f0e02af

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 594
    .local v1, "btnAuthLook":Landroid/widget/Button;
    const v8, 0x7f0e02b0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 595
    .local v2, "btnCancel":Landroid/widget/Button;
    if-eqz p1, :cond_1

    .line 596
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 597
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 598
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 599
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 600
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 601
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 630
    :cond_0
    :goto_0
    new-instance v8, Lcom/lzx/iteam/CloudContactDetailActivity$3;

    invoke-direct {v8, p0}, Lcom/lzx/iteam/CloudContactDetailActivity$3;-><init>(Lcom/lzx/iteam/CloudContactDetailActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    new-instance v8, Lcom/lzx/iteam/CloudContactDetailActivity$4;

    invoke-direct {v8, p0}, Lcom/lzx/iteam/CloudContactDetailActivity$4;-><init>(Lcom/lzx/iteam/CloudContactDetailActivity;)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    new-instance v8, Lcom/lzx/iteam/CloudContactDetailActivity$5;

    invoke-direct {v8, p0}, Lcom/lzx/iteam/CloudContactDetailActivity$5;-><init>(Lcom/lzx/iteam/CloudContactDetailActivity;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    new-instance v8, Lcom/lzx/iteam/CloudContactDetailActivity$6;

    invoke-direct {v8, p0}, Lcom/lzx/iteam/CloudContactDetailActivity$6;-><init>(Lcom/lzx/iteam/CloudContactDetailActivity;)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 698
    new-instance v8, Lcom/lzx/iteam/CloudContactDetailActivity$7;

    invoke-direct {v8, p0}, Lcom/lzx/iteam/CloudContactDetailActivity$7;-><init>(Lcom/lzx/iteam/CloudContactDetailActivity;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    new-instance v8, Lcom/lzx/iteam/CloudContactDetailActivity$8;

    invoke-direct {v8, p0}, Lcom/lzx/iteam/CloudContactDetailActivity$8;-><init>(Lcom/lzx/iteam/CloudContactDetailActivity;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    new-instance v8, Lcom/lzx/iteam/CloudContactDetailActivity$9;

    invoke-direct {v8, p0}, Lcom/lzx/iteam/CloudContactDetailActivity$9;-><init>(Lcom/lzx/iteam/CloudContactDetailActivity;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    new-instance v8, Landroid/widget/PopupWindow;

    invoke-direct {v8, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    .line 731
    iget-object v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 732
    iget-object v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 733
    iget-object v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 734
    iget-object v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 735
    iget-object v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 736
    iget-object v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 737
    iget-object v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 738
    iget-object v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    const v9, 0x7f09000b

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 739
    iget-object v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    iget-object v9, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mMainLayout:Landroid/widget/LinearLayout;

    const/16 v10, 0x50

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 740
    iget-object v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->update()V

    .line 742
    new-instance v8, Lcom/lzx/iteam/CloudContactDetailActivity$10;

    invoke-direct {v8, p0}, Lcom/lzx/iteam/CloudContactDetailActivity$10;-><init>(Lcom/lzx/iteam/CloudContactDetailActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 750
    return-void

    .line 603
    :cond_1
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 604
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 605
    iget v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mAccess:I

    if-nez v8, :cond_6

    .line 606
    const-string v8, "\u4e0d\u8ba9\u4ed6\u770b\u6211\u7684\u4eba\u8109\u5708"

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 611
    :cond_2
    :goto_1
    iget v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mShield:I

    if-nez v8, :cond_7

    .line 612
    const-string v8, "\u4e0d\u770b\u4ed6\u7684\u4eba\u8109\u5708"

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 616
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v9, "useid"

    const-string v10, "\uff0d1"

    invoke-virtual {v8, v9, v10}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mUserId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 617
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 618
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 620
    :cond_4
    const-string v8, "0"

    iget-object v9, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mUserType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "1"

    iget-object v9, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mUserType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 621
    :cond_5
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 622
    iget-object v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v9, "useid"

    const-string v10, "\uff0d1"

    invoke-virtual {v8, v9, v10}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mUserId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 623
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 607
    :cond_6
    iget v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mAccess:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 608
    const-string v8, "\u5141\u8bb8\u4ed6\u770b\u6211\u7684\u4eba\u8109\u5708"

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 613
    :cond_7
    iget v8, p0, Lcom/lzx/iteam/CloudContactDetailActivity;->mShield:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 614
    const-string v8, "\u770b\u4ed6\u7684\u4eba\u8109\u5708"

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
