.class public Lcom/lzx/iteam/TalkListActivity;
.super Landroid/app/Activity;
.source "TalkListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field public static CONTACTS_CIRCLE:Ljava/lang/String;

.field public static MY_PERSONAL_SPACE:Ljava/lang/String;

.field public static OTHER_PERSONAL_SPACE:Ljava/lang/String;

.field public static instance:Lcom/lzx/iteam/TalkListActivity;


# instance fields
.field private final ADD_COMMENT:I

.field private final DELETE_TALK:I

.field private final GET_TALK_NEW_MSG_COUNT:I

.field is_scrolling:Z

.field private mAction:Ljava/lang/String;

.field private mActivity:Lcom/lzx/iteam/TalkListActivity;

.field private mCenter:Lcom/lzx/iteam/net/TalkListCenter;

.field private mDeleteTalkId:Ljava/lang/String;

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mEmotionLayout:Landroid/widget/LinearLayout;

.field private mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

.field private mEtCommentEdit:Landroid/widget/EditText;

.field private mFooterLayout:Landroid/widget/LinearLayout;

.field private mFooterProgress:Landroid/widget/ProgressBar;

.field private mFooterText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIvEmotiom:Landroid/widget/ImageView;

.field private mIvNoData:Landroid/widget/ImageView;

.field private mLlBack:Landroid/widget/LinearLayout;

.field private mLlBottomLayout:Landroid/widget/LinearLayout;

.field private mLlEmotionDots:Landroid/widget/LinearLayout;

.field private mLlHelp:Landroid/widget/LinearLayout;

.field private mLlMore:Landroid/widget/LinearLayout;

.field private mLlNoData:Landroid/widget/LinearLayout;

.field private mLvTalkList:Landroid/widget/ListView;

.field private mNewMessage:Landroid/widget/TextView;

.field private mPosition:I

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mReplyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRightImg:Landroid/widget/ImageView;

.field private mRlTalkList:Landroid/widget/RelativeLayout;

.field private mSendMessage:Ljava/lang/String;

.field private mTalkListAdapter:Lcom/lzx/iteam/adapter/TalkListAdapter;

.field mTextWatcher:Landroid/text/TextWatcher;

.field private mTvNoData:Landroid/widget/TextView;

.field private mTvSend:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private mVpEmotion:Landroid/support/v4/view/ViewPager;

.field private mWaitDialog:Landroid/app/Dialog;

.field private pageIndex:I

