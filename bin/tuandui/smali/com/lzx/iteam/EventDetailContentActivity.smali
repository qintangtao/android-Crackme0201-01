.class public Lcom/lzx/iteam/EventDetailContentActivity;
.super Landroid/app/Activity;
.source "EventDetailContentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/EventDetailContentActivity$AnimateFirstDisplayListener;,
        Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;
    }
.end annotation


# static fields
.field public static final GET_REPLY:I = 0x138a

.field public static final JOIN_ACTIVE:I = 0x138b

.field public static final SEND_REPLY:I = 0x1389

.field public static final VOTE_EVENT:I = 0x138c

.field public static index:I

.field public static instance:Lcom/lzx/iteam/EventDetailContentActivity;

.field public static mVote:Ljava/lang/String;


# instance fields
.field private animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

.field private bitmap:Landroid/graphics/Bitmap;

.field private eventData:Lcom/lzx/iteam/bean/EventListData;

.field private hasJoin:Ljava/lang/String;

.field private imageAdapter:Lcom/lzx/iteam/adapter/EventImageAdapter;

.field private isDeleteEvent:Z

.field private isQrcode:Ljava/lang/String;

.field private isTime:Z

.field private mAcps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/widget/ChartProp;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveAddress:Ljava/lang/String;

.field private mActiveDetailAdapter:Lcom/lzx/iteam/adapter/ActiveDetailAdapter;

.field private mActiveTime:Ljava/lang/String;

.field private mActivityImage:Lcom/lzx/iteam/gridimg/MyGridView;

.field private mAdapter:Lcom/lzx/iteam/adapter/EventReplyAdapter;

.field private mAnAuthor:Landroid/widget/TextView;

.field private mAnContent:Landroid/widget/TextView;

.field private mAnLayout:Landroid/view/View;

.field private mAnTitle:Landroid/widget/TextView;

.field private mAnnouncementImage:Lcom/lzx/iteam/gridimg/MyGridView;

.field private mAnnouncementLayput:Landroid/widget/RelativeLayout;

.field private mApplyCount:I

.field private mAuthor:Ljava/lang/String;

.field private mBack:Landroid/widget/LinearLayout;

.field private mBottomLayout:Landroid/widget/LinearLayout;

.field private mChartView:Lcom/lzx/iteam/widget/ChartView;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mDeadTime:J

.field private mDetailBeans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/aidl/ActiveDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Landroid/app/Dialog;

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mEmotionLayout:Landroid/widget/LinearLayout;

.field private mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

.field private mEtInput:Landroid/widget/EditText;

.field private mEventContent1:Ljava/lang/String;

.field private mEventContent2:Ljava/lang/String;

.field private mEventContent3:Ljava/lang/String;

.field private mEventDB:Lcom/lzx/iteam/provider/EventsMsgDB;

.field private mEventId:Ljava/lang/String;

.field private mEventImageLayout:Landroid/widget/RelativeLayout;

.field private mEventMemberCount:I

.field private mEventName:Ljava/lang/String;

.field private mEventPart1:Ljava/lang/String;

.field private mEventPart2:Ljava/lang/String;

.field private mEventPart3:Ljava/lang/String;

.field private mEventType:Ljava/lang/String;

.field private mGvEventImage:Lcom/lzx/iteam/gridimg/MyGridView;

.field private mGvVoteImage:Lcom/lzx/iteam/gridimg/MyGridView;

.field private mHandler:Landroid/os/Handler;

.field private mHasVoteCount:I

.field private mHiddenAction:Landroid/view/animation/TranslateAnimation;

.field private mIvActiviteImage:Landroid/widget/ImageView;

.field private mIvEmotiom:Landroid/widget/ImageView;

.field private mIvFriendShare:Landroid/widget/ImageView;

.field private mIvImage:Landroid/widget/ImageView;

.field private mIvSendImage:Landroid/widget/ImageView;

.field private mIvVoteImg:Ljava/lang/String;

.field private mIvWeixinShare:Landroid/widget/ImageView;

.field private mJok:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventRegBean;",
            ">;"
        }
    .end annotation
.end field

.field private mJokLate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventRegBean;",
            ">;"
        }
    .end annotation
.end field

.field private mJokNone:I

.field private mLlActiveList:Landroid/widget/LinearLayout;

.field private mLlCount:Landroid/widget/LinearLayout;

.field private mLlEmotionDots:Landroid/widget/LinearLayout;

.field private mLlRegList:Landroid/widget/LinearLayout;

.field private mLlRegNote:Landroid/widget/LinearLayout;

.field private mLlRegUnStart:Landroid/widget/LinearLayout;

.field private mLvActiveDetail:Lcom/lzx/iteam/widget/MyListView;

.field private mLvRegDetail:Lcom/lzx/iteam/widget/MyListView;

.field private mLvReply:Landroid/widget/ListView;

.field private mLvVoteBottom:Lcom/lzx/iteam/widget/MyListView;

.field private mLvVoteTop:Lcom/lzx/iteam/widget/MyListView;

.field private mMemberCount:I

.field private mMoreWindow:Landroid/widget/PopupWindow;

.field private mNameCard:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private mPicData:Ljava/lang/String;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mPublisherId:Ljava/lang/String;

.field private mPublisherImg:Ljava/lang/String;

.field private mPublisherName:Ljava/lang/String;

.field private mPublisherTime:Ljava/lang/String;

.field private mQrCode:Ljava/lang/String;

.field private mRegAdapter:Lcom/lzx/iteam/adapter/EventRegAdapter;

.field private mRegData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventRegBean;",
            ">;"
        }
    .end annotation
.end field

.field private mReplyContent:Ljava/lang/String;

.field private mReplyCount:Ljava/lang/String;

.field private mReplyDate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/aidl/EventReplyNewData;",
            ">;"
        }
    .end annotation
.end field

.field private mShareContent:Ljava/lang/String;

.field private mShareTitle:Ljava/lang/String;

.field private mShareUrl:Ljava/lang/String;

.field private mShareUtil:Lcom/lzx/iteam/util/ShareUtil;

.field private mShowAction:Landroid/view/animation/TranslateAnimation;

.field private mSvActiveLayout:Landroid/view/View;

.field private mSvOther:Landroid/widget/ScrollView;

.field private mSvRegLayout:Landroid/view/View;

.field private mSvVoteLayout:Landroid/view/View;

.field private mTVThemeHostName:Landroid/widget/TextView;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mThemeContent:Ljava/lang/String;

.field private mThumeImage:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTopLayput:Landroid/widget/RelativeLayout;

.field private mTvActiteApply:Landroid/widget/TextView;

.field private mTvActiveAddress:Landroid/widget/TextView;

.field private mTvActiveContent:Landroid/widget/TextView;

.field private mTvActiveTime:Landroid/widget/TextView;

.field private mTvActiveTitle:Landroid/widget/TextView;

.field private mTvContent1:Landroid/widget/TextView;

.field private mTvContent2:Landroid/widget/TextView;

.field private mTvContent3:Landroid/widget/TextView;

.field private mTvCount:Landroid/widget/TextView;

.field private mTvCountNote:Landroid/widget/TextView;

.field private mTvEventImageCount:Landroid/widget/TextView;

.field private mTvEventName:Landroid/widget/TextView;

.field private mTvMember:Landroid/widget/TextView;

.field private mTvPart1:Landroid/widget/TextView;

.field private mTvPart2:Landroid/widget/TextView;

.field private mTvPart3:Landroid/widget/TextView;

.field private mTvRegAddress:Landroid/widget/TextView;

.field private mTvRegCode:Landroid/widget/TextView;

.field private mTvRegCountDetail:Landroid/widget/TextView;

