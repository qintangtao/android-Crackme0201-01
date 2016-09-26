.class public Lcom/lzx/iteam/ContactsTalkDetailActivity;
.super Landroid/app/Activity;
.source "ContactsTalkDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/ContactsTalkDetailActivity$PageChange;
    }
.end annotation


# instance fields
.field private final ADD_COMMENT:I

.field private final ADD_PRAISE:I

.field private final GET_DETAIL:I

.field private commentListAdapter:Lcom/lzx/iteam/adapter/DetailCommentListAdapter;

.field private imageAdapter:Lcom/lzx/iteam/adapter/EventImageAdapter;

.field private mCommentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEmotionLayout:Landroid/widget/LinearLayout;

.field private mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

.field private mEtCommentEdit:Landroid/widget/EditText;

.field private mFlUserImage:Landroid/widget/FrameLayout;

.field private mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

.field public mHandler:Landroid/os/Handler;

.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mIvComment:Landroid/widget/ImageView;

.field private mIvEmotiom:Landroid/widget/ImageView;

.field private mIvPraise:Landroid/widget/ImageView;

.field private mIvUserImage:Landroid/widget/ImageView;

.field private mLlBack:Landroid/widget/LinearLayout;

.field private mLlBottomLayout:Landroid/widget/LinearLayout;

.field private mLlEmotionDots:Landroid/widget/LinearLayout;

.field private mLvCommentList:Landroid/widget/ListView;

.field private mOriImage:Ljava/lang/String;

.field private mOriImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPraise:Ljava/lang/String;

.field private mPraiseLayout:Landroid/widget/LinearLayout;

.field private mPraiseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

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

.field private mRlRoot:Landroid/widget/RelativeLayout;

.field private mSendMessage:Ljava/lang/String;

.field private mTalkId:Ljava/lang/String;

.field mTextWatcher:Landroid/text/TextWatcher;

.field private mThumeImage:Ljava/lang/String;

.field private mTvAddOnePraise:Landroid/widget/TextView;

.field private mTvContent:Landroid/widget/TextView;

.field private mTvSend:Landroid/widget/TextView;

.field private mTvTime:Landroid/widget/TextView;

.field private mTvUserName:Landroid/widget/TextView;

.field private mVpEmotion:Landroid/support/v4/view/ViewPager;

.field private myUserId:Ljava/lang/String;

.field private myUserImg:Ljava/lang/String;