.field private talkListTempDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/TalkListData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "my_personal_space"

    sput-object v0, Lcom/lzx/iteam/TalkListActivity;->MY_PERSONAL_SPACE:Ljava/lang/String;

    .line 66
    const-string v0, "other_personal_space"

    sput-object v0, Lcom/lzx/iteam/TalkListActivity;->OTHER_PERSONAL_SPACE:Ljava/lang/String;

    .line 67
    const-string v0, "contacts_circle"

    sput-object v0, Lcom/lzx/iteam/TalkListActivity;->CONTACTS_CIRCLE:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/lzx/iteam/TalkListActivity;->instance:Lcom/lzx/iteam/TalkListActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    iput v1, p0, Lcom/lzx/iteam/TalkListActivity;->pageIndex:I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->talkListTempDatas:Ljava/util/ArrayList;

    .line 74
    iput-boolean v1, p0, Lcom/lzx/iteam/TalkListActivity;->is_scrolling:Z

    .line 85
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/lzx/iteam/TalkListActivity;->DELETE_TALK:I

    .line 86
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/lzx/iteam/TalkListActivity;->GET_TALK_NEW_MSG_COUNT:I

    .line 87
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/lzx/iteam/TalkListActivity;->ADD_COMMENT:I

    .line 88
    new-instance v0, Lcom/lzx/iteam/TalkListActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/TalkListActivity$1;-><init>(Lcom/lzx/iteam/TalkListActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mHandler:Landroid/os/Handler;

    .line 328
    new-instance v0, Lcom/lzx/iteam/TalkListActivity$2;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/TalkListActivity$2;-><init>(Lcom/lzx/iteam/TalkListActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mTextWatcher:Landroid/text/TextWatcher;

    .line 51
    return-void
.end method

.method private AddCommentMsg(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "tagId"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 640
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 642
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "talk_id"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    new-instance v0, Lcom/lzx/iteam/net/AddTalkCommentMsg;

    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/lzx/iteam/net/AddTalkCommentMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 645
    .local v0, "message":Lcom/lzx/iteam/net/AddTalkCommentMsg;
    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    .line 646
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "content"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    const-string v2, "/api/talk/add_comment"

    iput-object v2, v0, Lcom/lzx/iteam/net/AddTalkCommentMsg;->mApi:Ljava/lang/String;

    .line 653
    :goto_0
    iput-object v1, v0, Lcom/lzx/iteam/net/AddTalkCommentMsg;->mParams:Ljava/util/List;

    .line 654
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execTalkHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 655
    return-void

    .line 649
    :cond_0
    const-string v2, "/api/talk/reply"

    iput-object v2, v0, Lcom/lzx/iteam/net/AddTalkCommentMsg;->mApi:Ljava/lang/String;

    .line 650
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "reply_uid"

    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mReplyMap:Ljava/util/Map;

    const-string v5, "talk_reply_id"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "reply_txt"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private GetNewMessage()V
    .locals 5

    .prologue
    .line 590
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 592
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    new-instance v0, Lcom/lzx/iteam/net/GetTalkNewMsg;

    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/lzx/iteam/net/GetTalkNewMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 594
    .local v0, "message":Lcom/lzx/iteam/net/GetTalkNewMsg;
    const-string v2, "/api/talk/new_msg_count"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetTalkNewMsg;->mApi:Ljava/lang/String;

    .line 595
    iput-object v1, v0, Lcom/lzx/iteam/net/GetTalkNewMsg;->mParams:Ljava/util/List;

    .line 596
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execTalkHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 597
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/TalkListActivity;)V
    .locals 0

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/lzx/iteam/TalkListActivity;->httpReqDlgDismiss()V

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/TalkListActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->talkListTempDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/TalkListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lzx/iteam/TalkListActivity;->mSendMessage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mEtCommentEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$12(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mTvSend:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lzx/iteam/TalkListActivity;)Lcom/lzx/iteam/util/PreferenceUtil;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    return-object v0
.end method

.method static synthetic access$14(Lcom/lzx/iteam/TalkListActivity;I)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/lzx/iteam/TalkListActivity;->mPosition:I

    return-void
.end method

.method static synthetic access$15(Lcom/lzx/iteam/TalkListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lzx/iteam/TalkListActivity;->mDeleteTalkId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mLlNoData:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$17(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mRlTalkList:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$18(Lcom/lzx/iteam/TalkListActivity;)V
    .locals 0

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/lzx/iteam/TalkListActivity;->httpReqDlgShow()V

    return-void
.end method

.method static synthetic access$19(Lcom/lzx/iteam/TalkListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/lzx/iteam/TalkListActivity;->deleteTalk(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/TalkListActivity;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/lzx/iteam/TalkListActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/TalkListActivity;)Lcom/lzx/iteam/net/TalkListCenter;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mCenter:Lcom/lzx/iteam/net/TalkListCenter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/TalkListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mDeleteTalkId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/TalkListActivity;)Lcom/lzx/iteam/adapter/TalkListAdapter;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mTalkListAdapter:Lcom/lzx/iteam/adapter/TalkListAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mNewMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/TalkListActivity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mReplyMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/TalkListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mSendMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mLlBottomLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private deleteTalk(Ljava/lang/String;)V
    .locals 5
    .param p1, "talkId"    # Ljava/lang/String;

    .prologue
    .line 558
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 560
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "talk_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    new-instance v0, Lcom/lzx/iteam/net/DeleteEventMsg;

    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/DeleteEventMsg;-><init>(Landroid/os/Message;)V

    .line 563
    .local v0, "message":Lcom/lzx/iteam/net/DeleteEventMsg;
    const-string v2, "/api/talk/del"

    iput-object v2, v0, Lcom/lzx/iteam/net/DeleteEventMsg;->mApi:Ljava/lang/String;

    .line 564
    iput-object v1, v0, Lcom/lzx/iteam/net/DeleteEventMsg;->mParams:Ljava/util/List;

    .line 565
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execTalkHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 566
    return-void
.end method

.method private getIntentData()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 442
    invoke-virtual {p0}, Lcom/lzx/iteam/TalkListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 443
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mAction:Ljava/lang/String;

    .line 444
    new-instance v2, Lcom/lzx/iteam/adapter/TalkListAdapter;

    iget-object v3, p0, Lcom/lzx/iteam/TalkListActivity;->mAction:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mTalkListAdapter:Lcom/lzx/iteam/adapter/TalkListAdapter;

    .line 445
    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mLvTalkList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lzx/iteam/TalkListActivity;->mTalkListAdapter:Lcom/lzx/iteam/adapter/TalkListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 446
    sget-object v2, Lcom/lzx/iteam/TalkListActivity;->CONTACTS_CIRCLE:Ljava/lang/String;

    iget-object v3, p0, Lcom/lzx/iteam/TalkListActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 447
    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mRightImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lzx/iteam/TalkListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 448
    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mTvTitle:Landroid/widget/TextView;

    const-string v3, "\u4eba\u8109\u5708"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget v2, p0, Lcom/lzx/iteam/TalkListActivity;->pageIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lzx/iteam/TalkListActivity;->pageIndex:I

    invoke-direct {p0, v2, v5}, Lcom/lzx/iteam/TalkListActivity;->initData(IZ)V

    .line 463
    :cond_0
    :goto_0
    const-string v2, "score"

    const-string v3, "type"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 464
    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v3, "score_app_v1"

    invoke-virtual {v2, v3, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 465
    .local v1, "isFirst":Z
    if-eqz v1, :cond_1

    .line 466
    invoke-virtual {p0}, Lcom/lzx/iteam/TalkListActivity;->showScoreDlg()V

    .line 470
    .end local v1    # "isFirst":Z
    :cond_1
    return-void

    .line 450
    :cond_2
    sget-object v2, Lcom/lzx/iteam/TalkListActivity;->MY_PERSONAL_SPACE:Ljava/lang/String;

    iget-object v3, p0, Lcom/lzx/iteam/TalkListActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 451
    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mRightImg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lzx/iteam/TalkListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mTvTitle:Landroid/widget/TextView;

    const-string v3, "\u4e2a\u4eba\u7a7a\u95f4"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget v2, p0, Lcom/lzx/iteam/TalkListActivity;->pageIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lzx/iteam/TalkListActivity;->pageIndex:I

    invoke-direct {p0, v2, v5}, Lcom/lzx/iteam/TalkListActivity;->initData(IZ)V

    goto :goto_0

    .line 454
    :cond_3
    sget-object v2, Lcom/lzx/iteam/TalkListActivity;->OTHER_PERSONAL_SPACE:Ljava/lang/String;

    iget-object v3, p0, Lcom/lzx/iteam/TalkListActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mRightImg:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mTvTitle:Landroid/widget/TextView;

    const-string v3, "\u4e2a\u4eba\u7a7a\u95f4"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mCenter:Lcom/lzx/iteam/net/TalkListCenter;

    iget-object v3, p0, Lcom/lzx/iteam/TalkListActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/net/TalkListCenter;->deleteAllTalk(Ljava/lang/String;)Z

    .line 458
    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mCenter:Lcom/lzx/iteam/net/TalkListCenter;

    const-string v3, "set_user_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/net/TalkListCenter;->setUsetId(Ljava/lang/String;)V

    .line 459
    iget v2, p0, Lcom/lzx/iteam/TalkListActivity;->pageIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lzx/iteam/TalkListActivity;->pageIndex:I

    invoke-direct {p0, v2, v5}, Lcom/lzx/iteam/TalkListActivity;->initData(IZ)V

    .line 460
    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mIvNoData:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lzx/iteam/TalkListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020328

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mTvNoData:Landroid/widget/TextView;

    const-string v3, "\u4ed6\u7684\u7a7a\u95f4\u91cc\u8fd8\u6ca1\u6709\u5185\u5bb9"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private httpReqDlgDismiss()V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mWaitDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mWaitDialog:Landroid/app/Dialog;

    .line 630
    :cond_0
    return-void
.end method

.method private httpReqDlgShow()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mWaitDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mActivity:Lcom/lzx/iteam/TalkListActivity;

    invoke-static {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->waitDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mWaitDialog:Landroid/app/Dialog;

    .line 617
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 620
    :cond_0
    return-void
.end method

.method private initData(IZ)V
    .locals 5
    .param p1, "pageIndex"    # I
    .param p2, "isUpdate"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 429
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->talkListTempDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 430
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->talkListTempDatas:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mCenter:Lcom/lzx/iteam/net/TalkListCenter;

    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2}, Lcom/lzx/iteam/net/TalkListCenter;->getTalkData(IZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 431
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mTalkListAdapter:Lcom/lzx/iteam/adapter/TalkListAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->talkListTempDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/TalkListAdapter;->bindData(Ljava/util/ArrayList;)V

    .line 432
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->talkListTempDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mLlNoData:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mRlTalkList:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 439
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mLlNoData:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mRlTalkList:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initEmotion()V
    .locals 4

    .prologue
    .line 352
    new-instance v0, Lcom/lzx/iteam/emotion/EmotionUtil;

    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mEtCommentEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mLlEmotionDots:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lzx/iteam/TalkListActivity;->mVpEmotion:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lzx/iteam/emotion/EmotionUtil;-><init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

    .line 353
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

    invoke-virtual {v0}, Lcom/lzx/iteam/emotion/EmotionUtil;->initStaticFaces()V

    .line 354
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

    invoke-virtual {v0}, Lcom/lzx/iteam/emotion/EmotionUtil;->initViewPager()V

    .line 355
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mVpEmotion:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/lzx/iteam/emotion/EmotionUtil$PageChange;

    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/lzx/iteam/emotion/EmotionUtil$PageChange;-><init>(Lcom/lzx/iteam/emotion/EmotionUtil;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 356
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 189
    new-instance v1, Lcom/lzx/iteam/util/AllDialogUtil;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/util/AllDialogUtil;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 190
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 191
    const v1, 0x7f0e062c

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/TalkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mLlBack:Landroid/widget/LinearLayout;

    .line 192
    const v1, 0x7f0e062f

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/TalkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mLlMore:Landroid/widget/LinearLayout;

    .line 193
    const v1, 0x7f0e062d

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/TalkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mLlHelp:Landroid/widget/LinearLayout;

    .line 194
    const v1, 0x7f0e0631

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/TalkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mLlNoData:Landroid/widget/LinearLayout;

    .line 195
    const v1, 0x7f0e0632

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/TalkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mIvNoData:Landroid/widget/ImageView;

    .line 196
    const v1, 0x7f0e0633

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/TalkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mTvNoData:Landroid/widget/TextView;

    .line 197
    const v1, 0x7f0e0634

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/TalkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mRlTalkList:Landroid/widget/RelativeLayout;

    .line 198
    const v1, 0x7f0e0630

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/TalkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mRightImg:Landroid/widget/ImageView;

    .line 199
    const v1, 0x7f0e0635

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/TalkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mLvTalkList:Landroid/widget/ListView;

    .line 200
    const v1, 0x7f0e0636

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/TalkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mLlBottomLayout:Landroid/widget/LinearLayout;

    .line 201
    const v1, 0x7f0e0638

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/TalkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mEtCommentEdit:Landroid/widget/EditText;

    .line 202
    const v1, 0x7f0e0639

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/TalkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mIvEmotiom:Landroid/widget/ImageView;

    .line 203
    const v1, 0x7f0e063a

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/TalkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    .line 204
    const v1, 0x7f0e063b

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/TalkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mVpEmotion:Landroid/support/v4/view/ViewPager;

    .line 205
    const v1, 0x7f0e063d

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/TalkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mNewMessage:Landroid/widget/TextView;

    .line 206
    const v1, 0x7f0e0637

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/TalkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mTvSend:Landroid/widget/TextView;

    .line 207
    const v1, 0x7f0e062e

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/TalkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mTvTitle:Landroid/widget/TextView;

    .line 208
    const v1, 0x7f0e063c

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/TalkListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mLlEmotionDots:Landroid/widget/LinearLayout;

    .line 209
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mEtCommentEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 210
    invoke-virtual {p0}, Lcom/lzx/iteam/TalkListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 211
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mNewMessage:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mLlBack:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mIvEmotiom:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mLlMore:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030108

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 216
    .local v0, "footerView":Landroid/view/View;
    const v1, 0x7f0e066a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mFooterLayout:Landroid/widget/LinearLayout;

    .line 217
    const v1, 0x7f0e066c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mFooterText:Landroid/widget/TextView;

    .line 218
    const v1, 0x7f0e066b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mFooterProgress:Landroid/widget/ProgressBar;

    .line 219
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mFooterLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mLvTalkList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 221
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mLvTalkList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 222
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mLvTalkList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 223
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mEtCommentEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mTvSend:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mLlHelp:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mEtCommentEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 241
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mLvTalkList:Landroid/widget/ListView;

    new-instance v2, Lcom/lzx/iteam/TalkListActivity$3;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/TalkListActivity$3;-><init>(Lcom/lzx/iteam/TalkListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 254
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mLvTalkList:Landroid/widget/ListView;

    new-instance v2, Lcom/lzx/iteam/TalkListActivity$4;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/TalkListActivity$4;-><init>(Lcom/lzx/iteam/TalkListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 281
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mCenter:Lcom/lzx/iteam/net/TalkListCenter;

    new-instance v2, Lcom/lzx/iteam/TalkListActivity$5;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/TalkListActivity$5;-><init>(Lcom/lzx/iteam/TalkListActivity;)V

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/net/TalkListCenter;->setUpdateTalkListener(Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;)V

    .line 326
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v9, 0x7f0202c5

    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v10, 0x2

    const/4 v7, 0x0

    .line 361
    invoke-static {}, Lcom/lzx/iteam/util/Constants;->isFastClick()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 366
    :sswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/TalkListActivity;->finish()V

    goto :goto_0

    .line 369
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/lzx/iteam/TalkListActivity;->mActivity:Lcom/lzx/iteam/TalkListActivity;

    const-class v6, Lcom/lzx/iteam/HelpActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    .local v1, "help":Landroid/content/Intent;
    const-string v5, "title"

    const-string v6, "\u5982\u4f55\u4f7f\u7528\u4eba\u8109\u5708?"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const-string v5, "type"

    const/16 v6, 0xe

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/TalkListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 383
    .end local v1    # "help":Landroid/content/Intent;
    :sswitch_2
    iget-object v5, p0, Lcom/lzx/iteam/TalkListActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 384
    .local v4, "visible":Z
    :goto_1
    if-eqz v4, :cond_3

    .line 385
    iget-object v5, p0, Lcom/lzx/iteam/TalkListActivity;->mIvEmotiom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lzx/iteam/TalkListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 386
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/lzx/iteam/TalkListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5, v7, v10}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 392
    :goto_2
    iget-object v8, p0, Lcom/lzx/iteam/TalkListActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_4

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .end local v4    # "visible":Z
    :cond_2
    move v4, v7

    .line 383
    goto :goto_1

    .line 389
    .restart local v4    # "visible":Z
    :cond_3
    iget-object v5, p0, Lcom/lzx/iteam/TalkListActivity;->mIvEmotiom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lzx/iteam/TalkListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0202c8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/lzx/iteam/TalkListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/TalkListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v5, v8, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_2

    :cond_4
    move v5, v7

    .line 392
    goto :goto_3

    .line 395
    .end local v4    # "visible":Z
    :sswitch_3
    sget-object v5, Lcom/lzx/iteam/TalkListActivity;->CONTACTS_CIRCLE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lzx/iteam/TalkListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 398
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/lzx/iteam/SendTalkActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 399
    .local v0, "circle":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/TalkListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 400
    .end local v0    # "circle":Landroid/content/Intent;
    :cond_5
    sget-object v5, Lcom/lzx/iteam/TalkListActivity;->MY_PERSONAL_SPACE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lzx/iteam/TalkListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 401
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/lzx/iteam/MyTalkMessageActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 402
    .local v3, "mySpace":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/lzx/iteam/TalkListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 407
    .end local v3    # "mySpace":Landroid/content/Intent;
    :sswitch_4
    iget-object v5, p0, Lcom/lzx/iteam/TalkListActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_6

    .line 408
    .restart local v4    # "visible":Z
    :goto_4
    iget-object v5, p0, Lcom/lzx/iteam/TalkListActivity;->mIvEmotiom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lzx/iteam/TalkListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    if-eqz v4, :cond_0

    .line 410
    iget-object v5, p0, Lcom/lzx/iteam/TalkListActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .end local v4    # "visible":Z
    :cond_6
    move v4, v7

    .line 407
    goto :goto_4

    .line 414
    :sswitch_5
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/lzx/iteam/MyTalkMessageActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 415
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/TalkListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 418
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_6
    const-string v5, "2"

    iget-object v6, p0, Lcom/lzx/iteam/TalkListActivity;->mReplyMap:Ljava/util/Map;

    const-string v7, "talk_type"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 419
    iget-object v6, p0, Lcom/lzx/iteam/TalkListActivity;->mSendMessage:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/TalkListActivity;->mReplyMap:Ljava/util/Map;

    const-string v7, "talk_id"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v6, v5, v10}, Lcom/lzx/iteam/TalkListActivity;->AddCommentMsg(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 421
    :cond_7
    iget-object v6, p0, Lcom/lzx/iteam/TalkListActivity;->mSendMessage:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/TalkListActivity;->mReplyMap:Ljava/util/Map;

    const-string v7, "talk_id"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x3

    invoke-direct {p0, v6, v5, v7}, Lcom/lzx/iteam/TalkListActivity;->AddCommentMsg(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 364
    :sswitch_data_0
    .sparse-switch
        0x7f0e062c -> :sswitch_0
        0x7f0e062d -> :sswitch_1
        0x7f0e062f -> :sswitch_3
        0x7f0e0637 -> :sswitch_6
        0x7f0e0638 -> :sswitch_4
        0x7f0e0639 -> :sswitch_2
        0x7f0e063d -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    const v0, 0x7f0300f5

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/TalkListActivity;->setContentView(I)V

    .line 178
    invoke-static {p0}, Lcom/lzx/iteam/net/TalkListCenter;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/TalkListCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mCenter:Lcom/lzx/iteam/net/TalkListCenter;

    .line 179
    sput-object p0, Lcom/lzx/iteam/TalkListActivity;->instance:Lcom/lzx/iteam/TalkListActivity;

    .line 180
    iput-object p0, p0, Lcom/lzx/iteam/TalkListActivity;->mActivity:Lcom/lzx/iteam/TalkListActivity;

    .line 181
    invoke-direct {p0}, Lcom/lzx/iteam/TalkListActivity;->initView()V

    .line 182
    invoke-direct {p0}, Lcom/lzx/iteam/TalkListActivity;->initEmotion()V

    .line 183
    invoke-direct {p0}, Lcom/lzx/iteam/TalkListActivity;->getIntentData()V

    .line 184
    invoke-direct {p0}, Lcom/lzx/iteam/TalkListActivity;->GetNewMessage()V

    .line 185
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 511
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 525
    :goto_0
    return-void

    .line 513
    :pswitch_0
    add-int v0, p2, p3

    if-ne v0, p4, :cond_1

    if-eqz p4, :cond_1

    .line 514
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mTalkListAdapter:Lcom/lzx/iteam/adapter/TalkListAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/TalkListAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "talk_count"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 515
    invoke-virtual {p0, v5}, Lcom/lzx/iteam/TalkListActivity;->setFooterText(Z)V

    .line 519
    :goto_1
    iput-boolean v5, p0, Lcom/lzx/iteam/TalkListActivity;->is_scrolling:Z

    goto :goto_0

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 521
    :cond_1
    iput-boolean v4, p0, Lcom/lzx/iteam/TalkListActivity;->is_scrolling:Z

    goto :goto_0

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0635
        :pswitch_0
    .end packed-switch
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 496
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 498
    :pswitch_0
    iget-boolean v0, p0, Lcom/lzx/iteam/TalkListActivity;->is_scrolling:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 499
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mTalkListAdapter:Lcom/lzx/iteam/adapter/TalkListAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/TalkListAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "talk_count"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 500
    iget v0, p0, Lcom/lzx/iteam/TalkListActivity;->pageIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/TalkListActivity;->pageIndex:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lzx/iteam/TalkListActivity;->initData(IZ)V

    goto :goto_0

    .line 502
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/TalkListActivity;->setFooterText(Z)V

    goto :goto_0

    .line 496
    :pswitch_data_0
    .packed-switch 0x7f0e0635
        :pswitch_0
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 475
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 491
    :goto_0
    return v3

    .line 478
    :pswitch_0
    :try_start_0
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/TalkListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/TalkListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :goto_1
    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 483
    .local v1, "visible":Z
    :goto_2
    if-eqz v1, :cond_0

    .line 484
    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 486
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mLlBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 479
    .end local v1    # "visible":Z
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v1, v3

    .line 482
    goto :goto_2

    .line 475
    :pswitch_data_0
    .packed-switch 0x7f0e0635
        :pswitch_0
    .end packed-switch
.end method

.method public setFooterText(Z)V
    .locals 3
    .param p1, "isFinish"    # Z

    .prologue
    .line 600
    if-eqz p1, :cond_0

    .line 601
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mFooterLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 607
    :goto_0
    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mFooterText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/TalkListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 604
    const v2, 0x7f080198

    .line 603
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity;->mFooterProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public showBottomLayout(Ljava/util/Map;I)V
    .locals 5
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "replyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 536
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mLlBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 537
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 538
    .local v0, "visible":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 539
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mIvEmotiom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lzx/iteam/TalkListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 542
    :cond_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/TalkListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 544
    iput p2, p0, Lcom/lzx/iteam/TalkListActivity;->mPosition:I

    .line 546
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mReplyMap:Ljava/util/Map;

    .line 547
    iput-object p1, p0, Lcom/lzx/iteam/TalkListActivity;->mReplyMap:Ljava/util/Map;

    .line 548
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mEtCommentEdit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mEtCommentEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 550
    const-string v1, "2"

    const-string v2, "talk_type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 551
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity;->mEtCommentEdit:Landroid/widget/EditText;

    const-string v2, "\u8bf4\u70b9\u4ec0\u4e48\u5427"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 555
    :goto_1
    return-void

    .end local v0    # "visible":Z
    :cond_1
    move v0, v2

    .line 537
    goto :goto_0

    .line 553
    .restart local v0    # "visible":Z
    :cond_2
    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mEtCommentEdit:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "\u56de\u590d"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "talk_reply_name"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public showDeleteTalkDlg(Ljava/lang/String;)V
    .locals 4
    .param p1, "talkId"    # Ljava/lang/String;

    .prologue
    .line 570
    const v2, 0x7f080062

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/TalkListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, "okText":Ljava/lang/String;
    const v2, 0x7f08002d

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/TalkListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "cancelText":Ljava/lang/String;
    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    const-string v3, "\u5220\u9664\u6b64\u52a8\u6001"

    invoke-virtual {v2, v1, v0, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 573
    iget-object v2, p0, Lcom/lzx/iteam/TalkListActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    new-instance v3, Lcom/lzx/iteam/TalkListActivity$6;

    invoke-direct {v3, p0, p1}, Lcom/lzx/iteam/TalkListActivity$6;-><init>(Lcom/lzx/iteam/TalkListActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 587
    return-void
.end method

.method public showScoreDlg()V
    .locals 5

    .prologue
    .line 661
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v1

    .line 662
    .local v1, "dialogUtil":Lcom/lzx/iteam/util/AllDialogUtil;
    const-string v2, "\u8bc4\u5206"

    .line 663
    .local v2, "okText":Ljava/lang/String;
    const-string v0, "\u4e0b\u6b21"

    .line 664
    .local v0, "cancelText":Ljava/lang/String;
    const-string v3, ""

    const-string v4, "\u611f\u8c22\u4f60\u5bf9\u300a\u56e2\u961f\u300b\u7684\u652f\u6301\uff01\u5982\u679c\u89c9\u7684\u300a\u56e2\u961f\u300b\u8fd8\u4e0d\u9519\u7684\u8bdd\uff0c\u5c31\u53bb\u7ed9\u4e2a\u597d\u8bc4\u5427\uff01"

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 665
    new-instance v3, Lcom/lzx/iteam/TalkListActivity$7;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/TalkListActivity$7;-><init>(Lcom/lzx/iteam/TalkListActivity;)V

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 691
    return-void
.end method