.field private mTvRegNote:Landroid/widget/TextView;

.field private mTvRegTime:Landroid/widget/TextView;

.field private mTvRegTitle:Landroid/widget/TextView;

.field private mTvReplyCount:Landroid/widget/TextView;

.field private mTvSend:Landroid/widget/TextView;

.field private mTvThemTime:Landroid/widget/TextView;

.field private mTvThemeName:Landroid/widget/TextView;

.field private mTvTime:Landroid/widget/TextView;

.field private mTvVoteApply:Landroid/widget/TextView;

.field private mTvVoteTitle:Landroid/widget/TextView;

.field private mUid:Ljava/lang/String;

.field private mUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserType:Ljava/lang/String;

.field private mVoteDetailAdapter:Lcom/lzx/iteam/adapter/VoteDetailAdapter;

.field private mVoteReplyDate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventVoteBean;",
            ">;"
        }
    .end annotation
.end field

.field private mVoteTopAdapter:Lcom/lzx/iteam/adapter/VoteTopAdapter;

.field private mVotes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVpEmotion:Landroid/support/v4/view/ViewPager;

.field private mWebView:Landroid/webkit/WebView;

.field public newMessageImpl:Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, -0x1

    sput v0, Lcom/lzx/iteam/EventDetailContentActivity;->index:I

    .line 253
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mOriImages:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mNameCard:Ljava/util/ArrayList;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->isDeleteEvent:Z

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->isTime:Z

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mAcps:Ljava/util/ArrayList;

    .line 224
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mPicData:Ljava/lang/String;

    .line 226
    new-instance v0, Lcom/lzx/iteam/EventDetailContentActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/EventDetailContentActivity$1;-><init>(Lcom/lzx/iteam/EventDetailContentActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTextWatcher:Landroid/text/TextWatcher;

    .line 255
    new-instance v0, Lcom/lzx/iteam/EventDetailContentActivity$2;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/EventDetailContentActivity$2;-><init>(Lcom/lzx/iteam/EventDetailContentActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEtInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/EventDetailContentActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mReplyContent:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10(Lcom/lzx/iteam/EventDetailContentActivity;Lcom/lzx/iteam/adapter/EventReplyAdapter;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mAdapter:Lcom/lzx/iteam/adapter/EventReplyAdapter;

    return-void
.end method

.method static synthetic access$11(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$12(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lzx/iteam/EventDetailContentActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mReplyDate:Ljava/util/List;

    return-void
.end method

.method static synthetic access$14(Lcom/lzx/iteam/EventDetailContentActivity;I)V
    .locals 0

    .prologue
    .line 170
    iput p1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mMemberCount:I

    return-void
.end method

.method static synthetic access$15(Lcom/lzx/iteam/EventDetailContentActivity;I)V
    .locals 0

    .prologue
    .line 172
    iput p1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mApplyCount:I

    return-void
.end method

.method static synthetic access$16(Lcom/lzx/iteam/EventDetailContentActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mDetailBeans:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$17(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mDetailBeans:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$18(Lcom/lzx/iteam/EventDetailContentActivity;Lcom/lzx/iteam/adapter/ActiveDetailAdapter;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mActiveDetailAdapter:Lcom/lzx/iteam/adapter/ActiveDetailAdapter;

    return-void
.end method

.method static synthetic access$19(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/widget/MyListView;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLvActiveDetail:Lcom/lzx/iteam/widget/MyListView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mReplyContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/adapter/ActiveDetailAdapter;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mActiveDetailAdapter:Lcom/lzx/iteam/adapter/ActiveDetailAdapter;

    return-object v0
.end method

.method static synthetic access$21(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$22(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLlActiveList:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$23(Lcom/lzx/iteam/EventDetailContentActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mVoteReplyDate:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$24(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mVoteReplyDate:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$25(Lcom/lzx/iteam/EventDetailContentActivity;)I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mHasVoteCount:I

    return v0
.end method

.method static synthetic access$26(Lcom/lzx/iteam/EventDetailContentActivity;I)V
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mHasVoteCount:I

    return-void
.end method

.method static synthetic access$27(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mVotes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$28(Lcom/lzx/iteam/EventDetailContentActivity;Lcom/lzx/iteam/adapter/VoteDetailAdapter;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mVoteDetailAdapter:Lcom/lzx/iteam/adapter/VoteDetailAdapter;

    return-void
.end method

.method static synthetic access$29(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/widget/MyListView;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLvVoteBottom:Lcom/lzx/iteam/widget/MyListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvSend:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$30(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/adapter/VoteDetailAdapter;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mVoteDetailAdapter:Lcom/lzx/iteam/adapter/VoteDetailAdapter;

    return-object v0
.end method

.method static synthetic access$31(Lcom/lzx/iteam/EventDetailContentActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mJok:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$32(Lcom/lzx/iteam/EventDetailContentActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mJokLate:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$33(Lcom/lzx/iteam/EventDetailContentActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mRegData:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$34(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mJok:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$35(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mJokLate:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$36(Lcom/lzx/iteam/EventDetailContentActivity;I)V
    .locals 0

    .prologue
    .line 205
    iput p1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mJokNone:I

    return-void
.end method

.method static synthetic access$37(Lcom/lzx/iteam/EventDetailContentActivity;)I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mJokNone:I

    return v0
.end method

.method static synthetic access$38(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvRegCountDetail:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$39(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mRegData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method static synthetic access$40(Lcom/lzx/iteam/EventDetailContentActivity;Lcom/lzx/iteam/adapter/EventRegAdapter;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mRegAdapter:Lcom/lzx/iteam/adapter/EventRegAdapter;

    return-void
.end method

.method static synthetic access$41(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/widget/MyListView;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLvRegDetail:Lcom/lzx/iteam/widget/MyListView;

    return-object v0
.end method

.method static synthetic access$42(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/adapter/EventRegAdapter;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mRegAdapter:Lcom/lzx/iteam/adapter/EventRegAdapter;

    return-object v0
.end method

.method static synthetic access$43(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLlRegList:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$44(Lcom/lzx/iteam/EventDetailContentActivity;Z)V
    .locals 0

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->isDeleteEvent:Z

    return-void
.end method

.method static synthetic access$45(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/util/AllDialogUtil;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    return-object v0
.end method

.method static synthetic access$46(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->hasJoin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$47(Lcom/lzx/iteam/EventDetailContentActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->hasJoin:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$48(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mIvActiviteImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$49(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvActiteApply:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$50(Lcom/lzx/iteam/EventDetailContentActivity;)I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mApplyCount:I

    return v0
.end method

.method static synthetic access$51(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$52(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mNameCard:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$53(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/widget/MyListView;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLvVoteTop:Lcom/lzx/iteam/widget/MyListView;

    return-object v0
.end method

.method static synthetic access$54(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLlCount:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$55(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/adapter/VoteTopAdapter;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mVoteTopAdapter:Lcom/lzx/iteam/adapter/VoteTopAdapter;

    return-object v0
.end method

.method static synthetic access$56(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvVoteApply:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$57(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mOriImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$58(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mThumeImage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$59(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventContent1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mReplyDate:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$60(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvContent1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$61(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$62(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/util/ShareUtil;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mShareUtil:Lcom/lzx/iteam/util/ShareUtil;

    return-object v0
.end method

.method static synthetic access$63(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/bean/EventListData;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->eventData:Lcom/lzx/iteam/bean/EventListData;

    return-object v0
.end method

.method static synthetic access$64(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$65(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mShareContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$66(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/provider/EventsMsgDB;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvReplyCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/adapter/EventReplyAdapter;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mAdapter:Lcom/lzx/iteam/adapter/EventReplyAdapter;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLvReply:Landroid/widget/ListView;

    return-object v0
.end method

.method private initEmotion()V
    .locals 4

    .prologue
    .line 566
    new-instance v0, Lcom/lzx/iteam/emotion/EmotionUtil;

    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEtInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLlEmotionDots:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mVpEmotion:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lzx/iteam/emotion/EmotionUtil;-><init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

    .line 567
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

    invoke-virtual {v0}, Lcom/lzx/iteam/emotion/EmotionUtil;->initStaticFaces()V

    .line 568
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

    invoke-virtual {v0}, Lcom/lzx/iteam/emotion/EmotionUtil;->initViewPager()V

    .line 569
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mVpEmotion:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/lzx/iteam/emotion/EmotionUtil$PageChange;

    iget-object v2, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/lzx/iteam/emotion/EmotionUtil$PageChange;-><init>(Lcom/lzx/iteam/emotion/EmotionUtil;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 570
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 648
    const v1, 0x7f0e003d

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvEventName:Landroid/widget/TextView;

    .line 649
    const v1, 0x7f0e003e

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvTime:Landroid/widget/TextView;

    .line 650
    const v1, 0x7f0e0040

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvCount:Landroid/widget/TextView;

    .line 651
    const v1, 0x7f0e0041

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvCountNote:Landroid/widget/TextView;

    .line 652
    const v1, 0x7f0e003f

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLlCount:Landroid/widget/LinearLayout;

    .line 653
    const v1, 0x7f0e003c

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mIvImage:Landroid/widget/ImageView;

    .line 654
    const v1, 0x7f0e036d

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mSvOther:Landroid/widget/ScrollView;

    .line 656
    const v1, 0x7f0e0369

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mIvEmotiom:Landroid/widget/ImageView;

    .line 657
    const v1, 0x7f0e036a

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    .line 658
    const v1, 0x7f0e036b

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mVpEmotion:Landroid/support/v4/view/ViewPager;

    .line 659
    const v1, 0x7f0e036c

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLlEmotionDots:Landroid/widget/LinearLayout;

    .line 660
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mIvEmotiom:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    const v1, 0x7f0e0362

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mBack:Landroid/widget/LinearLayout;

    .line 663
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mBack:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    const v1, 0x7f0e0363

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvMember:Landroid/widget/TextView;

    .line 665
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvMember:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    const v1, 0x7f0e0368

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEtInput:Landroid/widget/EditText;

    .line 667
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEtInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 668
    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 669
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEtInput:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEtInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 671
    const v1, 0x7f0e0367

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvSend:Landroid/widget/TextView;

    .line 672
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvSend:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 673
    const v1, 0x7f0e0365

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLvReply:Landroid/widget/ListView;

    .line 674
    const v1, 0x7f0e0366

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 675
    const v1, 0x7f0e0361

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTopLayput:Landroid/widget/RelativeLayout;

    .line 677
    const v1, 0x7f0e0364

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mWebView:Landroid/webkit/WebView;

    .line 679
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 680
    .local v0, "ws":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 681
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/lzx/iteam/EventDetailContentActivity$3;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/EventDetailContentActivity$3;-><init>(Lcom/lzx/iteam/EventDetailContentActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 692
    const v1, 0x7f0e035b

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mAnnouncementLayput:Landroid/widget/RelativeLayout;

    .line 693
    const v1, 0x7f0e036f

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mAnLayout:Landroid/view/View;

    .line 694
    const v1, 0x7f0e035c

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mAnTitle:Landroid/widget/TextView;

    .line 695
    const v1, 0x7f0e035d

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mAnContent:Landroid/widget/TextView;

    .line 696
    const v1, 0x7f0e035e

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mAnAuthor:Landroid/widget/TextView;

    .line 698
    const v1, 0x7f0e035f

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/gridimg/MyGridView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mAnnouncementImage:Lcom/lzx/iteam/gridimg/MyGridView;

    .line 711
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mAnnouncementImage:Lcom/lzx/iteam/gridimg/MyGridView;

    new-instance v2, Lcom/lzx/iteam/EventDetailContentActivity$4;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/EventDetailContentActivity$4;-><init>(Lcom/lzx/iteam/EventDetailContentActivity;)V

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/gridimg/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 726
    const v1, 0x7f0e0370

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mSvActiveLayout:Landroid/view/View;

    .line 727
    const v1, 0x7f0e007d

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvActiveTitle:Landroid/widget/TextView;

    .line 728
    const v1, 0x7f0e0351

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvActiveTime:Landroid/widget/TextView;

    .line 729
    const v1, 0x7f0e0352

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvActiveAddress:Landroid/widget/TextView;

    .line 730
    const v1, 0x7f0e0353

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvActiveContent:Landroid/widget/TextView;

    .line 731
    const v1, 0x7f0e0355

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvActiteApply:Landroid/widget/TextView;

    .line 732
    const v1, 0x7f0e0350

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mIvActiviteImage:Landroid/widget/ImageView;

    .line 733
    const v1, 0x7f0e0358

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLlActiveList:Landroid/widget/LinearLayout;

    .line 734
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvActiteApply:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    const v1, 0x7f0e0354

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/gridimg/MyGridView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mActivityImage:Lcom/lzx/iteam/gridimg/MyGridView;

    .line 736
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mActivityImage:Lcom/lzx/iteam/gridimg/MyGridView;

    new-instance v2, Lcom/lzx/iteam/EventDetailContentActivity$5;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/EventDetailContentActivity$5;-><init>(Lcom/lzx/iteam/EventDetailContentActivity;)V

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/gridimg/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 750
    const v1, 0x7f0e0371

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mSvVoteLayout:Landroid/view/View;

    .line 751
    const v1, 0x7f0e03c3

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvVoteTitle:Landroid/widget/TextView;

    .line 752
    const v1, 0x7f0e03c4

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/MyListView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLvVoteTop:Lcom/lzx/iteam/widget/MyListView;

    .line 753
    const v1, 0x7f0e03c7

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/gridimg/MyGridView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mGvVoteImage:Lcom/lzx/iteam/gridimg/MyGridView;

    .line 754
    const v1, 0x7f0e03c6

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvVoteApply:Landroid/widget/TextView;

    .line 755
    const v1, 0x7f0e03c5

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/MyListView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLvVoteBottom:Lcom/lzx/iteam/widget/MyListView;

    .line 756
    const v1, 0x7f0e035a

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/MyListView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLvActiveDetail:Lcom/lzx/iteam/widget/MyListView;

    .line 757
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mGvVoteImage:Lcom/lzx/iteam/gridimg/MyGridView;

    new-instance v2, Lcom/lzx/iteam/EventDetailContentActivity$6;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/EventDetailContentActivity$6;-><init>(Lcom/lzx/iteam/EventDetailContentActivity;)V

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/gridimg/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 769
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLvVoteTop:Lcom/lzx/iteam/widget/MyListView;

    new-instance v2, Lcom/lzx/iteam/EventDetailContentActivity$7;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/EventDetailContentActivity$7;-><init>(Lcom/lzx/iteam/EventDetailContentActivity;)V

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/widget/MyListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 782
    const v1, 0x7f0e0372

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mSvRegLayout:Landroid/view/View;

    .line 783
    const v1, 0x7f0e03b1

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvRegTitle:Landroid/widget/TextView;

    .line 784
    const v1, 0x7f0e03b2

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvRegTime:Landroid/widget/TextView;

    .line 785
    const v1, 0x7f0e03b3

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvRegAddress:Landroid/widget/TextView;

    .line 786
    const v1, 0x7f0e03b5

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvRegNote:Landroid/widget/TextView;

    .line 787
    const v1, 0x7f0e03b6

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvRegCode:Landroid/widget/TextView;

    .line 788
    const v1, 0x7f0e03b9

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvRegCountDetail:Landroid/widget/TextView;

    .line 789
    const v1, 0x7f0e03ba

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/MyListView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLvRegDetail:Lcom/lzx/iteam/widget/MyListView;

    .line 790
    const v1, 0x7f0e03b4

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLlRegNote:Landroid/widget/LinearLayout;

    .line 791
    const v1, 0x7f0e03b8

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLlRegList:Landroid/widget/LinearLayout;

    .line 792
    const v1, 0x7f0e03b7

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLlRegUnStart:Landroid/widget/LinearLayout;

    .line 793
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvRegCode:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    return-void
.end method

.method private showWarningDialog()V
    .locals 5

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    const-string v1, ""

    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080185

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u786e\u5b9a"

    const-string v4, "\u53d6\u6d88"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 1547
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    new-instance v1, Lcom/lzx/iteam/EventDetailContentActivity$18;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/EventDetailContentActivity$18;-><init>(Lcom/lzx/iteam/EventDetailContentActivity;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 1563
    return-void
.end method


# virtual methods
.method public getData()V
    .locals 5

    .prologue
    .line 964
    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 965
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "event_msg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/EventListData;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->eventData:Lcom/lzx/iteam/bean/EventListData;

    .line 966
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->eventData:Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;

    .line 967
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->eventData:Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getEventType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventType:Ljava/lang/String;

    .line 968
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLvReply:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->getHeadView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 969
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->eventData:Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->setData(Lcom/lzx/iteam/bean/EventListData;)V

    .line 970
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mIvSendImage:Landroid/widget/ImageView;

    new-instance v2, Lcom/lzx/iteam/EventDetailContentActivity$13;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/EventDetailContentActivity$13;-><init>(Lcom/lzx/iteam/EventDetailContentActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 982
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mIvImage:Landroid/widget/ImageView;

    new-instance v2, Lcom/lzx/iteam/EventDetailContentActivity$14;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/EventDetailContentActivity$14;-><init>(Lcom/lzx/iteam/EventDetailContentActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 995
    const-string v1, "event_data"

    iget-object v2, p0, Lcom/lzx/iteam/EventDetailContentActivity;->eventData:Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/EventListData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const v1, 0x7f0e05fe

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mIvWeixinShare:Landroid/widget/ImageView;

    .line 998
    const v1, 0x7f0e05fd

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mIvFriendShare:Landroid/widget/ImageView;

    .line 999
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventType:Ljava/lang/String;

    const-string v2, "7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1000
    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->getReply()V

    .line 1001
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventContent1:Ljava/lang/String;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mShareContent:Ljava/lang/String;

    .line 1011
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mIvWeixinShare:Landroid/widget/ImageView;

    new-instance v2, Lcom/lzx/iteam/EventDetailContentActivity$15;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/EventDetailContentActivity$15;-><init>(Lcom/lzx/iteam/EventDetailContentActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1017
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mIvFriendShare:Landroid/widget/ImageView;

    new-instance v2, Lcom/lzx/iteam/EventDetailContentActivity$16;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/EventDetailContentActivity$16;-><init>(Lcom/lzx/iteam/EventDetailContentActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1026
    return-void

    .line 1002
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventType:Ljava/lang/String;

    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1003
    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->getReply()V

    .line 1004
    const-string v1, "\u6295\u7968\u7ed3\u679c"

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mShareContent:Ljava/lang/String;

    goto :goto_0

    .line 1005
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventType:Ljava/lang/String;

    const-string v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1006
    new-instance v1, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mDeadTime:J

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/DateUtil;->getDetailDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mActiveAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mShareContent:Ljava/lang/String;

    goto :goto_0

    .line 1008
    :cond_2
    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->getDataReply()V

    .line 1009
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventContent1:Ljava/lang/String;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mShareContent:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDataReply()V
    .locals 2

    .prologue
    .line 1415
    new-instance v0, Lcom/lzx/iteam/EventDetailContentActivity$17;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/EventDetailContentActivity$17;-><init>(Lcom/lzx/iteam/EventDetailContentActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 1436
    invoke-virtual {v0, v1}, Lcom/lzx/iteam/EventDetailContentActivity$17;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1437
    return-void
.end method

.method public getHeadView()Landroid/view/View;
    .locals 4

    .prologue
    .line 1029
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030078

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1030
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e0377

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvThemeName:Landroid/widget/TextView;

    .line 1031
    const v1, 0x7f0e0375

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTVThemeHostName:Landroid/widget/TextView;

    .line 1032
    const v1, 0x7f0e0376

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvThemTime:Landroid/widget/TextView;

    .line 1033
    const v1, 0x7f0e0382

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvReplyCount:Landroid/widget/TextView;

    .line 1034
    const v1, 0x7f0e0378

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvPart1:Landroid/widget/TextView;

    .line 1035
    const v1, 0x7f0e0379

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvContent1:Landroid/widget/TextView;

    .line 1036
    const v1, 0x7f0e037a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvPart2:Landroid/widget/TextView;

    .line 1037
    const v1, 0x7f0e037b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvContent2:Landroid/widget/TextView;

    .line 1038
    const v1, 0x7f0e037c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvPart3:Landroid/widget/TextView;

    .line 1039
    const v1, 0x7f0e037d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvContent3:Landroid/widget/TextView;

    .line 1040
    const v1, 0x7f0e0374

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mIvSendImage:Landroid/widget/ImageView;

    .line 1041
    const v1, 0x7f0e037e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventImageLayout:Landroid/widget/RelativeLayout;

    .line 1042
    const v1, 0x7f0e037f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/gridimg/MyGridView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mGvEventImage:Lcom/lzx/iteam/gridimg/MyGridView;

    .line 1043
    const v1, 0x7f0e0380

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvEventImageCount:Landroid/widget/TextView;

    .line 1055
    return-object v0
.end method

.method public getReply()V
    .locals 7

    .prologue
    const/16 v4, 0x138a

    .line 1363
    const/4 v0, 0x0

    .line 1364
    .local v0, "message":Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1365
    .local v6, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sid"

    .line 1366
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1367
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "event_id"

    iget-object v3, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1368
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "event_type"

    iget-object v3, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventType:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1369
    const-string v1, "8"

    iget-object v2, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1370
    new-instance v0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;

    .end local v0    # "message":Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    iget-object v3, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventType:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mVotes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;-><init>(Landroid/os/Message;Lcom/lzx/iteam/provider/EventsMsgDB;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1378
    .restart local v0    # "message":Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;
    :goto_0
    const-string v1, "/api/event/get_comments"

    iput-object v1, v0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mApi:Ljava/lang/String;

    .line 1379
    iput-object v6, v0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;->mParams:Ljava/util/List;

    .line 1380
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 1382
    return-void

    .line 1372
    :cond_0
    const-string v1, "9"

    iget-object v2, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->isTime:Z

    if-nez v1, :cond_1

    .line 1373
    new-instance v0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;

    .end local v0    # "message":Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    iget-object v3, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;-><init>(Landroid/os/Message;Lcom/lzx/iteam/provider/EventsMsgDB;Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    .restart local v0    # "message":Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;
    goto :goto_0

    .line 1375
    :cond_1
    new-instance v0, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;

    .end local v0    # "message":Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    iget-object v3, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;-><init>(Landroid/os/Message;Lcom/lzx/iteam/provider/EventsMsgDB;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "message":Lcom/lzx/iteam/net/MyMessage$GetReplyMessage;
    goto :goto_0
.end method

.method public initPropery()V
    .locals 3

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mReplyDate:Ljava/util/List;

    .line 586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mVoteReplyDate:Ljava/util/ArrayList;

    .line 587
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->waitDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mDialog:Landroid/app/Dialog;

    .line 599
    new-instance v0, Lcom/lzx/iteam/EventDetailContentActivity$AnimateFirstDisplayListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity$AnimateFirstDisplayListener;-><init>(Lcom/lzx/iteam/EventDetailContentActivity;Lcom/lzx/iteam/EventDetailContentActivity$AnimateFirstDisplayListener;)V

    iput-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .line 600
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 601
    new-instance v0, Lcom/lzx/iteam/provider/EventsMsgDB;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/provider/EventsMsgDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    .line 602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mUrls:Ljava/util/ArrayList;

    .line 603
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 604
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "useid"

    const-string v2, "\uff0d1"

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mUid:Ljava/lang/String;

    .line 605
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "contact_name_card"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mNameCard:Ljava/util/ArrayList;

    .line 606
    return-void
.end method

.method public isListViewReachBottomEdge(Landroid/widget/ListView;)Z
    .locals 4
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 1690
    const/4 v1, 0x0

    .line 1691
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ne v2, v3, :cond_0

    .line 1692
    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1693
    .local v0, "bottomChildView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-lt v2, v3, :cond_1

    const/4 v1, 0x1

    .line 1695
    .end local v0    # "bottomChildView":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 1693
    .restart local v0    # "bottomChildView":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1609
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1610
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v7, 0x7f0202c5

    const/16 v4, 0x8

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1458
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1530
    :cond_0
    :goto_0
    return-void

    .line 1460
    :sswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->finish()V

    goto :goto_0

    .line 1463
    :sswitch_1
    iget-boolean v3, p0, Lcom/lzx/iteam/EventDetailContentActivity;->isDeleteEvent:Z

    if-eqz v3, :cond_1

    .line 1464
    const-string v3, "\u5bf9\u4e0d\u8d77\uff0c\u8be5\u4e8b\u4ef6\u5df2\u88ab\u5220\u9664"

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1466
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/EventReceiveMemberActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1467
    .local v1, "member":Landroid/content/Intent;
    const-string v3, "event_id"

    iget-object v4, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1468
    const-string v3, "0"

    iget-object v4, p0, Lcom/lzx/iteam/EventDetailContentActivity;->isQrcode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1469
    const-string v3, "event_type"

    const-string v4, "9.5"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1473
    :goto_1
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1471
    :cond_2
    const-string v3, "event_type"

    iget-object v4, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1477
    .end local v1    # "member":Landroid/content/Intent;
    :sswitch_2
    iget-boolean v3, p0, Lcom/lzx/iteam/EventDetailContentActivity;->isDeleteEvent:Z

    if-eqz v3, :cond_3

    .line 1478
    const-string v3, "\u5bf9\u4e0d\u8d77\uff0c\u8be5\u4e8b\u4ef6\u5df2\u88ab\u5220\u9664"

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1480
    :cond_3
    iget-object v3, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mReplyContent:Ljava/lang/String;

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1481
    const-string v3, "\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1483
    :cond_4
    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->sendReply()V

    .line 1484
    iget-object v3, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 1489
    :sswitch_3
    iget-object v3, p0, Lcom/lzx/iteam/EventDetailContentActivity;->hasJoin:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1490
    invoke-direct {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->showWarningDialog()V

    goto :goto_0

    .line 1492
    :cond_5
    const-string v3, "1"

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/EventDetailContentActivity;->toApplyActivite(Ljava/lang/String;)V

    .line 1493
    iget-object v3, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 1497
    :sswitch_4
    sget v3, Lcom/lzx/iteam/EventDetailContentActivity;->index:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 1498
    const-string v3, "\u8bf7\u9009\u62e9\u4e00\u9879"

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1500
    :cond_6
    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->toVote()V

    .line 1501
    iget-object v3, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 1505
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/RegCodeActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1506
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "code_image"

    iget-object v4, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mQrCode:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1507
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EventDetailContentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1510
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_6
    iget-object v3, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7

    .line 1511
    .local v2, "visible":Z
    :goto_2
    if-eqz v2, :cond_8

    .line 1512
    iget-object v3, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mIvEmotiom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1513
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/EventDetailContentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 1519
    :goto_3
    iget-object v6, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_9

    move v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .end local v2    # "visible":Z
    :cond_7
    move v2, v5

    .line 1510
    goto :goto_2

    .line 1516
    .restart local v2    # "visible":Z
    :cond_8
    iget-object v3, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mIvEmotiom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0202c8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1517
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/EventDetailContentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v3, v6, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_3

    :cond_9
    move v3, v5

    .line 1519
    goto :goto_4

    .line 1523
    .end local v2    # "visible":Z
    :sswitch_7
    iget-object v3, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_a

    .line 1524
    .restart local v2    # "visible":Z
    :goto_5
    iget-object v3, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mIvEmotiom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1525
    if-eqz v2, :cond_0

    .line 1526
    iget-object v3, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .end local v2    # "visible":Z
    :cond_a
    move v2, v5

    .line 1523
    goto :goto_5

    .line 1458
    :sswitch_data_0
    .sparse-switch
        0x7f0e0355 -> :sswitch_3
        0x7f0e0362 -> :sswitch_0
        0x7f0e0363 -> :sswitch_1
        0x7f0e0367 -> :sswitch_2
        0x7f0e0368 -> :sswitch_7
        0x7f0e0369 -> :sswitch_6
        0x7f0e03b6 -> :sswitch_5
        0x7f0e03c6 -> :sswitch_4
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1659
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1661
    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1662
    const/4 v1, 0x2

    .line 1661
    if-ne v0, v1, :cond_1

    .line 1664
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTopLayput:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1681
    :cond_0
    :goto_0
    return-void

    .line 1666
    :cond_1
    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1667
    const/4 v1, 0x1

    .line 1666
    if-ne v0, v1, :cond_0

    .line 1669
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTopLayput:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 532
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 533
    const v3, 0x7f030077

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/EventDetailContentActivity;->setContentView(I)V

    .line 534
    sput-object p0, Lcom/lzx/iteam/EventDetailContentActivity;->instance:Lcom/lzx/iteam/EventDetailContentActivity;

    .line 535
    new-instance v3, Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;-><init>(Lcom/lzx/iteam/EventDetailContentActivity;)V

    iput-object v3, p0, Lcom/lzx/iteam/EventDetailContentActivity;->newMessageImpl:Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;

    .line 537
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v2

    .line 538
    .local v2, "localLogin":Lcom/lzx/iteam/net/LocalLogin;
    invoke-virtual {v2}, Lcom/lzx/iteam/net/LocalLogin;->isLogedin()Z

    move-result v3

    if-nez v3, :cond_0

    .line 539
    invoke-virtual {v2, p0}, Lcom/lzx/iteam/net/LocalLogin;->login(Landroid/content/Context;)Z

    .line 540
    invoke-virtual {v2}, Lcom/lzx/iteam/net/LocalLogin;->isLogedin()Z

    move-result v3

    if-nez v3, :cond_0

    .line 541
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/LoginActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 542
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->startActivity(Landroid/content/Intent;)V

    .line 543
    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->finish()V

    .line 563
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 548
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 549
    const-string v3, "Service"

    const-string v4, "EventDetailContentActivity---addNewMessageInterface"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/EventDetailContentActivity;->newMessageImpl:Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;

    invoke-interface {v3, v4}, Lcom/lzx/iteam/service/aidl/INetService;->addNewMessageInterface(Lcom/lzx/iteam/service/aidl/NewMessageInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/lzx/iteam/util/ShareUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/ShareUtil;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mShareUtil:Lcom/lzx/iteam/util/ShareUtil;

    .line 558
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 559
    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->initPropery()V

    .line 560
    invoke-direct {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->initView()V

    .line 561
    invoke-direct {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->initEmotion()V

    .line 562
    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->getData()V

    goto :goto_0

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 1640
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1642
    :try_start_0
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1643
    const-string v1, "Service"

    const-string v2, "EventDetailContentActivity---removeNewMessageInterface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/EventDetailContentActivity;->newMessageImpl:Lcom/lzx/iteam/EventDetailContentActivity$NewMessageResultImpl;

    invoke-interface {v1, v2}, Lcom/lzx/iteam/service/aidl/INetService;->removeNewMessageInterface(Lcom/lzx/iteam/service/aidl/NewMessageInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1650
    :cond_0
    :goto_0
    return-void

    .line 1646
    :catch_0
    move-exception v0

    .line 1647
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1614
    packed-switch p1, :pswitch_data_0

    .line 1627
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 1616
    :pswitch_0
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1618
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mIvEmotiom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1619
    const/4 v0, 0x1

    goto :goto_1

    .line 1621
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1622
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 1624
    :cond_1
    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->finish()V

    goto :goto_0

    .line 1614
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1534
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1542
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1536
    :pswitch_1
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventContent1:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/lzx/iteam/EventDetailContentActivity;->showCopyPop(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 1539
    :pswitch_2
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/lzx/iteam/EventDetailContentActivity;->showCopyPop(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 1534
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0377
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1632
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1633
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1636
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 574
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 576
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/provider/EventsMsgDB;->updateAllMsgReaded(Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/provider/CloudDBOperation;->updateEventUnReadCount(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->eventData:Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getHasRead()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->updateEventNotNew(Ljava/lang/String;)V

    .line 581
    :cond_0
    return-void
.end method

.method public sendReply()V
    .locals 5

    .prologue
    .line 1443
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1444
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 1445
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1446
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event_id"

    iget-object v4, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1447
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "content"

    iget-object v4, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mReplyContent:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1449
    new-instance v0, Lcom/lzx/iteam/net/MyMessage$SendReplyMessage;

    iget-object v2, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1389

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/lzx/iteam/net/MyMessage$SendReplyMessage;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 1450
    .local v0, "message":Lcom/lzx/iteam/net/MyMessage$SendReplyMessage;
    const-string v2, "/api/event/add_comment"

    iput-object v2, v0, Lcom/lzx/iteam/net/MyMessage$SendReplyMessage;->mApi:Ljava/lang/String;

    .line 1451
    iput-object v1, v0, Lcom/lzx/iteam/net/MyMessage$SendReplyMessage;->mParams:Ljava/util/List;

    .line 1452
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 1453
    return-void
.end method

.method public setData(Lcom/lzx/iteam/bean/EventListData;)V
    .locals 20
    .param p1, "event"    # Lcom/lzx/iteam/bean/EventListData;

    .prologue
    .line 1060
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getEventName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventName:Ljava/lang/String;

    .line 1061
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTitle:Ljava/lang/String;

    .line 1062
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getUserId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mPublisherId:Ljava/lang/String;

    .line 1063
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getEventAvatar()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mPublisherImg:Ljava/lang/String;

    .line 1064
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getUserName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mPublisherName:Ljava/lang/String;

    .line 1065
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mPublisherTime:Ljava/lang/String;

    .line 1066
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getReplyCount()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mReplyCount:Ljava/lang/String;

    .line 1067
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle1()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventPart1:Ljava/lang/String;

    .line 1068
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getContent1()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventContent1:Ljava/lang/String;

    .line 1069
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle2()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventPart2:Ljava/lang/String;

    .line 1070
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getContent2()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventContent2:Ljava/lang/String;

    .line 1071
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle3()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventPart3:Ljava/lang/String;

    .line 1072
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getContent3()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventContent3:Ljava/lang/String;

    .line 1073
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getAuthor()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mAuthor:Ljava/lang/String;

    .line 1074
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getThumbImage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mThumeImage:Ljava/lang/String;

    .line 1075
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getOriImage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mOriImage:Ljava/lang/String;

    .line 1076
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getVotes()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lzx/iteam/EventDetailContentActivity;->mVote:Ljava/lang/String;

    .line 1077
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getIsQrcode()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->isQrcode:Ljava/lang/String;

    .line 1078
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getQrcode()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mQrCode:Ljava/lang/String;

    .line 1079
    const/4 v4, 0x0

    .line 1080
    .local v4, "images":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mThumeImage:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mThumeImage:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1084
    :cond_0
    const/4 v13, 0x0

    .line 1085
    .local v13, "oriImage":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mOriImage:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mOriImage:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1087
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v2, v13

    if-lt v12, v2, :cond_7

    .line 1092
    .end local v12    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mPublisherName:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvEventName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mPublisherName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mPublisherTime:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1096
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mPublisherTime:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1097
    .local v10, "date":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvTime:Landroid/widget/TextView;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v10

    invoke-static {v6, v7}, Lcom/lzx/iteam/util/DateUtil;->getDetailDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    .end local v10    # "date":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mPublisherImg:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1100
    sget-object v2, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mPublisherImg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mIvImage:Landroid/widget/ImageView;

    sget-object v6, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v3, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 1103
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventType:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mAnLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mSvVoteLayout:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTitle:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mAnTitle:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventContent1:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mAnContent:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "      "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventContent1:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mAuthor:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mAnAuthor:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mAnAuthor:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mAuthor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    :goto_1
    if-eqz v4, :cond_9

    array-length v2, v4

    if-lez v2, :cond_9

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mAnnouncementImage:Lcom/lzx/iteam/gridimg/MyGridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/gridimg/MyGridView;->setVisibility(I)V

    .line 1131
    new-instance v2, Lcom/lzx/iteam/adapter/EventImageAdapter;

    const-string v3, ""

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/lzx/iteam/adapter/EventImageAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->imageAdapter:Lcom/lzx/iteam/adapter/EventImageAdapter;

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mAnnouncementImage:Lcom/lzx/iteam/gridimg/MyGridView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->imageAdapter:Lcom/lzx/iteam/adapter/EventImageAdapter;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/gridimg/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1357
    :goto_2
    return-void

    .line 1088
    .restart local v12    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mOriImages:Ljava/util/ArrayList;

    aget-object v3, v13, v12

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1087
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1126
    .end local v12    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mAnAuthor:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1134
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mAnnouncementImage:Lcom/lzx/iteam/gridimg/MyGridView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/gridimg/MyGridView;->setVisibility(I)V

    goto :goto_2

    .line 1138
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventType:Ljava/lang/String;

    const-string v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mSvActiveLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mSvVoteLayout:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mSvOther:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    const/16 v5, 0x14

    invoke-virtual {v2, v3, v5}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1146
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getActivityTime()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mActiveTime:Ljava/lang/String;

    .line 1147
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getActivitySite()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mActiveAddress:Ljava/lang/String;

    .line 1148
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getMemberCount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mMemberCount:I

    .line 1149
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getJoinCount()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    .line 1150
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mApplyCount:I

    .line 1154
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getHasJoin()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->hasJoin:Ljava/lang/String;

    .line 1156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTitle:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvActiveTitle:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1160
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mActiveTime:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mActiveTime:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mDeadTime:J

    .line 1162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mActiveTime:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_c

    .line 1163
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mDeadTime:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mDeadTime:J

    .line 1165
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvActiveTime:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mDeadTime:J

    invoke-static {v6, v7}, Lcom/lzx/iteam/util/DateUtil;->getDetailDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1169
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mActiveAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvActiveAddress:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mActiveAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventContent1:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvActiveContent:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventContent1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1175
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1177
    .local v8, "curTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->hasJoin:Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 1178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->hasJoin:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mIvActiviteImage:Landroid/widget/ImageView;

    const v3, 0x7f0200fd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvActiteApply:Landroid/widget/TextView;

    const-string v3, "\u53d6\u6d88\u62a5\u540d"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mLlCount:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1197
    :goto_4
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mDeadTime:J

    cmp-long v2, v8, v2

    if-lez v2, :cond_10

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvActiteApply:Landroid/widget/TextView;

    const-string v3, "\u6d3b\u52a8\u5df2\u7ed3\u675f"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvActiteApply:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1202
    :cond_10
    if-eqz v4, :cond_15

    array-length v2, v4

    if-lez v2, :cond_15

    .line 1203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mActivityImage:Lcom/lzx/iteam/gridimg/MyGridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/gridimg/MyGridView;->setVisibility(I)V

    .line 1204
    new-instance v2, Lcom/lzx/iteam/adapter/EventImageAdapter;

    const-string v3, ""

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/lzx/iteam/adapter/EventImageAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->imageAdapter:Lcom/lzx/iteam/adapter/EventImageAdapter;

    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mActivityImage:Lcom/lzx/iteam/gridimg/MyGridView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->imageAdapter:Lcom/lzx/iteam/adapter/EventImageAdapter;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/gridimg/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_2

    .line 1152
    .end local v8    # "curTime":J
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getJoinCount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mApplyCount:I

    goto/16 :goto_3

    .line 1182
    .restart local v8    # "curTime":J
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->hasJoin:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mIvActiviteImage:Landroid/widget/ImageView;

    const v3, 0x7f020108

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvActiteApply:Landroid/widget/TextView;

    const-string v3, "\u60a8\u4e0d\u80fd\u53c2\u4e0e"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvActiteApply:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mLlCount:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 1188
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mIvActiviteImage:Landroid/widget/ImageView;

    const v3, 0x7f020108

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvActiteApply:Landroid/widget/TextView;

    const-string v3, "\u6211\u8981\u62a5\u540d"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1193
    :cond_14
    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->hasJoin:Ljava/lang/String;

    .line 1194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mIvActiviteImage:Landroid/widget/ImageView;

    const v3, 0x7f020108

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvActiteApply:Landroid/widget/TextView;

    const-string v3, "\u6211\u8981\u62a5\u540d"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1207
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mActivityImage:Lcom/lzx/iteam/gridimg/MyGridView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/gridimg/MyGridView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1210
    .end local v8    # "curTime":J
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventType:Ljava/lang/String;

    const-string v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mSvVoteLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mSvActiveLayout:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvVoteTitle:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvCountNote:Landroid/widget/TextView;

    const-string v3, "\u6295\u7968\u4eba\u6570"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvVoteApply:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mVotes:Ljava/util/ArrayList;

    .line 1220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventContent1:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1221
    .local v16, "votes":[Ljava/lang/String;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    move-object/from16 v0, v16

    array-length v2, v0

    if-lt v12, v2, :cond_17

    .line 1224
    sget-object v2, Lcom/lzx/iteam/EventDetailContentActivity;->mVote:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvVoteApply:Landroid/widget/TextView;

    const-string v3, "\u6211\u8981\u6295\u7968"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1226
    new-instance v2, Lcom/lzx/iteam/adapter/VoteTopAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mVotes:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v5}, Lcom/lzx/iteam/adapter/VoteTopAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mVoteTopAdapter:Lcom/lzx/iteam/adapter/VoteTopAdapter;

    .line 1227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mLvVoteTop:Lcom/lzx/iteam/widget/MyListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/MyListView;->setVisibility(I)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mLlCount:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1236
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mLvVoteTop:Lcom/lzx/iteam/widget/MyListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mVoteTopAdapter:Lcom/lzx/iteam/adapter/VoteTopAdapter;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1238
    if-eqz v4, :cond_19

    array-length v2, v4

    if-lez v2, :cond_19

    .line 1239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mGvVoteImage:Lcom/lzx/iteam/gridimg/MyGridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/gridimg/MyGridView;->setVisibility(I)V

    .line 1240
    new-instance v2, Lcom/lzx/iteam/adapter/EventImageAdapter;

    const-string v3, ""

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/lzx/iteam/adapter/EventImageAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->imageAdapter:Lcom/lzx/iteam/adapter/EventImageAdapter;

    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mGvVoteImage:Lcom/lzx/iteam/gridimg/MyGridView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->imageAdapter:Lcom/lzx/iteam/adapter/EventImageAdapter;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/gridimg/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_2

    .line 1222
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mVotes:Ljava/util/ArrayList;

    aget-object v3, v16, v12

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1230
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvVoteApply:Landroid/widget/TextView;

    const-string v3, "\u5df2\u6295\u7968"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvVoteApply:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mLvVoteBottom:Lcom/lzx/iteam/widget/MyListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/MyListView;->setVisibility(I)V

    .line 1234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mLlCount:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 1243
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mGvVoteImage:Lcom/lzx/iteam/gridimg/MyGridView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/gridimg/MyGridView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1246
    .end local v12    # "i":I
    .end local v16    # "votes":[Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventType:Ljava/lang/String;

    const-string v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mSvRegLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvRegTitle:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvCountNote:Landroid/widget/TextView;

    const-string v3, "\u7b7e\u5230\u4eba\u6570"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1250
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getActivityTime()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mActiveTime:Ljava/lang/String;

    .line 1251
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getActivitySite()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mActiveAddress:Ljava/lang/String;

    .line 1252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mActiveTime:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mActiveTime:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mDeadTime:J

    .line 1254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mActiveTime:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1b

    .line 1255
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mDeadTime:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mDeadTime:J

    .line 1257
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvRegTime:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mDeadTime:J

    invoke-static {v6, v7}, Lcom/lzx/iteam/util/DateUtil;->getDetailDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1259
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mActiveAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvRegAddress:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mActiveAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1262
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventContent1:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvRegNote:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventContent1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mLlRegNote:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1266
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getIsQrcode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getIsQrcode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1267
    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getUserType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvRegCode:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1271
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mUid:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvRegCode:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1274
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1275
    .local v14, "time":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mDeadTime:J

    const-wide/32 v6, 0x36ee80

    sub-long/2addr v2, v6

    cmp-long v2, v14, v2

    if-lez v2, :cond_21

    .line 1276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mLlCount:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1277
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->isTime:Z

    .line 1285
    .end local v14    # "time":J
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/EventDetailContentActivity;->getReply()V

    goto/16 :goto_2

    .line 1279
    .restart local v14    # "time":J
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mLlRegUnStart:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1280
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->isTime:Z

    goto :goto_7

    .line 1283
    .end local v14    # "time":J
    :cond_22
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->isTime:Z

    goto :goto_7

    .line 1290
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTitle:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvThemeName:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u53d1\u7ed9\u60a8\u4e00\u4efd"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1295
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTVThemeHostName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mPublisherName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mPublisherTime:Ljava/lang/String;

    if-eqz v2, :cond_24

    .line 1297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvThemTime:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mPublisherTime:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v18, 0x3e8

    mul-long v6, v6, v18

    invoke-static {v6, v7}, Lcom/lzx/iteam/util/DateUtil;->getDetailDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1299
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvReplyCount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u5171\u6709"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mReplyCount:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\u6761\u56de\u590d"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventPart1:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 1303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvPart1:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvPart1:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventPart1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1307
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventContent1:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvContent1:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvContent1:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventContent1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1311
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvContent1:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvThemeName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventPart2:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 1315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvPart2:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvPart2:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventPart2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventContent2:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 1318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvContent2:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvContent2:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventContent2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1323
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventPart3:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvPart3:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvPart3:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventPart3:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventContent3:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvContent3:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvContent3:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventContent3:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1331
    :cond_28
    sget-object v2, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getEventAvatar()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mIvSendImage:Landroid/widget/ImageView;

    sget-object v6, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/EventDetailContentActivity;->animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 1332
    if-eqz v4, :cond_2a

    array-length v2, v4

    if-lez v2, :cond_2a

    .line 1333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventImageLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mGvEventImage:Lcom/lzx/iteam/gridimg/MyGridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/gridimg/MyGridView;->setVisibility(I)V

    .line 1335
    new-instance v2, Lcom/lzx/iteam/adapter/EventImageAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mOriImages:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mThumeImage:Ljava/lang/String;

    const-string v7, ""

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lzx/iteam/adapter/EventImageAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->imageAdapter:Lcom/lzx/iteam/adapter/EventImageAdapter;

    .line 1336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mGvEventImage:Lcom/lzx/iteam/gridimg/MyGridView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->imageAdapter:Lcom/lzx/iteam/adapter/EventImageAdapter;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/gridimg/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvEventImageCount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u5171"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\u5f20\u56fe\u7247"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    :goto_9
    const-string v2, "6"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mSvOther:Landroid/widget/ScrollView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvMember:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual/range {p1 .. p1}, Lcom/lzx/iteam/bean/EventListData;->getUrl1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1293
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvThemeName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 1339
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventImageLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mGvEventImage:Lcom/lzx/iteam/gridimg/MyGridView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/gridimg/MyGridView;->setVisibility(I)V

    goto :goto_9

    .line 1350
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mSvOther:Landroid/widget/ScrollView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mWebView:Landroid/webkit/WebView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvMember:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mLvReply:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/EventDetailContentActivity;->mBottomLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public setReply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
    .locals 3
    .param p1, "reply"    # Lcom/lzx/iteam/bean/aidl/EventReplyNewData;

    .prologue
    .line 609
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getEventId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/provider/EventsMsgDB;->updateAllMsgReaded(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/provider/CloudDBOperation;->updateEventUnReadCount(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->setIsReaded(Z)V

    .line 613
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mReplyDate:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mAdapter:Lcom/lzx/iteam/adapter/EventReplyAdapter;

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mAdapter:Lcom/lzx/iteam/adapter/EventReplyAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mReplyDate:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/EventReplyAdapter;->bindData(Ljava/util/List;)V

    .line 622
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvReplyCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5171\u6709"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mReplyDate:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6761\u56de\u590d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    :cond_0
    return-void

    .line 619
    :cond_1
    new-instance v0, Lcom/lzx/iteam/adapter/EventReplyAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mReplyDate:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/lzx/iteam/adapter/EventReplyAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mAdapter:Lcom/lzx/iteam/adapter/EventReplyAdapter;

    .line 620
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mLvReply:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mAdapter:Lcom/lzx/iteam/adapter/EventReplyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public showClickPop(I)V
    .locals 14
    .param p1, "i"    # I

    .prologue
    .line 862
    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03007e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 863
    .local v11, "mainView":Landroid/view/View;
    const v1, 0x7f0e0398

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 864
    .local v10, "copy":Landroid/widget/TextView;
    const v1, 0x7f0e0399

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 867
    .local v13, "share":Landroid/widget/TextView;
    new-instance v1, Lcom/lzx/iteam/EventDetailContentActivity$10;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/EventDetailContentActivity$10;-><init>(Lcom/lzx/iteam/EventDetailContentActivity;)V

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 879
    new-instance v1, Lcom/lzx/iteam/EventDetailContentActivity$11;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/EventDetailContentActivity$11;-><init>(Lcom/lzx/iteam/EventDetailContentActivity;)V

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 888
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    .line 889
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 890
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 891
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 893
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v11}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 894
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 895
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 898
    if-nez p1, :cond_0

    .line 899
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mTvContent1:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 903
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 904
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 905
    .local v9, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 906
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 907
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    .line 908
    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    .line 906
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 909
    .local v0, "sa":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 910
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v12, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 911
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 912
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 913
    invoke-virtual {v11, v12}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 915
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/lzx/iteam/EventDetailContentActivity$12;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/EventDetailContentActivity$12;-><init>(Lcom/lzx/iteam/EventDetailContentActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 921
    return-void

    .line 901
    .end local v0    # "sa":Landroid/view/animation/ScaleAnimation;
    .end local v9    # "aa":Landroid/view/animation/AlphaAnimation;
    .end local v12    # "set":Landroid/view/animation/AnimationSet;
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mAnnouncementLayput:Landroid/widget/RelativeLayout;

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public showCopyPop(Landroid/view/View;Ljava/lang/String;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "context"    # Ljava/lang/String;

    .prologue
    const/4 v10, -0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 805
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030076

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 806
    .local v0, "layoutMenu":Landroid/view/View;
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, v0, v10, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 808
    .local v4, "window":Landroid/widget/PopupWindow;
    invoke-virtual {v4, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 810
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 811
    invoke-virtual {v4, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 814
    invoke-virtual {v0, v8, v8}, Landroid/view/View;->measure(II)V

    .line 815
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 816
    .local v3, "popupWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 818
    .local v2, "popupHeight":I
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 819
    .local v1, "location":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 821
    aget v5, v1, v9

    sub-int/2addr v5, v2

    const/16 v6, 0x64

    if-le v5, v6, :cond_0

    .line 822
    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02004e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 823
    aget v5, v1, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v5, v6

    aget v6, v1, v9

    .line 824
    sub-int/2addr v6, v2

    .line 823
    invoke-virtual {v4, p1, v8, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 831
    :goto_0
    const v5, 0x7f0a007d

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 832
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->update()V

    .line 835
    const v5, 0x7f0e0360

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 836
    new-instance v5, Lcom/lzx/iteam/EventDetailContentActivity$8;

    invoke-direct {v5, p0, p2, p1, v4}, Lcom/lzx/iteam/EventDetailContentActivity$8;-><init>(Lcom/lzx/iteam/EventDetailContentActivity;Ljava/lang/String;Landroid/view/View;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 847
    new-instance v5, Lcom/lzx/iteam/EventDetailContentActivity$9;

    invoke-direct {v5, p0, p1}, Lcom/lzx/iteam/EventDetailContentActivity$9;-><init>(Lcom/lzx/iteam/EventDetailContentActivity;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 854
    return-void

    .line 826
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/EventDetailContentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02032f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 828
    aget v5, v1, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v5, v6

    aget v6, v1, v9

    .line 829
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 828
    invoke-virtual {v4, p1, v8, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public toApplyActivite(Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1388
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1389
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 1390
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1391
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event_id"

    iget-object v4, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1392
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "type"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1393
    new-instance v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    iget-object v2, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x138b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 1394
    .local v0, "message":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    const-string v2, "/api/event/join"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 1395
    iput-object v1, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 1396
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 1397
    return-void
.end method

.method public toVote()V
    .locals 6

    .prologue
    .line 1400
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1401
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 1402
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1403
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event_id"

    iget-object v4, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1404
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "option"

    new-instance v4, Ljava/lang/StringBuilder;

    sget v5, Lcom/lzx/iteam/EventDetailContentActivity;->index:I

    add-int/lit8 v5, v5, 0x41

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1405
    new-instance v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    iget-object v2, p0, Lcom/lzx/iteam/EventDetailContentActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x138c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 1406
    .local v0, "message":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    const-string v2, "/api/event/vote"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 1407
    iput-object v1, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 1408
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 1409
    return-void
.end method
