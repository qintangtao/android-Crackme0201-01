.class public Lcom/lzx/iteam/ChatActivity;
.super Lcom/lzx/iteam/BaseActivity;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;,
        Lcom/lzx/iteam/ChatActivity$PageChange;,
        Lcom/lzx/iteam/ChatActivity$VoiceTouch;
    }
.end annotation


# static fields
.field private static final CT:Ljava/lang/String; = "ct"

.field private static final DURATION:Ljava/lang/String; = "duration"

.field private static final GRP:Ljava/lang/String; = "grp"

.field private static final MESSAGE_PACENT:I = 0xbbc

.field private static final MT:Ljava/lang/String; = "mt"

.field private static final MT_MSG_DOC:I = 0x68

.field private static final MT_MSG_PIC:I = 0x67

.field private static final MT_MSG_TXT:I = 0x65

.field private static final MT_MSG_VOC:I = 0x66

.field private static final RESULT_IMAGE:I = 0x7d0

.field private static final SELECT_PHOTO:I = 0xbb9

.field private static final SEND_MESSAGE:I = 0xbb8

.field private static final STOP_PLAY:I = 0x4d2

.field private static final TAKE_PHOTO:I = 0xbba

.field public static instance:Lcom/lzx/iteam/ChatActivity;

.field public static tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final GET_QN_TOKEN:I

.field private final MSG_CHAT_GROUP_INFO:I

.field private anim:Landroid/view/animation/RotateAnimation;

.field private dataPath:Ljava/lang/String;

.field private delayImage:J

.field private delayText:J

.field private downY:F

.field private isCanceled:Z

.field private isStop:Z

.field private mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

.field private mAvatar:Ljava/lang/String;

.field private mBitMap:Landroid/graphics/Bitmap;

.field private mCamera:Landroid/widget/ImageView;

.field private mCenter:Lcom/lzx/iteam/net/ChatMsgCenter;

.field private mChatBottom:Landroid/widget/LinearLayout;

.field private mChatGroupDetail:Landroid/widget/TextView;

.field private mChatMessageList:Landroid/widget/ListView;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mContext:Landroid/content/Context;

.field private mCreateNote:Landroid/widget/TextView;

.field private mCreatorName:Ljava/lang/String;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;",
            ">;"
        }
    .end annotation
.end field

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mEdInput:Landroid/widget/EditText;

.field private mEmotionLayout:Landroid/widget/LinearLayout;

.field private mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

.field private mEndTime:J

.field private mGroupCount:Ljava/lang/String;

.field private mGroupID:Ljava/lang/String;

.field private mGroupName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderLayout:Landroid/widget/LinearLayout;

.field private mHeaderProgress:Landroid/widget/ProgressBar;

.field private mHeaderText:Landroid/widget/TextView;

.field private mHiddenAction:Landroid/view/animation/TranslateAnimation;

.field private mImage:Landroid/widget/ImageView;

.field private mImagePath:Ljava/lang/String;

.field private mIsActive:Ljava/lang/String;

.field private mIsNone:I

.field private mIsNote:Ljava/lang/String;

.field private mIvEmotion:Landroid/widget/ImageView;

.field private mIvMore:Landroid/widget/ImageView;

.field private mIvPlay:Landroid/widget/ImageView;

.field private mIvRecord:Landroid/widget/ImageView;

.field private mIvSend:Landroid/widget/ImageView;

.field private mIvVoice:Landroid/widget/ImageView;

.field private mLlEmotionDots:Landroid/widget/LinearLayout;

.field private mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;

.field private mMoreLayout:Landroid/widget/LinearLayout;

.field private mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

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

.field private mNewDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;",
            ">;"
        }
    .end annotation
.end field

.field private mNewTime:Ljava/lang/String;

.field private mOldDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;",
            ">;"
        }
    .end annotation
.end field

.field private mPicData:Ljava/lang/String;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mRlSoundLengthLayout:Landroid/widget/LinearLayout;

.field private mRpbPlaySound:Lcom/lzx/iteam/widget/RoundProgressBar;

.field private mScaleBigAnimation:Landroid/view/animation/ScaleAnimation;

.field private mScaleLittleAnimation:Landroid/view/animation/ScaleAnimation;

.field private mSendMessage:Ljava/lang/String;

.field private mShowAction:Landroid/view/animation/TranslateAnimation;

.field private mSmses:Landroid/widget/ImageView;

.field private mSoundBack:Landroid/widget/LinearLayout;

.field private mSoundData:Ljava/lang/String;

.field private mSoundLayout:Landroid/widget/LinearLayout;

.field private mSoundSendAndCancle:Landroid/widget/LinearLayout;

.field private mStartTime:J

.field private mTakePhotoImagePath:Ljava/lang/String;

.field private mTextBack:Landroid/widget/LinearLayout;

.field mTextWatcher:Landroid/text/TextWatcher;

.field private mTime:I

.field private mTvGroupCount:Landroid/widget/TextView;

.field private mTvGroupName:Landroid/widget/TextView;

.field private mTvSoundBack:Landroid/widget/TextView;

.field private mTvSoundCancle:Landroid/widget/TextView;

.field private mTvSoundLength:Landroid/widget/TextView;

.field private mTvSoundNotice:Landroid/widget/TextView;

.field private mTvSoundRecord:Landroid/widget/TextView;

.field private mTvSoundSend:Landroid/widget/TextView;

.field private mType:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field private mUserType:Ljava/lang/String;

.field private mVoiceData:Ljava/lang/String;

.field private mVoiceHandler:Landroid/os/Handler;

.field private mVpEmotion:Landroid/support/v4/view/ViewPager;

.field maxDuation:I

.field public newMessageImpl:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

.field private page:I

.field runnable:Ljava/lang/Runnable;

.field private soundVisible:Z

.field updateThread:Ljava/lang/Runnable;