.field private myUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mOriImages:Ljava/util/ArrayList;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraise:Ljava/lang/String;

    .line 82
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->ADD_COMMENT:I

    .line 83
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->ADD_PRAISE:I

    .line 84
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->GET_DETAIL:I

    .line 92
    new-instance v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;-><init>(Lcom/lzx/iteam/ContactsTalkDetailActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mHandler:Landroid/os/Handler;

    .line 287
    new-instance v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity$2;-><init>(Lcom/lzx/iteam/ContactsTalkDetailActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTextWatcher:Landroid/text/TextWatcher;

    .line 49
    return-void
.end method

.method private AddCommentMsg(Ljava/lang/String;I)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "type"    # I

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
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "talk_id"

    iget-object v4, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTalkId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    new-instance v0, Lcom/lzx/iteam/net/AddTalkCommentMsg;

    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/lzx/iteam/net/AddTalkCommentMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 595
    .local v0, "message":Lcom/lzx/iteam/net/AddTalkCommentMsg;
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 596
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "content"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    const-string v2, "/api/talk/add_comment"

    iput-object v2, v0, Lcom/lzx/iteam/net/AddTalkCommentMsg;->mApi:Ljava/lang/String;

    .line 603
    :goto_0
    iput-object v1, v0, Lcom/lzx/iteam/net/AddTalkCommentMsg;->mParams:Ljava/util/List;

    .line 604
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execTalkHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 605
    return-void

    .line 599
    :cond_0
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "reply_uid"

    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mReplyMap:Ljava/util/Map;

    const-string v5, "talk_reply_id"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "reply_txt"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    const-string v2, "/api/talk/reply"

    iput-object v2, v0, Lcom/lzx/iteam/net/AddTalkCommentMsg;->mApi:Ljava/lang/String;

    goto :goto_0
.end method

.method private AddPraiseMsg()V
    .locals 5

    .prologue
    .line 609
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 611
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "talk_id"

    iget-object v4, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTalkId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    new-instance v0, Lcom/lzx/iteam/net/AddTalkCommentMsg;

    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/lzx/iteam/net/AddTalkCommentMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 614
    .local v0, "message":Lcom/lzx/iteam/net/AddTalkCommentMsg;
    const-string v2, "/api/talk/like"

    iput-object v2, v0, Lcom/lzx/iteam/net/AddTalkCommentMsg;->mApi:Ljava/lang/String;

    .line 615
    iput-object v1, v0, Lcom/lzx/iteam/net/AddTalkCommentMsg;->mParams:Ljava/util/List;

    .line 616
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execTalkHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 617
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mReplyMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTalkId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/ContactsTalkDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mSendMessage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/lzx/iteam/ContactsTalkDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraise:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraise:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$14(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mIvPraise:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTvAddOnePraise:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$17(Lcom/lzx/iteam/ContactsTalkDetailActivity;Lcom/lzx/iteam/bean/TalkListData;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->setData(Lcom/lzx/iteam/bean/TalkListData;)V

    return-void
.end method

.method static synthetic access$18(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEtCommentEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$19(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTvSend:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mSendMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mLlEmotionDots:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$21(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mOriImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->myUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->myUserName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->myUserImg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mCommentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/ContactsTalkDetailActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mCommentList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$8(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Lcom/lzx/iteam/adapter/DetailCommentListAdapter;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->commentListAdapter:Lcom/lzx/iteam/adapter/DetailCommentListAdapter;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mLlBottomLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private addHeaderView()Landroid/view/View;
    .locals 4

    .prologue
    .line 414
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300f2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 415
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e0614

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mIvUserImage:Landroid/widget/ImageView;

    .line 416
    const v1, 0x7f0e0613

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mFlUserImage:Landroid/widget/FrameLayout;

    .line 417
    const v1, 0x7f0e061a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mIvComment:Landroid/widget/ImageView;

    .line 418
    const v1, 0x7f0e061c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mIvPraise:Landroid/widget/ImageView;

    .line 419
    const v1, 0x7f0e0616

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTvUserName:Landroid/widget/TextView;

    .line 420
    const v1, 0x7f0e0618

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTvContent:Landroid/widget/TextView;

    .line 421
    const v1, 0x7f0e0617

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTvTime:Landroid/widget/TextView;

    .line 422
    const v1, 0x7f0e061b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTvAddOnePraise:Landroid/widget/TextView;

    .line 423
    const v1, 0x7f0e0619

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/gridimg/MyGridView;

    iput-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    .line 425
    const v1, 0x7f0e061d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseLayout:Landroid/widget/LinearLayout;

    .line 426
    iget-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mIvComment:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    iget-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mFlUserImage:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mIvPraise:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    iget-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    new-instance v2, Lcom/lzx/iteam/ContactsTalkDetailActivity$3;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity$3;-><init>(Lcom/lzx/iteam/ContactsTalkDetailActivity;)V

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/gridimg/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 440
    return-object v0
.end method

.method private getIntentData()V
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 313
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "talk_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTalkId:Ljava/lang/String;

    .line 314
    invoke-direct {p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getTalkDetail()V

    .line 316
    return-void
.end method

.method private getTalkDetail()V
    .locals 5

    .prologue
    .line 621
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 623
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "talk_id"

    iget-object v4, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTalkId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    new-instance v0, Lcom/lzx/iteam/net/GetTalkDetailMsg;

    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/lzx/iteam/net/GetTalkDetailMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 626
    .local v0, "message":Lcom/lzx/iteam/net/GetTalkDetailMsg;
    const-string v2, "/api/talk/detail"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetTalkDetailMsg;->mApi:Ljava/lang/String;

    .line 627
    iput-object v1, v0, Lcom/lzx/iteam/net/GetTalkDetailMsg;->mParams:Ljava/util/List;

    .line 628
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execTalkHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 629
    return-void
.end method

.method private handler(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 18
    .param p1, "gifTextView"    # Landroid/widget/TextView;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 548
    new-instance v11, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 549
    .local v11, "sb":Landroid/text/SpannableStringBuilder;
    const-string v9, "(\\#\\[face/png/f_static_)\\d{3}(.png\\]\\#)"

    .line 550
    .local v9, "regex":Ljava/lang/String;
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 551
    .local v7, "p":Ljava/util/regex/Pattern;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 552
    .local v5, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-nez v13, :cond_0

    .line 585
    return-object v11

    .line 553
    :cond_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    .line 555
    .local v12, "tempText":Ljava/lang/String;
    :try_start_0
    const-string v13, "#[face/png/f_static_"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    const-string v15, ".png]#"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 556
    .local v6, "num":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "face/gif/f"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".gif"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 561
    .local v3, "gif":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 562
    .local v4, "is":Ljava/io/InputStream;
    new-instance v13, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;

    new-instance v14, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;

    new-instance v15, Lcom/lzx/iteam/ContactsTalkDetailActivity$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/lzx/iteam/ContactsTalkDetailActivity$4;-><init>(Lcom/lzx/iteam/ContactsTalkDetailActivity;Landroid/widget/TextView;)V

    invoke-direct {v14, v4, v15}, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;-><init>(Ljava/io/InputStream;Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable$UpdateListener;)V

    invoke-direct {v13, v14}, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 567
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v15

    .line 568
    const/16 v16, 0x21

    .line 562
    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 569
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 571
    .end local v3    # "gif":Ljava/lang/String;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "num":Ljava/lang/String;
    :catch_0
    move-exception v13

    const-string v13, "#["

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    const-string v15, "]#"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 573
    .local v8, "png":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    const/4 v15, 0x0

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    aget-object v16, v16, v17

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const-string v15, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 574
    .local v10, "resID":I
    new-instance v13, Landroid/text/style/ImageSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-static {v14, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v15

    .line 575
    const/16 v16, 0x21

    .line 574
    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 578
    .end local v10    # "resID":I
    :catch_1
    move-exception v2

    .line 580
    .local v2, "e1":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private initEmotion()V
    .locals 4

    .prologue
    .line 279
    new-instance v0, Lcom/lzx/iteam/emotion/EmotionUtil;

    iget-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEtCommentEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mLlEmotionDots:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mVpEmotion:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lzx/iteam/emotion/EmotionUtil;-><init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

    .line 280
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

    invoke-virtual {v0}, Lcom/lzx/iteam/emotion/EmotionUtil;->initStaticFaces()V

    .line 281
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

    invoke-virtual {v0}, Lcom/lzx/iteam/emotion/EmotionUtil;->initViewPager()V

    .line 282
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mVpEmotion:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/lzx/iteam/emotion/EmotionUtil$PageChange;

    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/lzx/iteam/emotion/EmotionUtil$PageChange;-><init>(Lcom/lzx/iteam/emotion/EmotionUtil;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 283
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 224
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 225
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "useid"

    const-string v2, "\uff0d1"

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->myUserId:Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "contact_name_card"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->myUserName:Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "avatar"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->myUserImg:Ljava/lang/String;

    .line 228
    const v0, 0x7f0e0233

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mRlRoot:Landroid/widget/RelativeLayout;

    .line 229
    const v0, 0x7f0e0235

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mLlBack:Landroid/widget/LinearLayout;

    .line 230
    const v0, 0x7f0e0237

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mLvCommentList:Landroid/widget/ListView;

    .line 231
    const v0, 0x7f0e0238

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mLlBottomLayout:Landroid/widget/LinearLayout;

    .line 232
    const v0, 0x7f0e023a

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEtCommentEdit:Landroid/widget/EditText;

    .line 233
    const v0, 0x7f0e023b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mIvEmotiom:Landroid/widget/ImageView;

    .line 234
    const v0, 0x7f0e023c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    .line 235
    const v0, 0x7f0e023d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mVpEmotion:Landroid/support/v4/view/ViewPager;

    .line 236
    const v0, 0x7f0e023e

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mLlEmotionDots:Landroid/widget/LinearLayout;

    .line 237
    const v0, 0x7f0e0239

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTvSend:Landroid/widget/TextView;

    .line 238
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mRlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mLvCommentList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 240
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTvSend:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mLlBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mIvEmotiom:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEtCommentEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEtCommentEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 245
    invoke-virtual {p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 246
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEtCommentEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 274
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 275
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mLvCommentList:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->addHeaderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 276
    return-void
.end method

.method private setData(Lcom/lzx/iteam/bean/TalkListData;)V
    .locals 18
    .param p1, "talkListData"    # Lcom/lzx/iteam/bean/TalkListData;

    .prologue
    .line 319
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/lzx/iteam/bean/TalkListData;->thumbImage:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mThumeImage:Ljava/lang/String;

    .line 320
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/lzx/iteam/bean/TalkListData;->oriImage:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mOriImage:Ljava/lang/String;

    .line 321
    const/4 v4, 0x0

    .line 322
    .local v4, "images":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mThumeImage:Ljava/lang/String;

    invoke-static {v12}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 323
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mThumeImage:Ljava/lang/String;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 326
    :cond_0
    const/4 v5, 0x0

    .line 327
    .local v5, "oriImage":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mOriImage:Ljava/lang/String;

    invoke-static {v12}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 328
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mOriImage:Ljava/lang/String;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 329
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v12, v5

    if-lt v3, v12, :cond_2

    .line 333
    .end local v3    # "i":I
    :cond_1
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseList:Ljava/util/ArrayList;

    .line 334
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/lzx/iteam/bean/TalkListData;->comments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mCommentList:Ljava/util/ArrayList;

    .line 335
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTvUserName:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/lzx/iteam/bean/TalkListData;->uName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTvContent:Landroid/widget/TextView;

    .line 337
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/lzx/iteam/bean/TalkListData;->text:Ljava/lang/String;

    .line 336
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->handler(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    .line 338
    .local v10, "sb":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTvTime:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/lzx/iteam/bean/TalkListData;->createTime:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-static {v14, v15}, Lcom/lzx/iteam/util/DateUtil;->getChatTime(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/lzx/iteam/bean/TalkListData;->uImage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mIvUserImage:Landroid/widget/ImageView;

    sget-object v15, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v12, v13, v14, v15}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseList:Ljava/util/ArrayList;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 347
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseLayout:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 348
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 349
    new-instance v8, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 350
    .local v8, "praiseIcon":Landroid/widget/ImageView;
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020285

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 353
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    .restart local v3    # "i":I
    :goto_1
    const/4 v12, -0x1

    if-gt v3, v12, :cond_3

    .line 382
    new-instance v7, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 383
    .local v7, "praiseCount":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 384
    const v13, 0x7f0a008b

    .line 383
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 385
    const/high16 v12, 0x41600000    # 14.0f

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 386
    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v7, v12, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 388
    const-string v12, "\u70b9\u8d5e"

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 394
    .end local v3    # "i":I
    .end local v7    # "praiseCount":Landroid/widget/TextView;
    .end local v8    # "praiseIcon":Landroid/widget/ImageView;
    :goto_2
    new-instance v12, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->commentListAdapter:Lcom/lzx/iteam/adapter/DetailCommentListAdapter;

    .line 395
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->commentListAdapter:Lcom/lzx/iteam/adapter/DetailCommentListAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mCommentList:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->bindData(Ljava/util/ArrayList;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mLvCommentList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->commentListAdapter:Lcom/lzx/iteam/adapter/DetailCommentListAdapter;

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 397
    if-eqz v4, :cond_6

    array-length v12, v4

    if-lez v12, :cond_6

    .line 398
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/lzx/iteam/gridimg/MyGridView;->setVisibility(I)V

    .line 399
    new-instance v12, Lcom/lzx/iteam/adapter/EventImageAdapter;

    const-string v13, ""

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v4, v13}, Lcom/lzx/iteam/adapter/EventImageAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->imageAdapter:Lcom/lzx/iteam/adapter/EventImageAdapter;

    .line 400
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->imageAdapter:Lcom/lzx/iteam/adapter/EventImageAdapter;

    invoke-virtual {v12, v13}, Lcom/lzx/iteam/gridimg/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 405
    :goto_3
    const-string v12, "1"

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/lzx/iteam/bean/TalkListData;->isPraise:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 406
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mIvPraise:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020287

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 410
    :goto_4
    return-void

    .line 330
    .end local v10    # "sb":Landroid/text/SpannableStringBuilder;
    .restart local v3    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mOriImages:Ljava/util/ArrayList;

    aget-object v13, v5, v3

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 354
    .restart local v8    # "praiseIcon":Landroid/widget/ImageView;
    .restart local v10    # "sb":Landroid/text/SpannableStringBuilder;
    :cond_3
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 356
    .local v9, "praiseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 357
    .local v6, "praise":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 359
    const v13, 0x7f0a008a

    .line 358
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    const/high16 v12, 0x41600000    # 14.0f

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 361
    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v6, v12, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 362
    if-nez v3, :cond_4

    .line 363
    new-instance v11, Landroid/text/SpannableString;

    const-string v12, "talk_user_name"

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-direct {v11, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 364
    .local v11, "user":Landroid/text/SpannableString;
    new-instance v2, Lcom/lzx/iteam/widget/TextViewSpan;

    const-string v12, "talk_user_name"

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v12, v0, v13, v14}, Lcom/lzx/iteam/widget/TextViewSpan;-><init>(Ljava/lang/String;Landroid/content/Context;II)V

    .line 365
    .local v2, "clickableSpan1":Lcom/lzx/iteam/widget/TextViewSpan;
    invoke-virtual {v2, v9}, Lcom/lzx/iteam/widget/TextViewSpan;->setInfo(Ljava/lang/Object;)V

    .line 366
    const/4 v13, 0x0

    const-string v12, "talk_user_name"

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    .line 367
    const/16 v14, 0x21

    .line 366
    invoke-virtual {v11, v2, v13, v12, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 368
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 353
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 370
    .end local v2    # "clickableSpan1":Lcom/lzx/iteam/widget/TextViewSpan;
    .end local v11    # "user":Landroid/text/SpannableString;
    :cond_4
    new-instance v11, Landroid/text/SpannableString;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v12, "talk_user_name"

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u3001"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 371
    .restart local v11    # "user":Landroid/text/SpannableString;
    new-instance v2, Lcom/lzx/iteam/widget/TextViewSpan;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v12, "talk_user_name"

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u3001"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v12, v0, v13, v14}, Lcom/lzx/iteam/widget/TextViewSpan;-><init>(Ljava/lang/String;Landroid/content/Context;II)V

    .line 372
    .restart local v2    # "clickableSpan1":Lcom/lzx/iteam/widget/TextViewSpan;
    invoke-virtual {v2, v9}, Lcom/lzx/iteam/widget/TextViewSpan;->setInfo(Ljava/lang/Object;)V

    .line 373
    const/4 v13, 0x0

    const-string v12, "talk_user_name"

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    .line 374
    const/16 v14, 0x21

    .line 373
    invoke-virtual {v11, v2, v13, v12, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 375
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 391
    .end local v2    # "clickableSpan1":Lcom/lzx/iteam/widget/TextViewSpan;
    .end local v3    # "i":I
    .end local v6    # "praise":Landroid/widget/TextView;
    .end local v8    # "praiseIcon":Landroid/widget/ImageView;
    .end local v9    # "praiseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "user":Landroid/text/SpannableString;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseLayout:Landroid/widget/LinearLayout;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 402
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/lzx/iteam/gridimg/MyGridView;->setVisibility(I)V

    goto/16 :goto_3

    .line 408
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mIvPraise:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020286

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/16 v4, 0x8

    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 445
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 506
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 447
    :sswitch_1
    invoke-virtual {p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->finish()V

    goto :goto_0

    .line 451
    :sswitch_2
    :try_start_0
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_1
    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 456
    .local v1, "visible":Z
    :goto_2
    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 452
    .end local v1    # "visible":Z
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move v1, v3

    .line 455
    goto :goto_2

    .line 459
    :sswitch_3
    invoke-direct {p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->AddPraiseMsg()V

    goto :goto_0

    .line 462
    :sswitch_4
    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mLlBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 463
    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mLlBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 464
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 466
    :cond_3
    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEtCommentEdit:Landroid/widget/EditText;

    const-string v4, "\u8bf4\u70b9\u4ec0\u4e48\u5427"

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 467
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mReplyMap:Ljava/util/Map;

    .line 468
    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mReplyMap:Ljava/util/Map;

    const-string v4, "talk_type"

    const-string v5, "2"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mLlBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 470
    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEtCommentEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 471
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto/16 :goto_0

    .line 476
    :sswitch_5
    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 477
    .restart local v1    # "visible":Z
    :goto_3
    if-eqz v1, :cond_0

    .line 478
    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .end local v1    # "visible":Z
    :cond_4
    move v1, v3

    .line 476
    goto :goto_3

    .line 486
    :sswitch_6
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 487
    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEtCommentEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 488
    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEtCommentEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mSendMessage:Ljava/lang/String;

    .line 489
    const-string v2, "2"

    iget-object v3, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mReplyMap:Ljava/util/Map;

    const-string v4, "talk_type"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 490
    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mSendMessage:Ljava/lang/String;

    invoke-direct {p0, v2, v6}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->AddCommentMsg(Ljava/lang/String;I)V

    .line 494
    :goto_4
    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEtCommentEdit:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 492
    :cond_5
    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mSendMessage:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->AddCommentMsg(Ljava/lang/String;I)V

    goto :goto_4

    .line 496
    :cond_6
    const-string v2, "\u8bc4\u8bba\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 500
    :sswitch_7
    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mLlBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 501
    .restart local v1    # "visible":Z
    :goto_5
    if-eqz v1, :cond_0

    .line 502
    iget-object v2, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mLlBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .end local v1    # "visible":Z
    :cond_7
    move v1, v3

    .line 500
    goto :goto_5

    .line 445
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0233 -> :sswitch_7
        0x7f0e0235 -> :sswitch_1
        0x7f0e0239 -> :sswitch_6
        0x7f0e023a -> :sswitch_5
        0x7f0e023b -> :sswitch_2
        0x7f0e0613 -> :sswitch_0
        0x7f0e061a -> :sswitch_4
        0x7f0e061c -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 217
    const v0, 0x7f030052

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->setContentView(I)V

    .line 218
    invoke-direct {p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->initView()V

    .line 219
    invoke-direct {p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->initEmotion()V

    .line 220
    invoke-direct {p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getIntentData()V

    .line 221
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 511
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 521
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 514
    :pswitch_0
    :try_start_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_1
    iget-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mLlBottomLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 511
    :pswitch_data_0
    .packed-switch 0x7f0e0237
        :pswitch_0
    .end packed-switch
.end method

.method public showBottomLayout(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "replyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 633
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mLlBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 634
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 636
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mReplyMap:Ljava/util/Map;

    .line 637
    iput-object p1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mReplyMap:Ljava/util/Map;

    .line 638
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEtCommentEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 639
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEtCommentEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 640
    const-string v0, "2"

    const-string v1, "talk_type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEtCommentEdit:Landroid/widget/EditText;

    const-string v1, "\u8bf4\u70b9\u4ec0\u4e48\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 645
    :goto_0
    return-void

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity;->mEtCommentEdit:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "\u56de\u590d"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "talk_reply_name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