.field private visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lzx/iteam/ChatActivity;->tags:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-direct {p0}, Lcom/lzx/iteam/BaseActivity;-><init>()V

    .line 109
    iput v1, p0, Lcom/lzx/iteam/ChatActivity;->mIsNone:I

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mNewDatas:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mOldDatas:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mNameCard:Ljava/util/ArrayList;

    .line 121
    iput v1, p0, Lcom/lzx/iteam/ChatActivity;->page:I

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/ChatActivity;->isCanceled:Z

    .line 137
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lzx/iteam/ChatActivity;->MSG_CHAT_GROUP_INFO:I

    .line 138
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/lzx/iteam/ChatActivity;->GET_QN_TOKEN:I

    .line 152
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mSoundData:Ljava/lang/String;

    .line 164
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mUserName:Ljava/lang/String;

    .line 171
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/lzx/iteam/ChatActivity;->delayText:J

    .line 172
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/lzx/iteam/ChatActivity;->delayImage:J

    .line 175
    new-instance v0, Lcom/lzx/iteam/ChatActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ChatActivity$1;-><init>(Lcom/lzx/iteam/ChatActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mHandler:Landroid/os/Handler;

    .line 282
    new-instance v0, Lcom/lzx/iteam/ChatActivity$2;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ChatActivity$2;-><init>(Lcom/lzx/iteam/ChatActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mTextWatcher:Landroid/text/TextWatcher;

    .line 908
    new-instance v0, Lcom/lzx/iteam/ChatActivity$3;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ChatActivity$3;-><init>(Lcom/lzx/iteam/ChatActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/ChatActivity;->updateThread:Ljava/lang/Runnable;

    .line 1288
    new-instance v0, Lcom/lzx/iteam/ChatActivity$4;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ChatActivity$4;-><init>(Lcom/lzx/iteam/ChatActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/ChatActivity;->runnable:Ljava/lang/Runnable;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/provider/MessageDB;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/ChatActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity;->mNewDatas:Ljava/util/List;

    return-void
.end method

.method static synthetic access$11(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/util/AllDialogUtil;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    return-object v0
.end method

.method static synthetic access$12(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/widget/RoundProgressBar;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mRpbPlaySound:Lcom/lzx/iteam/widget/RoundProgressBar;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mEdInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$14(Lcom/lzx/iteam/ChatActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity;->mSendMessage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mSendMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mIvMore:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mIvSend:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/util/MediaPlayUtil;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;

    return-object v0
.end method

.method static synthetic access$19(Lcom/lzx/iteam/ChatActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mVoiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mChatMessageList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$20(Lcom/lzx/iteam/ChatActivity;)J
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/lzx/iteam/ChatActivity;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$21(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mTvSoundLength:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$22(Lcom/lzx/iteam/ChatActivity;Z)V
    .locals 0

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/lzx/iteam/ChatActivity;->isStop:Z

    return-void
.end method

.method static synthetic access$23(Lcom/lzx/iteam/ChatActivity;I)V
    .locals 0

    .prologue
    .line 161
    iput p1, p0, Lcom/lzx/iteam/ChatActivity;->mTime:I

    return-void
.end method

.method static synthetic access$24(Lcom/lzx/iteam/ChatActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$25(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mLlEmotionDots:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$26(Lcom/lzx/iteam/ChatActivity;F)V
    .locals 0

    .prologue
    .line 123
    iput p1, p0, Lcom/lzx/iteam/ChatActivity;->downY:F

    return-void
.end method

.method static synthetic access$27(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mTvSoundBack:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$28(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mTvSoundRecord:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$29(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mIvRecord:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$30(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mTvSoundNotice:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$31(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->dataPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$32(Lcom/lzx/iteam/ChatActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity;->mSoundData:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$33(Lcom/lzx/iteam/ChatActivity;)Landroid/media/MediaRecorder;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$34(Lcom/lzx/iteam/ChatActivity;Landroid/media/MediaRecorder;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity;->mRecorder:Landroid/media/MediaRecorder;

    return-void
.end method

.method static synthetic access$35(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mSoundData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$36(Lcom/lzx/iteam/ChatActivity;J)V
    .locals 1

    .prologue
    .line 159
    iput-wide p1, p0, Lcom/lzx/iteam/ChatActivity;->mStartTime:J

    return-void
.end method

.method static synthetic access$37(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mRlSoundLengthLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$38(Lcom/lzx/iteam/ChatActivity;)Landroid/view/animation/ScaleAnimation;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mScaleBigAnimation:Landroid/view/animation/ScaleAnimation;

    return-object v0
.end method

.method static synthetic access$39(Lcom/lzx/iteam/ChatActivity;)Landroid/view/animation/ScaleAnimation;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mScaleLittleAnimation:Landroid/view/animation/ScaleAnimation;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/ChatActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$40(Lcom/lzx/iteam/ChatActivity;)Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/lzx/iteam/ChatActivity;->isStop:Z

    return v0
.end method

.method static synthetic access$41(Lcom/lzx/iteam/ChatActivity;J)V
    .locals 1

    .prologue
    .line 160
    iput-wide p1, p0, Lcom/lzx/iteam/ChatActivity;->mEndTime:J

    return-void
.end method

.method static synthetic access$42(Lcom/lzx/iteam/ChatActivity;)J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/lzx/iteam/ChatActivity;->mEndTime:J

    return-wide v0
.end method

.method static synthetic access$43(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mChatBottom:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$44(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mSoundLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$45(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mIvPlay:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$46(Lcom/lzx/iteam/ChatActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity;->mVoiceData:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$47(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mVoiceData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$48(Lcom/lzx/iteam/ChatActivity;)I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/lzx/iteam/ChatActivity;->mTime:I

    return v0
.end method

.method static synthetic access$49(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mIsActive:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/ChatActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity;->mNewTime:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$50(Lcom/lzx/iteam/ChatActivity;)Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/lzx/iteam/ChatActivity;->isCanceled:Z

    return v0
.end method

.method static synthetic access$51(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$52(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$53(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mAvatar:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$54(Lcom/lzx/iteam/ChatActivity;Z)V
    .locals 0

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/lzx/iteam/ChatActivity;->isCanceled:Z

    return-void
.end method

.method static synthetic access$55(Lcom/lzx/iteam/ChatActivity;Landroid/view/animation/ScaleAnimation;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity;->mScaleBigAnimation:Landroid/view/animation/ScaleAnimation;

    return-void
.end method

.method static synthetic access$56(Lcom/lzx/iteam/ChatActivity;Landroid/view/animation/ScaleAnimation;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity;->mScaleLittleAnimation:Landroid/view/animation/ScaleAnimation;

    return-void
.end method

.method static synthetic access$57(Lcom/lzx/iteam/ChatActivity;)F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/lzx/iteam/ChatActivity;->downY:F

    return v0
.end method

.method static synthetic access$58(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    return-object v0
.end method

.method static synthetic access$59(Lcom/lzx/iteam/ChatActivity;Lcom/lzx/iteam/adapter/ChatMessageAdapter;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    return-void
.end method

.method static synthetic access$6(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/net/ChatMsgCenter;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mCenter:Lcom/lzx/iteam/net/ChatMsgCenter;

    return-object v0
.end method

.method static synthetic access$60(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mNewDatas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$61(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mOldDatas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$62(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mHeaderLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$63(Lcom/lzx/iteam/ChatActivity;I)V
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lcom/lzx/iteam/ChatActivity;->mIsNone:I

    return-void
.end method

.method static synthetic access$7(Lcom/lzx/iteam/ChatActivity;)I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/lzx/iteam/ChatActivity;->page:I

    return v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mNewTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;

    return-object v0
.end method

.method private getChatGroupInfo()V
    .locals 5

    .prologue
    .line 1625
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1626
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 1627
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1628
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "chat_group_id"

    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1629
    new-instance v0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;

    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/lzx/iteam/net/ChatGroupInfoMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 1630
    .local v0, "chatGroupInfoMsg":Lcom/lzx/iteam/net/ChatGroupInfoMsg;
    const-string v2, "/api/chatgroup/info"

    iput-object v2, v0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;->mApi:Ljava/lang/String;

    .line 1631
    iput-object v1, v0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;->mParams:Ljava/util/List;

    .line 1632
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 1633
    return-void
.end method

.method private getData(Ljava/lang/String;)V
    .locals 4
    .param p1, "ctime"    # Ljava/lang/String;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mNewDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 520
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mCenter:Lcom/lzx/iteam/net/ChatMsgCenter;

    iget v1, p0, Lcom/lzx/iteam/ChatActivity;->page:I

    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/lzx/iteam/net/ChatMsgCenter;->getChatMsgData(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mNewDatas:Ljava/util/List;

    .line 522
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mOldDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 523
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mOldDatas:Ljava/util/List;

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 524
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lzx/iteam/ChatActivity$7;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/ChatActivity$7;-><init>(Lcom/lzx/iteam/ChatActivity;)V

    .line 542
    const-wide/16 v2, 0x190

    .line 524
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 544
    return-void
.end method

.method private initEmotion()V
    .locals 4

    .prologue
    .line 511
    new-instance v0, Lcom/lzx/iteam/emotion/EmotionUtil;

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mEdInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity;->mLlEmotionDots:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lzx/iteam/ChatActivity;->mVpEmotion:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lzx/iteam/emotion/EmotionUtil;-><init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

    .line 512
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

    invoke-virtual {v0}, Lcom/lzx/iteam/emotion/EmotionUtil;->initStaticFaces()V

    .line 513
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

    invoke-virtual {v0}, Lcom/lzx/iteam/emotion/EmotionUtil;->initViewPager()V

    .line 514
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mVpEmotion:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/lzx/iteam/emotion/EmotionUtil$PageChange;

    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity;->mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/lzx/iteam/emotion/EmotionUtil$PageChange;-><init>(Lcom/lzx/iteam/emotion/EmotionUtil;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 515
    return-void
.end method

.method private playSound(Ljava/lang/String;)V
    .locals 3
    .param p1, "soundFilePath"    # Ljava/lang/String;

    .prologue
    .line 874
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;

    if-eqz v1, :cond_0

    .line 875
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 877
    :try_start_0
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;

    invoke-virtual {v1, p1}, Lcom/lzx/iteam/util/MediaPlayUtil;->play(Ljava/lang/String;)V

    .line 878
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mVoiceHandler:Landroid/os/Handler;

    .line 879
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mVoiceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity;->updateThread:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 880
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;

    new-instance v2, Lcom/lzx/iteam/ChatActivity$9;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/ChatActivity$9;-><init>(Lcom/lzx/iteam/ChatActivity;)V

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/util/MediaPlayUtil;->setPlayOnCompleteListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 900
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public deleteSoundFileUnSend()V
    .locals 4

    .prologue
    .line 1022
    const/4 v2, 0x0

    iput v2, p0, Lcom/lzx/iteam/ChatActivity;->mTime:I

    .line 1023
    const-string v2, ""

    iget-object v3, p0, Lcom/lzx/iteam/ChatActivity;->mSoundData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1025
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity;->mSoundData:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1026
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1027
    const-string v2, ""

    iput-object v2, p0, Lcom/lzx/iteam/ChatActivity;->mSoundData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getIntentData()V
    .locals 2

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/lzx/iteam/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 548
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "chat_group_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;

    .line 549
    const-string v1, "chat_group_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mGroupName:Ljava/lang/String;

    .line 550
    const-string v1, "chat_count"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mGroupCount:Ljava/lang/String;

    .line 551
    const-string v1, "userType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mUserType:Ljava/lang/String;

    .line 553
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mType:Ljava/lang/String;

    .line 554
    const-string v1, "isActive"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mIsActive:Ljava/lang/String;

    .line 556
    return-void
.end method

.method public getQnToken(Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "voiceMsg"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .prologue
    .line 1497
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1498
    .local v0, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1499
    .local v2, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v6

    iget-object v6, v6, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1500
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "key"

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1501
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "grp"

    iget-object v6, p0, Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1502
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "duration"

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getVoiceContent()Ljava/lang/String;

    move-result-object v6

    const-string v7, "tuandui@lzx"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1503
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getMsgType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1504
    .local v3, "msgType":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mt"

    invoke-direct {v4, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1505
    new-instance v1, Lcom/lzx/iteam/net/GetQnTokenMsg;

    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3e9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-direct {v1, v4, p1, v0, p2}, Lcom/lzx/iteam/net/GetQnTokenMsg;-><init>(Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    .line 1506
    .local v1, "getQnTokenMsg":Lcom/lzx/iteam/net/GetQnTokenMsg;
    const-string v4, "/api/qn/get_chat_token"

    iput-object v4, v1, Lcom/lzx/iteam/net/GetQnTokenMsg;->mApi:Ljava/lang/String;

    .line 1507
    iput-object v2, v1, Lcom/lzx/iteam/net/GetQnTokenMsg;->mParams:Ljava/util/List;

    .line 1508
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 1509
    return-void
.end method

.method public getRandomFileName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1321
    const-string v2, ""

    .line 1322
    .local v2, "rel":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1323
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1324
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1326
    return-object v2
.end method

.method public initAnim()V
    .locals 9

    .prologue
    .line 570
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 571
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 572
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 570
    iput-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mShowAction:Landroid/view/animation/TranslateAnimation;

    .line 573
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mShowAction:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 575
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    .line 576
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 577
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 578
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 575
    iput-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mHiddenAction:Landroid/view/animation/TranslateAnimation;

    .line 579
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mHiddenAction:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 580
    return-void
.end method

.method public initScaleAnim()V
    .locals 9

    .prologue
    .line 1517
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3fa66666    # 1.3f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3fa66666    # 1.3f

    .line 1518
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1517
    iput-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mScaleBigAnimation:Landroid/view/animation/ScaleAnimation;

    .line 1519
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mScaleBigAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1522
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3fa66666    # 1.3f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3fa66666    # 1.3f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1523
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1522
    iput-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mScaleLittleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 1524
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mScaleLittleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1526
    return-void
.end method

.method public initSoundData()V
    .locals 3

    .prologue
    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/Yun/Sounds/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->dataPath:Ljava/lang/String;

    .line 585
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->dataPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 586
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 587
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 589
    :cond_0
    invoke-static {}, Lcom/lzx/iteam/util/MediaPlayUtil;->getInstance()Lcom/lzx/iteam/util/MediaPlayUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;

    .line 591
    return-void
.end method

.method public initView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 390
    const v1, 0x7f0e0429

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mIvVoice:Landroid/widget/ImageView;

    .line 391
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mIvVoice:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    const v1, 0x7f0e042a

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mIvEmotion:Landroid/widget/ImageView;

    .line 393
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mIvEmotion:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    const v1, 0x7f0e042c

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mIvMore:Landroid/widget/ImageView;

    .line 395
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mIvMore:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    const v1, 0x7f0e042d

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mIvSend:Landroid/widget/ImageView;

    .line 397
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mIvSend:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    const v1, 0x7f0e042b

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mEdInput:Landroid/widget/EditText;

    .line 399
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mEdInput:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mEdInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 401
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mEdInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 402
    const v1, 0x7f0e042f

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mImage:Landroid/widget/ImageView;

    .line 403
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    const v1, 0x7f0e0430

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mCamera:Landroid/widget/ImageView;

    .line 405
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mCamera:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    const v1, 0x7f0e0431

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mSmses:Landroid/widget/ImageView;

    .line 407
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mSmses:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    const v1, 0x7f0e0423

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mTextBack:Landroid/widget/LinearLayout;

    .line 409
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mTextBack:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    const v1, 0x7f0e0425

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mTvGroupCount:Landroid/widget/TextView;

    .line 413
    const v1, 0x7f0e0428

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mChatBottom:Landroid/widget/LinearLayout;

    .line 414
    const v1, 0x7f0e0435

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mSoundLayout:Landroid/widget/LinearLayout;

    .line 415
    const v1, 0x7f0e043c

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mSoundBack:Landroid/widget/LinearLayout;

    .line 416
    const v1, 0x7f0e043f

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mSoundSendAndCancle:Landroid/widget/LinearLayout;

    .line 417
    const v1, 0x7f0e0436

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mIvRecord:Landroid/widget/ImageView;

    .line 418
    const v1, 0x7f0e0438

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mIvPlay:Landroid/widget/ImageView;

    .line 419
    const v1, 0x7f0e0440

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mTvSoundCancle:Landroid/widget/TextView;

    .line 420
    const v1, 0x7f0e0441

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mTvSoundSend:Landroid/widget/TextView;

    .line 421
    const v1, 0x7f0e043b

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mTvSoundLength:Landroid/widget/TextView;

    .line 422
    const v1, 0x7f0e043a

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mRlSoundLengthLayout:Landroid/widget/LinearLayout;

    .line 423
    const v1, 0x7f0e043d

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mTvSoundBack:Landroid/widget/TextView;

    .line 424
    const v1, 0x7f0e043e

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mTvSoundRecord:Landroid/widget/TextView;

    .line 425
    const v1, 0x7f0e0437

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/RoundProgressBar;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mRpbPlaySound:Lcom/lzx/iteam/widget/RoundProgressBar;

    .line 426
    const v1, 0x7f0e0439

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mTvSoundNotice:Landroid/widget/TextView;

    .line 427
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mSoundBack:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mIvRecord:Landroid/widget/ImageView;

    new-instance v2, Lcom/lzx/iteam/ChatActivity$VoiceTouch;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/ChatActivity$VoiceTouch;-><init>(Lcom/lzx/iteam/ChatActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 429
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mIvPlay:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mTvSoundCancle:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mTvSoundSend:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    const v1, 0x7f0e042e

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mMoreLayout:Landroid/widget/LinearLayout;

    .line 435
    const v1, 0x7f0e0424

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mChatGroupDetail:Landroid/widget/TextView;

    .line 436
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mChatGroupDetail:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    const v1, 0x7f0e016f

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mTvGroupName:Landroid/widget/TextView;

    .line 438
    const v1, 0x7f0e0432

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    .line 439
    const v1, 0x7f0e0433

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mVpEmotion:Landroid/support/v4/view/ViewPager;

    .line 440
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mVpEmotion:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/lzx/iteam/ChatActivity$PageChange;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/ChatActivity$PageChange;-><init>(Lcom/lzx/iteam/ChatActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 441
    const v1, 0x7f0e0434

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mLlEmotionDots:Landroid/widget/LinearLayout;

    .line 443
    const v1, 0x7f0e0426

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mChatMessageList:Landroid/widget/ListView;

    .line 444
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mChatMessageList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setKeepScreenOn(Z)V

    .line 445
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mChatMessageList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 446
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030108

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 447
    .local v0, "headerView":Landroid/view/View;
    const v1, 0x7f0e066a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 448
    const v1, 0x7f0e066c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mHeaderText:Landroid/widget/TextView;

    .line 449
    const v1, 0x7f0e066b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mHeaderProgress:Landroid/widget/ProgressBar;

    .line 450
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mHeaderLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 451
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mChatMessageList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 452
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mChatMessageList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 458
    new-instance v1, Lcom/lzx/iteam/provider/MessageDB;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/provider/MessageDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    .line 459
    new-instance v1, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 461
    new-instance v1, Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v1, p0, v2}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;-><init>(Landroid/content/Context;Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    iput-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    .line 462
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mChatMessageList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 463
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mChatMessageList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 465
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mCenter:Lcom/lzx/iteam/net/ChatMsgCenter;

    new-instance v2, Lcom/lzx/iteam/ChatActivity$6;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/ChatActivity$6;-><init>(Lcom/lzx/iteam/ChatActivity;)V

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/net/ChatMsgCenter;->setUpdateChatMsgListener(Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;)V

    .line 508
    return-void
.end method

.method public initViewData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "groupCount"    # Ljava/lang/String;

    .prologue
    .line 560
    invoke-static {p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mTvGroupName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    :cond_0
    invoke-static {p2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mTvGroupCount:Landroid/widget/TextView;

    const v1, 0x7f080132

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/lzx/iteam/ChatActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    :cond_1
    return-void
.end method

.method public isListViewReachBottomEdge(Landroid/widget/ListView;)Z
    .locals 4
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 1642
    const/4 v1, 0x0

    .line 1643
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ne v2, v3, :cond_0

    .line 1644
    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1645
    .local v0, "bottomChildView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-lt v2, v3, :cond_1

    const/4 v1, 0x1

    .line 1647
    .end local v0    # "bottomChildView":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 1645
    .restart local v0    # "bottomChildView":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v9, 0x276e

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 1364
    invoke-super {p0, p1, p2, p3}, Lcom/lzx/iteam/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1365
    sparse-switch p1, :sswitch_data_0

    .line 1422
    :cond_0
    :goto_0
    return-void

    .line 1367
    :sswitch_0
    if-ne p2, v9, :cond_1

    .line 1368
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1369
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "chat_group_id"

    iget-object v7, p0, Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1370
    const-string v6, "chat_group_name"

    iget-object v7, p0, Lcom/lzx/iteam/ChatActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1371
    const-string v6, "user_type"

    iget-object v7, p0, Lcom/lzx/iteam/ChatActivity;->mUserType:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1372
    const-string v6, "is_note"

    iget-object v7, p0, Lcom/lzx/iteam/ChatActivity;->mIsNote:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1373
    invoke-virtual {p0, v9, v4}, Lcom/lzx/iteam/ChatActivity;->setResult(ILandroid/content/Intent;)V

    .line 1374
    invoke-virtual {p0}, Lcom/lzx/iteam/ChatActivity;->finish()V

    goto :goto_0

    .line 1375
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    const/16 v6, 0x2773

    if-ne p2, v6, :cond_0

    .line 1376
    const-string v6, "chat_name"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lzx/iteam/ChatActivity;->mGroupName:Ljava/lang/String;

    .line 1377
    const-string v6, "chat_count"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lzx/iteam/ChatActivity;->mGroupCount:Ljava/lang/String;

    .line 1378
    iget-object v6, p0, Lcom/lzx/iteam/ChatActivity;->mGroupName:Ljava/lang/String;

    invoke-static {v6}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1379
    iget-object v6, p0, Lcom/lzx/iteam/ChatActivity;->mTvGroupName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lzx/iteam/ChatActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1381
    :cond_2
    iget-object v6, p0, Lcom/lzx/iteam/ChatActivity;->mGroupCount:Ljava/lang/String;

    invoke-static {v6}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1382
    iget-object v6, p0, Lcom/lzx/iteam/ChatActivity;->mTvGroupCount:Landroid/widget/TextView;

    const v7, 0x7f080132

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/lzx/iteam/ChatActivity;->mGroupCount:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/lzx/iteam/ChatActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1389
    :sswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/lzx/iteam/ChatActivity;->sendImage(ILandroid/content/Intent;)V

    goto :goto_0

    .line 1392
    :sswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/lzx/iteam/ChatActivity;->sendImage(ILandroid/content/Intent;)V

    goto :goto_0

    .line 1396
    :sswitch_3
    const-string v6, ""

    iget-object v7, p0, Lcom/lzx/iteam/ChatActivity;->mTakePhotoImagePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1398
    iget-object v6, p0, Lcom/lzx/iteam/ChatActivity;->mTakePhotoImagePath:Ljava/lang/String;

    invoke-static {p0, v6, v10}, Lcom/lzx/iteam/util/PhotoUtil;->readBitmapFromPath(Landroid/app/Activity;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1399
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/lzx/iteam/ChatActivity;->mTakePhotoImagePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/lzx/iteam/util/PhotoUtil;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 1400
    .local v1, "degree":I
    if-eqz v1, :cond_3

    .line 1401
    invoke-static {v0, v1}, Lcom/lzx/iteam/util/PhotoUtil;->rotaingImageView(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1403
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/lzx/iteam/ChatActivity;->mTakePhotoImagePath:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1404
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1408
    .end local v3    # "file":Ljava/io/File;
    :goto_1
    const-string v6, "/Yun/Images/"

    const-string v7, ""

    invoke-static {v0, p0, v6, v7}, Lcom/lzx/iteam/util/PhotoUtil;->saveBitmaptoSdCard(Landroid/graphics/Bitmap;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1409
    .local v5, "tempPath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/Yun/Images/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lzx/iteam/ChatActivity;->mTakePhotoImagePath:Ljava/lang/String;

    .line 1411
    .end local v5    # "tempPath":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/lzx/iteam/ChatActivity;->mTakePhotoImagePath:Ljava/lang/String;

    if-eqz v6, :cond_0

    const-string v6, ""

    iget-object v7, p0, Lcom/lzx/iteam/ChatActivity;->mTakePhotoImagePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1412
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/lzx/iteam/ImagePagerActivity;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1413
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v6, "imagePath"

    iget-object v7, p0, Lcom/lzx/iteam/ChatActivity;->mTakePhotoImagePath:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1414
    const-string v6, "image_origin"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1415
    const/16 v6, 0xbba

    invoke-virtual {p0, v4, v6}, Lcom/lzx/iteam/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1405
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 1406
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1365
    nop

    :sswitch_data_0
    .sparse-switch
        0xbb9 -> :sswitch_1
        0xbba -> :sswitch_2
        0xbcf -> :sswitch_3
        0x276d -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 24
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 655
    invoke-static {}, Lcom/lzx/iteam/util/Constants;->isFastClick()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 738
    :pswitch_1
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/lzx/iteam/ChatActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/lzx/iteam/ChatActivity$8;-><init>(Lcom/lzx/iteam/ChatActivity;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 747
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 749
    new-instance v23, Landroid/content/Intent;

    const-class v4, Lcom/lzx/iteam/MainActivity;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 750
    .local v23, "toMain":Landroid/content/Intent;
    const/high16 v4, 0x24000000

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 751
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/ChatActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 661
    .end local v23    # "toMain":Landroid/content/Intent;
    :pswitch_2
    :try_start_0
    const-string v4, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lzx/iteam/ChatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/ChatActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mMoreLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/lzx/iteam/ChatActivity;->visible:Z

    .line 667
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lzx/iteam/ChatActivity;->visible:Z

    if-eqz v4, :cond_3

    .line 668
    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/high16 v3, -0x3dcc0000    # -45.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    .line 672
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 673
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 674
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mIvMore:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity;->mMoreLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lzx/iteam/ChatActivity;->visible:Z

    if-eqz v4, :cond_4

    const/16 v4, 0x8

    :goto_4
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 676
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 677
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mSoundLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 662
    :catch_0
    move-exception v19

    .line 663
    .local v19, "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 665
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 670
    :cond_3
    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, -0x3dcc0000    # -45.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    goto :goto_3

    .line 675
    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    .line 681
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mMoreLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mSoundLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/lzx/iteam/ChatActivity;->visible:Z

    .line 682
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lzx/iteam/ChatActivity;->visible:Z

    if-eqz v4, :cond_0

    .line 683
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mMoreLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 684
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 685
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mSoundLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 687
    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/high16 v3, -0x3dcc0000    # -45.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    .line 688
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 689
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mIvMore:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 681
    :cond_5
    const/4 v4, 0x1

    goto :goto_5

    .line 700
    :pswitch_4
    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity;->mIsActive:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 701
    const-string v4, "\u5bf9\u4e0d\u8d77\uff0c\u8be5\u5c0f\u7ec4\u5df2\u89e3\u6563,\u65e0\u6cd5\u53d1\u9001\u6d88\u606f"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 703
    :cond_6
    new-instance v2, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    const/16 v3, 0x65

    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/ChatActivity;->mUserId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/ChatActivity;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lzx/iteam/ChatActivity;->mAvatar:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/ChatActivity;->mSendMessage:Ljava/lang/String;

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const/16 v17, 0x1

    invoke-direct/range {v2 .. v17}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 705
    .local v2, "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/ChatActivity;->sendTextMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    goto/16 :goto_0

    .line 715
    .end local v2    # "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    :pswitch_5
    new-instance v20, Landroid/content/Intent;

    const-class v4, Lcom/lzx/iteam/SelectImageActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 716
    .local v20, "intent":Landroid/content/Intent;
    const/16 v4, 0xbb9

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/lzx/iteam/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 717
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mMoreLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 718
    new-instance v3, Landroid/view/animation/RotateAnimation;

    const/high16 v4, -0x3dcc0000    # -45.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    .line 719
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 720
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mIvMore:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 725
    .end local v20    # "intent":Landroid/content/Intent;
    :pswitch_6
    new-instance v22, Landroid/content/Intent;

    const-class v4, Lcom/lzx/iteam/TakePhotoActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 726
    .local v22, "photo":Landroid/content/Intent;
    const/16 v4, 0xbba

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/lzx/iteam/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 727
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mMoreLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 728
    new-instance v3, Landroid/view/animation/RotateAnimation;

    const/high16 v4, -0x3dcc0000    # -45.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    .line 729
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 730
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mIvMore:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 755
    .end local v22    # "photo":Landroid/content/Intent;
    :pswitch_7
    new-instance v21, Landroid/content/Intent;

    const-class v4, Lcom/lzx/iteam/ChatGroupDetailActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 756
    .local v21, "intent1":Landroid/content/Intent;
    const-string v4, "chat_group_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    const-string v4, "chat_group_name"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity;->mGroupName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 758
    const-string v4, "user_type"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity;->mUserType:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 759
    const-string v4, "is_note"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity;->mIsNote:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 760
    const-string v4, "type"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity;->mType:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    const-string v4, "isActive"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity;->mIsActive:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    const-string v4, "creatorName"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity;->mCreatorName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    const/16 v4, 0x276d

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Lcom/lzx/iteam/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 767
    .end local v21    # "intent1":Landroid/content/Intent;
    :pswitch_8
    :try_start_1
    const-string v4, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lzx/iteam/ChatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/ChatActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 771
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/lzx/iteam/ChatActivity;->visible:Z

    .line 772
    new-instance v3, Landroid/view/animation/RotateAnimation;

    const/high16 v4, -0x3dcc0000    # -45.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    .line 773
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 774
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 775
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mIvMore:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lzx/iteam/ChatActivity;->visible:Z

    if-eqz v4, :cond_8

    const/16 v4, 0x8

    :goto_8
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 777
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mMoreLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 778
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mSoundLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 768
    :catch_1
    move-exception v19

    .line 769
    .restart local v19    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 771
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v4, 0x0

    goto :goto_7

    .line 776
    :cond_8
    const/4 v4, 0x0

    goto :goto_8

    .line 782
    :pswitch_9
    :try_start_2
    const-string v4, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lzx/iteam/ChatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/ChatActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 791
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mSoundLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/lzx/iteam/ChatActivity;->visible:Z

    .line 792
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lzx/iteam/ChatActivity;->visible:Z

    if-eqz v4, :cond_a

    .line 793
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mSoundLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 797
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mTvSoundNotice:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 798
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mIvRecord:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 799
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mIvRecord:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020295

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mTvSoundNotice:Landroid/widget/TextView;

    const-string v5, "\u6309\u4f4f\u8bf4\u8bdd"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mRlSoundLengthLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 803
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 804
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mMoreLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 805
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mIvPlay:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 807
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mRpbPlaySound:Lcom/lzx/iteam/widget/RoundProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/widget/RoundProgressBar;->setVisibility(I)V

    .line 808
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mRpbPlaySound:Lcom/lzx/iteam/widget/RoundProgressBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/widget/RoundProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 783
    :catch_2
    move-exception v19

    .line 784
    .restart local v19    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 791
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_9
    const/4 v4, 0x0

    goto :goto_a

    .line 795
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mSoundLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b

    .line 813
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mChatBottom:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 814
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mSoundLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 817
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/ChatActivity;->stopPlay()V

    .line 818
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/ChatActivity;->deleteSoundFileUnSend()V

    .line 819
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mChatBottom:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 820
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mSoundLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 822
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mIvPlay:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 823
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mIvRecord:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 825
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mSoundSendAndCancle:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 826
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mSoundBack:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 830
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/ChatActivity;->stopPlay()V

    .line 831
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mChatBottom:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 832
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mSoundLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 834
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mIvPlay:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 835
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mIvRecord:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 838
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mSoundData:Ljava/lang/String;

    invoke-static {v4}, Lcom/lzx/iteam/util/StringUtil;->encodeBase64File(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mVoiceData:Ljava/lang/String;

    .line 839
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity;->mVoiceData:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "tuandui@lzx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lzx/iteam/ChatActivity;->mTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mVoiceData:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 849
    :goto_c
    const-string v4, "0"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity;->mIsActive:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 850
    const-string v4, "\u5bf9\u4e0d\u8d77\uff0c\u8be5\u5c0f\u7ec4\u5df2\u89e3\u6563,\u65e0\u6cd5\u53d1\u9001\u6d88\u606f"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 840
    :catch_3
    move-exception v19

    .line 841
    .restart local v19    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 853
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_b
    new-instance v3, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    const/16 v4, 0x66

    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/ChatActivity;->mUserId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lzx/iteam/ChatActivity;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lzx/iteam/ChatActivity;->mAvatar:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;

    const/4 v12, 0x1

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ChatActivity;->mVoiceData:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, ""

    const/16 v18, 0x1

    invoke-direct/range {v3 .. v18}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 854
    .local v3, "voiceMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mSoundData:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/lzx/iteam/ChatActivity;->getQnToken(Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    goto/16 :goto_0

    .line 858
    .end local v3    # "voiceMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;

    invoke-virtual {v4}, Lcom/lzx/iteam/util/MediaPlayUtil;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 859
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/ChatActivity;->stopPlay()V

    goto/16 :goto_0

    .line 861
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mSoundData:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lzx/iteam/ChatActivity;->playSound(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 658
    :pswitch_data_0
    .packed-switch 0x7f0e0423
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 309
    invoke-super {p0, p1}, Lcom/lzx/iteam/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 310
    const v3, 0x7f030095

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/ChatActivity;->setContentView(I)V

    .line 311
    iput-object p0, p0, Lcom/lzx/iteam/ChatActivity;->mContext:Landroid/content/Context;

    .line 312
    sput-object p0, Lcom/lzx/iteam/ChatActivity;->instance:Lcom/lzx/iteam/ChatActivity;

    .line 313
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/ChatActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 314
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/ChatActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 315
    invoke-static {p0}, Lcom/lzx/iteam/net/ChatMsgCenter;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/ChatMsgCenter;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/ChatActivity;->mCenter:Lcom/lzx/iteam/net/ChatMsgCenter;

    .line 316
    new-instance v3, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;-><init>(Lcom/lzx/iteam/ChatActivity;)V

    iput-object v3, p0, Lcom/lzx/iteam/ChatActivity;->newMessageImpl:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    .line 318
    iget-object v3, p0, Lcom/lzx/iteam/ChatActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v4, "contact_name_card"

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/lzx/iteam/ChatActivity;->mNameCard:Ljava/util/ArrayList;

    .line 319
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v2

    .line 320
    .local v2, "localLogin":Lcom/lzx/iteam/net/LocalLogin;
    invoke-virtual {v2}, Lcom/lzx/iteam/net/LocalLogin;->isLogedin()Z

    move-result v3

    if-nez v3, :cond_0

    .line 321
    invoke-virtual {v2, p0}, Lcom/lzx/iteam/net/LocalLogin;->login(Landroid/content/Context;)Z

    .line 322
    invoke-virtual {v2}, Lcom/lzx/iteam/net/LocalLogin;->isLogedin()Z

    move-result v3

    if-nez v3, :cond_0

    .line 323
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/LoginActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ChatActivity;->startActivity(Landroid/content/Intent;)V

    .line 325
    invoke-virtual {p0}, Lcom/lzx/iteam/ChatActivity;->finish()V

    .line 374
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 331
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 332
    const-string v3, "Service"

    const-string v4, "ChatActivity---addNewMessageInterface"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity;->newMessageImpl:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    invoke-interface {v3, v4}, Lcom/lzx/iteam/service/aidl/INetService;->addNewMessageInterface(Lcom/lzx/iteam/service/aidl/NewMessageInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/lzx/iteam/ChatActivity;->initView()V

    .line 340
    invoke-direct {p0}, Lcom/lzx/iteam/ChatActivity;->initEmotion()V

    .line 341
    invoke-virtual {p0}, Lcom/lzx/iteam/ChatActivity;->getIntentData()V

    .line 342
    iget-object v3, p0, Lcom/lzx/iteam/ChatActivity;->mGroupName:Ljava/lang/String;

    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity;->mGroupCount:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/lzx/iteam/ChatActivity;->initViewData(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/lzx/iteam/ChatActivity;->initSoundData()V

    .line 345
    invoke-virtual {p0}, Lcom/lzx/iteam/ChatActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 346
    iget-object v3, p0, Lcom/lzx/iteam/ChatActivity;->mNameCard:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/lzx/iteam/ChatActivity;->mUserName:Ljava/lang/String;

    .line 347
    iget-object v3, p0, Lcom/lzx/iteam/ChatActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v4, "useid"

    const-string v5, "\uff0d1"

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/ChatActivity;->mUserId:Ljava/lang/String;

    .line 348
    iget-object v3, p0, Lcom/lzx/iteam/ChatActivity;->mNameCard:Ljava/util/ArrayList;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/lzx/iteam/ChatActivity;->mAvatar:Ljava/lang/String;

    .line 349
    invoke-direct {p0}, Lcom/lzx/iteam/ChatActivity;->getChatGroupInfo()V

    .line 351
    new-instance v3, Lcom/lzx/iteam/ChatActivity$5;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/ChatActivity$5;-><init>(Lcom/lzx/iteam/ChatActivity;)V

    new-array v4, v6, [Ljava/lang/Void;

    .line 372
    invoke-virtual {v3, v4}, Lcom/lzx/iteam/ChatActivity$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 993
    :try_start_0
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 994
    const-string v1, "Service"

    const-string v2, "ChatActivity---removeNewMessageInterface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity;->newMessageImpl:Lcom/lzx/iteam/ChatActivity$NewMessageResultImpl;

    invoke-interface {v1, v2}, Lcom/lzx/iteam/service/aidl/INetService;->removeNewMessageInterface(Lcom/lzx/iteam/service/aidl/NewMessageInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/ChatActivity;->stopPlay()V

    .line 1006
    invoke-super {p0}, Lcom/lzx/iteam/BaseActivity;->onDestroy()V

    .line 1007
    return-void

    .line 998
    :catch_0
    move-exception v0

    .line 999
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/16 v2, 0x8

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 926
    packed-switch p1, :pswitch_data_0

    .line 952
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/lzx/iteam/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_1
    return v3

    .line 928
    :pswitch_0
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mMoreLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/lzx/iteam/ChatActivity;->visible:Z

    .line 929
    iget-boolean v0, p0, Lcom/lzx/iteam/ChatActivity;->visible:Z

    if-eqz v0, :cond_1

    .line 930
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mMoreLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 931
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 932
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3dcc0000    # -45.0f

    const/4 v2, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    .line 933
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 935
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mIvMore:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_0
    move v0, v3

    .line 928
    goto :goto_2

    .line 938
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mSoundLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/lzx/iteam/ChatActivity;->soundVisible:Z

    .line 939
    iget-boolean v0, p0, Lcom/lzx/iteam/ChatActivity;->soundVisible:Z

    if-eqz v0, :cond_3

    .line 940
    invoke-virtual {p0}, Lcom/lzx/iteam/ChatActivity;->stopPlay()V

    .line 941
    invoke-virtual {p0}, Lcom/lzx/iteam/ChatActivity;->deleteSoundFileUnSend()V

    .line 942
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mSoundLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 943
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mChatBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 938
    goto :goto_3

    .line 946
    :cond_3
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/lzx/iteam/MainActivity;

    invoke-direct {v7, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 947
    .local v7, "toMain":Landroid/content/Intent;
    const/high16 v0, 0x24000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 948
    invoke-virtual {p0, v7}, Lcom/lzx/iteam/ChatActivity;->startActivity(Landroid/content/Intent;)V

    .line 949
    invoke-virtual {p0}, Lcom/lzx/iteam/ChatActivity;->finish()V

    goto :goto_0

    .line 926
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 19
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1331
    invoke-super/range {p0 .. p1}, Lcom/lzx/iteam/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1333
    const-string v3, "imagePath"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mImagePath:Ljava/lang/String;

    .line 1334
    const-string v3, "chat_group_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1335
    const-string v3, "chat_group_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;

    .line 1336
    const-string v3, "chat_group_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mGroupName:Ljava/lang/String;

    .line 1337
    const-string v3, "userType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mUserType:Ljava/lang/String;

    .line 1338
    const-string v3, "creatorName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mCreatorName:Ljava/lang/String;

    .line 1339
    const-string v3, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mType:Ljava/lang/String;

    .line 1341
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mGroupName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mGroupCount:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/lzx/iteam/ChatActivity;->initViewData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mBitMap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 1343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mBitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mBitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1346
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mBitMap:Landroid/graphics/Bitmap;

    .line 1348
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mImagePath:Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/lzx/iteam/util/PhotoUtil;->readBitmapFromPath(Landroid/app/Activity;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mBitMap:Landroid/graphics/Bitmap;

    .line 1349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mBitMap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mBitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mBitMap:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/lzx/iteam/util/PhotoUtil;->compressImage(Landroid/graphics/Bitmap;)[B

    move-result-object v18

    .line 1351
    .local v18, "bytes":[B
    invoke-static/range {v18 .. v18}, Lcom/lzx/iteam/util/StringUtil;->compressByteArrayByGzip([B)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mPicData:Ljava/lang/String;

    .line 1352
    const-string v3, "0"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mIsActive:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1353
    const-string v3, "\u5bf9\u4e0d\u8d77\uff0c\u8be5\u5c0f\u7ec4\u5df2\u89e3\u6563,\u65e0\u6cd5\u53d1\u9001\u6d88\u606f"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1360
    .end local v18    # "bytes":[B
    :cond_3
    :goto_0
    return-void

    .line 1356
    .restart local v18    # "bytes":[B
    :cond_4
    new-instance v2, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    const/16 v3, 0x67

    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/ChatActivity;->mUserId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/ChatActivity;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lzx/iteam/ChatActivity;->mAvatar:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;

    const/4 v11, 0x1

    const-string v12, ""

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/ChatActivity;->mPicData:Ljava/lang/String;

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const/16 v17, 0x1

    invoke-direct/range {v2 .. v17}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1357
    .local v2, "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xbb8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/lzx/iteam/ChatActivity;->sendMessage(Landroid/os/Message;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 379
    invoke-super {p0}, Lcom/lzx/iteam/BaseActivity;->onResume()V

    .line 380
    const-string v0, "chat_activity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    sget-boolean v0, Lcom/lzx/iteam/util/Constants;->IS_DELETE:Z

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 384
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->bindData(Ljava/util/List;)V

    .line 385
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lzx/iteam/util/Constants;->IS_DELETE:Z

    .line 387
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 629
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 596
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 598
    :pswitch_0
    if-nez p2, :cond_0

    .line 600
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mChatMessageList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mNewTime:Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->mNewTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSendTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 602
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSendTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mNewTime:Ljava/lang/String;

    .line 604
    iget v0, p0, Lcom/lzx/iteam/ChatActivity;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/ChatActivity;->page:I

    .line 606
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    if-eqz v0, :cond_1

    .line 607
    iget v0, p0, Lcom/lzx/iteam/ChatActivity;->mIsNone:I

    if-nez v0, :cond_2

    .line 608
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 614
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mNewTime:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lzx/iteam/ChatActivity;->getData(Ljava/lang/String;)V

    goto :goto_0

    .line 610
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 616
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 596
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0426
        :pswitch_0
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/16 v9, 0x8

    const/4 v3, 0x1

    .line 1255
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1283
    :cond_0
    :goto_0
    return v8

    .line 1258
    :pswitch_0
    :try_start_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/ChatActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    :goto_1
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mMoreLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mSoundLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    :goto_2
    iput-boolean v0, p0, Lcom/lzx/iteam/ChatActivity;->visible:Z

    .line 1263
    iget-boolean v0, p0, Lcom/lzx/iteam/ChatActivity;->visible:Z

    if-eqz v0, :cond_0

    .line 1264
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3dcc0000    # -45.0f

    const/4 v2, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    .line 1265
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 1266
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 1267
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mIvMore:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->anim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1268
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mMoreLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1269
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1270
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mSoundLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1259
    :catch_0
    move-exception v7

    .line 1260
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    move v0, v3

    .line 1262
    goto :goto_2

    .line 1255
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0426
        :pswitch_0
    .end packed-switch
.end method

.method public sendImage(ILandroid/content/Intent;)V
    .locals 19
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 1426
    const/4 v3, -0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_2

    .line 1427
    const-string v3, "imagePath"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mImagePath:Ljava/lang/String;

    .line 1430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mBitMap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 1431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mBitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mBitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1434
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mBitMap:Landroid/graphics/Bitmap;

    .line 1436
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mImagePath:Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/lzx/iteam/util/PhotoUtil;->readBitmapFromPath(Landroid/app/Activity;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mBitMap:Landroid/graphics/Bitmap;

    .line 1448
    const-string v3, "0"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity;->mIsActive:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1449
    const-string v3, "\u5bf9\u4e0d\u8d77\uff0c\u8be5\u5c0f\u7ec4\u5df2\u89e3\u6563,\u65e0\u6cd5\u53d1\u9001\u6d88\u606f"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1467
    :cond_2
    :goto_0
    return-void

    .line 1452
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mBitMap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mBitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mBitMap:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/lzx/iteam/util/PhotoUtil;->compressImage(Landroid/graphics/Bitmap;)[B

    move-result-object v18

    .line 1454
    .local v18, "bytes":[B
    invoke-static/range {v18 .. v18}, Lcom/lzx/iteam/util/StringUtil;->compressByteArrayByGzip([B)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/ChatActivity;->mPicData:Ljava/lang/String;

    .line 1455
    new-instance v2, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    const/16 v3, 0x67

    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/ChatActivity;->mUserId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/ChatActivity;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lzx/iteam/ChatActivity;->mAvatar:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;

    const/4 v11, 0x1

    const-string v12, ""

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/ChatActivity;->mPicData:Ljava/lang/String;

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const/16 v17, 0x1

    invoke-direct/range {v2 .. v17}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1460
    .local v2, "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/ChatActivity;->sendImageIQ([BLcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    goto :goto_0
.end method

.method public sendImageIQ([BLcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 12
    .param p1, "bytes"    # [B
    .param p2, "chatMsg"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .prologue
    const/4 v11, 0x1

    .line 1779
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    .line 1780
    .local v10, "uuid":Ljava/util/UUID;
    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 1781
    .local v1, "uniqueId":Ljava/lang/String;
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v0

    invoke-interface {v0, v1, p1, p2}, Lcom/lzx/iteam/service/aidl/INetService;->sendImageIQ(Ljava/lang/String;[BLcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;

    move-result-object v6

    .line 1782
    .local v6, "customTokenIQ":Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;
    if-eqz v6, :cond_0

    .line 1783
    invoke-virtual {v6}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 1784
    .local v2, "token":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->getImageFile()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->getImageFile()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1785
    invoke-virtual {v6}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->getImageFile()[B

    move-result-object v3

    invoke-virtual {v6}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->getChatMoreMsg()Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/ChatActivity;->setPhoto(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    .line 1788
    .end local v2    # "token":Ljava/lang/String;
    :cond_0
    new-instance v8, Lcom/lzx/iteam/ChatActivity$14;

    invoke-direct {v8, p0, v1, p2}, Lcom/lzx/iteam/ChatActivity$14;-><init>(Lcom/lzx/iteam/ChatActivity;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    .line 1821
    .local v8, "task":Ljava/util/TimerTask;
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .line 1822
    .local v9, "timer":Ljava/util/Timer;
    iget-wide v4, p0, Lcom/lzx/iteam/ChatActivity;->delayImage:J

    invoke-virtual {v9, v8, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1826
    .end local v1    # "uniqueId":Ljava/lang/String;
    .end local v6    # "customTokenIQ":Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;
    .end local v8    # "task":Ljava/util/TimerTask;
    .end local v9    # "timer":Ljava/util/Timer;
    .end local v10    # "uuid":Ljava/util/UUID;
    :goto_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 1827
    sget-object v0, Lcom/lzx/iteam/ChatActivity;->tags:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSendTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1828
    invoke-virtual {p2, v11}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->setIsSuccess(Z)V

    .line 1829
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSendTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->setMsgID(Ljava/lang/String;)V

    .line 1830
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    invoke-virtual {v0, p2}, Lcom/lzx/iteam/provider/MessageDB;->addChatMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    .line 1831
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1832
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    invoke-virtual {v0, v11}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->setShowPercent(Z)V

    .line 1833
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    iget-object v3, p0, Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->bindData(Ljava/util/List;)V

    .line 1834
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mChatMessageList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 1837
    :cond_1
    return-void

    .line 1823
    :catch_0
    move-exception v7

    .line 1824
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendMessage(Landroid/os/Message;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 7
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "chatMsg"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .prologue
    .line 958
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 959
    .local v3, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "grp"

    iget-object v6, p0, Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getMsgType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 962
    .local v2, "msgType":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mt"

    invoke-direct {v4, v5, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 963
    const-string v1, ""

    .line 964
    .local v1, "msgContent":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getMsgType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 978
    :goto_0
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "ct"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v6

    iget-object v6, v6, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 982
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 983
    new-instance v0, Lcom/lzx/iteam/net/SendGroupMsg;

    iget-object v4, p0, Lcom/lzx/iteam/ChatActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v4}, Lcom/lzx/iteam/net/SendGroupMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 984
    .local v0, "groupMsg":Lcom/lzx/iteam/net/SendGroupMsg;
    const-string v4, "/api/msg/sendg"

    iput-object v4, v0, Lcom/lzx/iteam/net/SendGroupMsg;->mApi:Ljava/lang/String;

    .line 985
    iput-object v3, v0, Lcom/lzx/iteam/net/SendGroupMsg;->mParams:Ljava/util/List;

    .line 986
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execChatHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 988
    return-void

    .line 966
    .end local v0    # "groupMsg":Lcom/lzx/iteam/net/SendGroupMsg;
    :pswitch_0
    invoke-virtual {p2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .line 967
    goto :goto_0

    .line 969
    :pswitch_1
    invoke-virtual {p2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getVoiceContent()Ljava/lang/String;

    move-result-object v1

    .line 970
    goto :goto_0

    .line 972
    :pswitch_2
    invoke-virtual {p2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getImageContent()Ljava/lang/String;

    move-result-object v1

    .line 973
    goto :goto_0

    .line 975
    :pswitch_3
    invoke-virtual {p2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getDocContent()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 964
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public sendSoundIQ(Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 16
    .param p1, "mSoundData"    # Ljava/lang/String;
    .param p2, "voiceMsg"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .prologue
    .line 1842
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v12

    .line 1843
    .local v12, "uuid":Ljava/util/UUID;
    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 1844
    .local v3, "uniqueId":Ljava/lang/String;
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v2, v3, v0, v1}, Lcom/lzx/iteam/service/aidl/INetService;->sendSoundIQ(Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;

    move-result-object v8

    .line 1845
    .local v8, "customTokenIQ":Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;
    if-eqz v8, :cond_0

    .line 1846
    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->getToken()Ljava/lang/String;

    move-result-object v4

    .line 1847
    .local v4, "token":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 1848
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->getSoundFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1849
    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->getSoundFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->getChatMoreMsg()Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/lzx/iteam/ChatActivity;->setVoice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    .line 1851
    .end local v4    # "token":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    :cond_0
    new-instance v10, Lcom/lzx/iteam/ChatActivity$15;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v10, v0, v3, v1}, Lcom/lzx/iteam/ChatActivity$15;-><init>(Lcom/lzx/iteam/ChatActivity;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    .line 1884
    .local v10, "task":Ljava/util/TimerTask;
    new-instance v11, Ljava/util/Timer;

    invoke-direct {v11}, Ljava/util/Timer;-><init>()V

    .line 1885
    .local v11, "timer":Ljava/util/Timer;
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lzx/iteam/ChatActivity;->delayImage:J

    invoke-virtual {v11, v10, v14, v15}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1890
    .end local v3    # "uniqueId":Ljava/lang/String;
    .end local v8    # "customTokenIQ":Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;
    .end local v10    # "task":Ljava/util/TimerTask;
    .end local v11    # "timer":Ljava/util/Timer;
    .end local v12    # "uuid":Ljava/util/UUID;
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1891
    sget-object v2, Lcom/lzx/iteam/ChatActivity;->tags:Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSendTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1892
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->setIsSuccess(Z)V

    .line 1893
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSendTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->setMsgID(Ljava/lang/String;)V

    .line 1894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ChatActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/provider/MessageDB;->addChatMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    .line 1895
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->setShowProgress(Z)V

    .line 1897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;

    invoke-virtual {v2, v5}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->bindData(Ljava/util/List;)V

    .line 1898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ChatActivity;->mChatMessageList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 1901
    :cond_1
    return-void

    .line 1887
    :catch_0
    move-exception v9

    .line 1888
    .local v9, "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendTextMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 9
    .param p1, "chatMsg"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .prologue
    const/4 v8, 0x1

    .line 1714
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    .line 1715
    .local v4, "uuid":Ljava/util/UUID;
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 1716
    .local v3, "uniqueId":Ljava/lang/String;
    const-string v5, "\u6d4b\u8bd5"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v5

    invoke-interface {v5, v3, p1}, Lcom/lzx/iteam/service/aidl/INetService;->sendTextMessage(Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Z

    .line 1718
    const-string v5, "\u6d4b\u8bd5"

    const-string v6, "2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    new-instance v1, Lcom/lzx/iteam/ChatActivity$13;

    invoke-direct {v1, p0, v3, p1}, Lcom/lzx/iteam/ChatActivity$13;-><init>(Lcom/lzx/iteam/ChatActivity;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    .line 1759
    .local v1, "task":Ljava/util/TimerTask;
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 1760
    .local v2, "timer":Ljava/util/Timer;
    iget-wide v6, p0, Lcom/lzx/iteam/ChatActivity;->delayText:J

    invoke-virtual {v2, v1, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1765
    .end local v1    # "task":Ljava/util/TimerTask;
    .end local v2    # "timer":Ljava/util/Timer;
    .end local v3    # "uniqueId":Ljava/lang/String;
    .end local v4    # "uuid":Ljava/util/UUID;
    :goto_0
    sget-object v5, Lcom/lzx/iteam/ChatActivity;->tags:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSendTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1766
    iget-object v5, p0, Lcom/lzx/iteam/ChatActivity;->mEdInput:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1767
    invoke-virtual {p1, v8}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->setIsSuccess(Z)V

    .line 1768
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSendTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->setMsgID(Ljava/lang/String;)V

    .line 1769
    iget-object v5, p0, Lcom/lzx/iteam/ChatActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    invoke-virtual {v5, p1}, Lcom/lzx/iteam/provider/MessageDB;->addChatMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    .line 1770
    iget-object v5, p0, Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1771
    iget-object v5, p0, Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    invoke-virtual {v5, v8}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->setShowTextProgress(Z)V

    .line 1772
    iget-object v5, p0, Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    iget-object v6, p0, Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->bindData(Ljava/util/List;)V

    .line 1773
    iget-object v5, p0, Lcom/lzx/iteam/ChatActivity;->mChatMessageList:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setSelection(I)V

    .line 1774
    return-void

    .line 1761
    :catch_0
    move-exception v0

    .line 1762
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDatas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1904
    .local p1, "chatMoreMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;>;"
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1905
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1906
    return-void
.end method

.method public setPhoto(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 8
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "file"    # [B
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "chatMsg"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .prologue
    const/4 v1, 0x0

    .line 1530
    if-eqz p2, :cond_0

    .line 1531
    const-string v0, "\u4e03\u725b--token"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    :cond_0
    if-eqz p4, :cond_1

    .line 1533
    const-string v0, "\u4e03\u725b--fileName"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    :cond_1
    invoke-static {p0}, Lcom/lzx/iteam/DialerApp;->getUploadManager(Landroid/content/Context;)Lcom/qiniu/android/storage/UploadManager;

    move-result-object v7

    .line 1536
    .local v7, "uploadManager":Lcom/qiniu/android/storage/UploadManager;
    new-instance v6, Lcom/lzx/iteam/ChatActivity$10;

    invoke-direct {v6, p0, p1, p5}, Lcom/lzx/iteam/ChatActivity$10;-><init>(Lcom/lzx/iteam/ChatActivity;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    .line 1568
    new-instance v0, Lcom/qiniu/android/storage/UploadOptions;

    const/4 v3, 0x0

    .line 1569
    new-instance v4, Lcom/lzx/iteam/ChatActivity$11;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/ChatActivity$11;-><init>(Lcom/lzx/iteam/ChatActivity;)V

    move-object v2, v1

    move-object v5, v1

    .line 1568
    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/storage/UploadOptions;-><init>(Ljava/util/Map;Ljava/lang/String;ZLcom/qiniu/android/storage/UpProgressHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    move-object v1, v7

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, v6

    move-object v6, v0

    .line 1535
    invoke-virtual/range {v1 .. v6}, Lcom/qiniu/android/storage/UploadManager;->put([BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    .line 1577
    return-void
.end method

.method public setVoice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 6
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "chatMsg"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .prologue
    .line 1580
    if-eqz p2, :cond_0

    .line 1581
    const-string v0, "\u4e03\u725b--token"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :cond_0
    if-eqz p4, :cond_1

    .line 1583
    const-string v0, "\u4e03\u725b--fileName"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    :cond_1
    invoke-static {p0}, Lcom/lzx/iteam/DialerApp;->getUploadManager(Landroid/content/Context;)Lcom/qiniu/android/storage/UploadManager;

    move-result-object v0

    .line 1585
    new-instance v4, Lcom/lzx/iteam/ChatActivity$12;

    invoke-direct {v4, p0, p1, p5}, Lcom/lzx/iteam/ChatActivity$12;-><init>(Lcom/lzx/iteam/ChatActivity;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    .line 1617
    const/4 v5, 0x0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p2

    .line 1584
    invoke-virtual/range {v0 .. v5}, Lcom/qiniu/android/storage/UploadManager;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    .line 1618
    return-void
.end method

.method public stopPlay()V
    .locals 2

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;

    invoke-virtual {v0}, Lcom/lzx/iteam/util/MediaPlayUtil;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;

    invoke-virtual {v0}, Lcom/lzx/iteam/util/MediaPlayUtil;->stop()V

    .line 1012
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mRpbPlaySound:Lcom/lzx/iteam/widget/RoundProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/RoundProgressBar;->setVisibility(I)V

    .line 1013
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mRpbPlaySound:Lcom/lzx/iteam/widget/RoundProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/RoundProgressBar;->setProgress(I)V

    .line 1016
    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1205
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mIvRecord:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1206
    iput-object v6, p0, Lcom/lzx/iteam/ChatActivity;->mScaleBigAnimation:Landroid/view/animation/ScaleAnimation;

    .line 1207
    iput-object v6, p0, Lcom/lzx/iteam/ChatActivity;->mScaleLittleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 1208
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mTvSoundBack:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1209
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mTvSoundRecord:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1210
    iget v0, p0, Lcom/lzx/iteam/ChatActivity;->mTime:I

    if-ge v0, v5, :cond_1

    .line 1211
    invoke-virtual {p0}, Lcom/lzx/iteam/ChatActivity;->deleteSoundFileUnSend()V

    .line 1212
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mSoundBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1213
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mSoundSendAndCancle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1214
    iput-boolean v5, p0, Lcom/lzx/iteam/ChatActivity;->isCanceled:Z

    .line 1215
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mContext:Landroid/content/Context;

    const-string v1, "\u5f55\u97f3\u65f6\u95f4\u592a\u77ed\uff0c\u957f\u6309\u5f00\u59cb\u5f55\u97f3"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1228
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v6}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1230
    :try_start_0
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 1231
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1232
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    :goto_1
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1245
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1246
    iput-object v6, p0, Lcom/lzx/iteam/ChatActivity;->mRecorder:Landroid/media/MediaRecorder;

    .line 1247
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1250
    :cond_0
    return-void

    .line 1217
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mIvRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1218
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mIvPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1219
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mSoundBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1220
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mSoundSendAndCancle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1221
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mTvSoundLength:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1222
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mTvSoundNotice:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1224
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mTvSoundLength:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/lzx/iteam/ChatActivity;->mTime:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    const-string v0, "record_test"

    const-string v1, "\u5f55\u97f3\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1234
    :catch_0
    move-exception v0

    const-string v0, "recoder"

    const-string v1, "stop() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iput-boolean v5, p0, Lcom/lzx/iteam/ChatActivity;->isCanceled:Z

    .line 1236
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mIvRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1237
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mIvPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1238
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mSoundBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1239
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mSoundSendAndCancle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1240
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity;->mTvSoundLength:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1241
    const-string v0, "\u5f55\u97f3\u53d1\u751f\u9519\u8bef,\u8bf7\u91cd\u65b0\u5f55\u97f3"

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1242
    const-string v0, "record_test"

    const-string v1, "\u5f55\u97f3\u53d1\u751f\u9519\u8bef"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
