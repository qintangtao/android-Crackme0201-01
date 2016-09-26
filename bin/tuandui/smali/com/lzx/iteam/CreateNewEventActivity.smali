.class public Lcom/lzx/iteam/CreateNewEventActivity;
.super Landroid/app/Activity;
.source "CreateNewEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;
.implements Lcom/lzx/iteam/adapter/VoteAdapter$OnUpdateLinster;


# static fields
.field private static final GET_QN_TOKEN:I = 0x3e8

.field private static final TAKE_PHOTO:I = 0x3ec


# instance fields
.field private adapter:Lcom/lzx/iteam/gridimg/ImageAdapter;

.field private c:Ljava/util/Calendar;

.field private curDate:I

.field private curHour:I

.field private curMinute:I

.field private curMonth:I

.field private curYear:I

.field private day:Lcom/lzx/iteam/selectdate/WheelView;

.field private hour:Lcom/lzx/iteam/selectdate/WheelView;

.field private imageArray:Lorg/json/JSONArray;

.field private images:Ljava/lang/String;

.field private isClickable:Z

.field private isQrcode:Ljava/lang/String;

.field private isShow:Z

.field private keyByte:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/lzx/iteam/CreateNewEventActivity;

.field private mAuthor:Ljava/lang/String;

.field private mBitMap:Landroid/graphics/Bitmap;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mCreateEventAddReceiver:Landroid/widget/ImageView;

.field private mCreateEventAddReceiverArrow:Landroid/widget/ImageView;

.field private mCreateEventCancle:Landroid/widget/TextView;

.field private mCreateEventContent:Landroid/widget/EditText;

.field private mCreateEventContentTitle:Landroid/widget/TextView;

.field private mCreateEventLayout:Landroid/widget/ScrollView;

.field private mCreateEventOk:Landroid/widget/TextView;

.field private mCreateEventReceiverName:Landroid/widget/TextView;

.field private mCreateEventTheme:Landroid/widget/EditText;

.field private mCreateEventTitle:Landroid/widget/RelativeLayout;

.field private mDateSelectPop:Landroid/widget/PopupWindow;

.field private mEndDay:I

.field private mEndHour:I

.field private mEndMinute:I

.field private mEndMonth:I

.field private mEndTime:J

.field private mEndYear:I

.field private mEventActiviteAddress:Ljava/lang/String;

.field private mEventActiviteTime:Ljava/lang/String;

.field private mEventAddress:Landroid/widget/EditText;

.field private mEventAuthor:Landroid/widget/EditText;

.field private mEventAvatar:Ljava/lang/String;

.field private mEventDB:Lcom/lzx/iteam/provider/EventsMsgDB;

.field private mEventEndTime:Ljava/lang/String;

.field private mEventId:Ljava/lang/String;

.field private mEventName:Ljava/lang/String;

.field private mEventPart1:Landroid/widget/EditText;

.field private mEventPart2:Landroid/widget/EditText;

.field private mEventPart3:Landroid/widget/EditText;

.field private mEventReceiverBack:Landroid/widget/LinearLayout;

.field private mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

.field private mEventReceiverTitle:Landroid/widget/RelativeLayout;

.field private mEventTheme:Ljava/lang/String;

.field private mEventType:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHintPart1:Ljava/lang/String;

.field private mHintPart2:Ljava/lang/String;

.field private mHintPart3:Ljava/lang/String;

.field private mImageCount:I

.field private mImageHLinearLayout:Landroid/widget/LinearLayout;

.field private mImageHScrollView:Landroid/widget/HorizontalScrollView;

.field private mIvTakePhoto:Landroid/widget/ImageView;

.field private mLayoutHelp:Landroid/widget/LinearLayout;

.field private mLayoutPart1:Landroid/widget/LinearLayout;

.field private mLayoutPart2:Landroid/widget/LinearLayout;

.field private mLayoutPart3:Landroid/widget/LinearLayout;

.field private mLlCreateEventImage:Landroid/widget/LinearLayout;

.field private mMoreWindow:Landroid/widget/PopupWindow;

.field private mPart1:Ljava/lang/String;

.field private mPart2:Ljava/lang/String;

.field private mPart3:Ljava/lang/String;

.field private mPassVoteData:Ljava/lang/String;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mReceiverMsg:Ljava/lang/String;

.field private mRlEndTime:Landroid/widget/RelativeLayout;

.field private mRlEventActiviteAddress:Landroid/widget/RelativeLayout;

.field private mRlEventActiviteTime:Landroid/widget/RelativeLayout;

.field private mRlEventAuthor:Landroid/widget/RelativeLayout;

.field private mRlEventReceiver:Landroid/widget/RelativeLayout;

.field private mRlEventTitle:Landroid/widget/RelativeLayout;

.field private mRlOpenQrcode:Landroid/widget/RelativeLayout;

.field private mSelectIv:Landroid/widget/ImageView;

.field private mShowImageLayout:Landroid/widget/LinearLayout;

.field private mStartDay:I

.field private mStartHour:I

.field private mStartMinute:I

.field private mStartMonth:I

.field private mStartTime:J

.field private mStartYear:I

.field private mTbQrcode:Landroid/widget/ToggleButton;

.field private mTimeContinuePop:Landroid/widget/PopupWindow;

.field private mTvCreateEventAddress:Landroid/widget/TextView;

.field private mTvCreateEventTime:Landroid/widget/TextView;

.field private mTvEndTime:Landroid/widget/TextView;

.field private mTvEventTime:Landroid/widget/TextView;

.field private mTvNote:Landroid/widget/TextView;

.field private mTvNoticeTitle:Landroid/widget/TextView;

.field private mTvPreView:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private mViewPart1:Landroid/view/View;

.field private mViewPart2:Landroid/view/View;

.field private mVoteAdapter:Lcom/lzx/iteam/adapter/VoteAdapter;

.field private mVoteData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVoteList:Lcom/lzx/iteam/widget/MyListView;

.field private mWaitDialog:Landroid/app/Dialog;

.field private mins:Lcom/lzx/iteam/selectdate/WheelView;

.field private month:Lcom/lzx/iteam/selectdate/WheelView;

.field scrollListener:Lcom/lzx/iteam/selectdate/OnWheelScrollListener;

.field private year:Lcom/lzx/iteam/selectdate/WheelView;

.field private years:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->isClickable:Z

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mReceiverMsg:Ljava/lang/String;

    .line 100
    const-string v0, "1"

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->isQrcode:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->keyByte:Ljava/util/List;

    .line 147
    new-instance v0, Lcom/lzx/iteam/CreateNewEventActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/CreateNewEventActivity$1;-><init>(Lcom/lzx/iteam/CreateNewEventActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mHandler:Landroid/os/Handler;

    .line 1310
    new-instance v0, Lcom/lzx/iteam/CreateNewEventActivity$2;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/CreateNewEventActivity$2;-><init>(Lcom/lzx/iteam/CreateNewEventActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->scrollListener:Lcom/lzx/iteam/selectdate/OnWheelScrollListener;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/CreateNewEventActivity;Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->isClickable:Z

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/CreateNewEventActivity;)V
    .locals 0

    .prologue
    .line 1539
    invoke-direct {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->httpReqDlgDismiss()V

    return-void
.end method

.method static synthetic access$10(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mReceiverMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventTheme:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$15(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart2:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$17(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart3:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart3:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$19(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAuthor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/CreateNewEventActivity;)Lcom/lzx/iteam/util/PreferenceUtil;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    return-object v0
.end method

.method static synthetic access$20(Lcom/lzx/iteam/CreateNewEventActivity;)J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$21(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->c:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$22(Lcom/lzx/iteam/CreateNewEventActivity;)I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartMonth:I

    return v0
.end method

.method static synthetic access$23(Lcom/lzx/iteam/CreateNewEventActivity;)I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartDay:I

    return v0
.end method

.method static synthetic access$24(Lcom/lzx/iteam/CreateNewEventActivity;)I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndHour:I

    return v0
.end method

.method static synthetic access$25(Lcom/lzx/iteam/CreateNewEventActivity;)I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndMinute:I

    return v0
.end method

.method static synthetic access$26(Lcom/lzx/iteam/CreateNewEventActivity;J)V
    .locals 1

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J

    return-void
.end method

.method static synthetic access$27(Lcom/lzx/iteam/CreateNewEventActivity;)J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J

    return-wide v0
.end method

.method static synthetic access$28(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->getNotice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$29(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->images:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/CreateNewEventActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method static synthetic access$30(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAddress:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$31(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$32(Lcom/lzx/iteam/CreateNewEventActivity;I)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartYear:I

    return-void
.end method

.method static synthetic access$33(Lcom/lzx/iteam/CreateNewEventActivity;I)V
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartMonth:I

    return-void
.end method

.method static synthetic access$34(Lcom/lzx/iteam/CreateNewEventActivity;)Lcom/lzx/iteam/selectdate/WheelView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    return-object v0
.end method

.method static synthetic access$35(Lcom/lzx/iteam/CreateNewEventActivity;I)V
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartDay:I

    return-void
.end method

.method static synthetic access$36(Lcom/lzx/iteam/CreateNewEventActivity;)Lcom/lzx/iteam/selectdate/WheelView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    return-object v0
.end method

.method static synthetic access$37(Lcom/lzx/iteam/CreateNewEventActivity;I)V
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartHour:I

    return-void
.end method

.method static synthetic access$38(Lcom/lzx/iteam/CreateNewEventActivity;)Lcom/lzx/iteam/selectdate/WheelView;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    return-object v0
.end method

.method static synthetic access$39(Lcom/lzx/iteam/CreateNewEventActivity;I)V
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartMinute:I

    return-void
.end method

.method static synthetic access$4(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$40(Lcom/lzx/iteam/CreateNewEventActivity;)Z
    .locals 1

    .prologue
    .line 1216
    invoke-direct {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->isOverTime()Z

    move-result v0

    return v0
.end method

.method static synthetic access$41(Lcom/lzx/iteam/CreateNewEventActivity;)I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartMinute:I

    return v0
.end method

.method static synthetic access$42(Lcom/lzx/iteam/CreateNewEventActivity;)I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartHour:I

    return v0
.end method

.method static synthetic access$43(Lcom/lzx/iteam/CreateNewEventActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventActiviteTime:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$44(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvEventTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$45(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventActiviteTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$46(Lcom/lzx/iteam/CreateNewEventActivity;)I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartYear:I

    return v0
.end method

.method static synthetic access$47(Lcom/lzx/iteam/CreateNewEventActivity;I)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndYear:I

    return-void
.end method

.method static synthetic access$48(Lcom/lzx/iteam/CreateNewEventActivity;I)V
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndMonth:I

    return-void
.end method

.method static synthetic access$49(Lcom/lzx/iteam/CreateNewEventActivity;I)V
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndDay:I

    return-void
.end method

.method static synthetic access$5(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->keyByte:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$50(Lcom/lzx/iteam/CreateNewEventActivity;I)V
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndHour:I

    return-void
.end method

.method static synthetic access$51(Lcom/lzx/iteam/CreateNewEventActivity;I)V
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndMinute:I

    return-void
.end method

.method static synthetic access$52(Lcom/lzx/iteam/CreateNewEventActivity;)I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndYear:I

    return v0
.end method

.method static synthetic access$53(Lcom/lzx/iteam/CreateNewEventActivity;)I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndMonth:I

    return v0
.end method

.method static synthetic access$54(Lcom/lzx/iteam/CreateNewEventActivity;)I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndDay:I

    return v0
.end method

.method static synthetic access$55(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvEndTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$56(Lcom/lzx/iteam/CreateNewEventActivity;J)V
    .locals 1

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartTime:J

    return-void
.end method

.method static synthetic access$57(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$58(Lcom/lzx/iteam/CreateNewEventActivity;)V
    .locals 0

    .prologue
    .line 1206
    invoke-direct {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->setEndTime()V

    return-void
.end method

.method static synthetic access$59(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/CreateNewEventActivity;)I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->curYear:I

    return v0
.end method

.method static synthetic access$60(Lcom/lzx/iteam/CreateNewEventActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventEndTime:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$61(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventEndTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$62(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mImageHLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$63(Lcom/lzx/iteam/CreateNewEventActivity;)I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mImageCount:I

    return v0
.end method

.method static synthetic access$64(Lcom/lzx/iteam/CreateNewEventActivity;I)V
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mImageCount:I

    return-void
.end method

.method static synthetic access$65(Lcom/lzx/iteam/CreateNewEventActivity;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->imageArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic access$66(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/CreateNewEventActivity;)Lcom/lzx/iteam/selectdate/WheelView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/CreateNewEventActivity;II)V
    .locals 0

    .prologue
    .line 1389
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/CreateNewEventActivity;->initDay(II)V

    return-void
.end method

.method static synthetic access$9(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    return-object v0
.end method

.method private getDay(II)I
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 1333
    const/16 v0, 0x1e

    .line 1334
    .local v0, "day":I
    const/4 v1, 0x0

    .line 1335
    .local v1, "flag":Z
    rem-int/lit8 v2, p1, 0x4

    packed-switch v2, :pswitch_data_0

    .line 1340
    const/4 v1, 0x0

    .line 1343
    :goto_0
    packed-switch p2, :pswitch_data_1

    .line 1357
    :pswitch_0
    const/16 v0, 0x1e

    .line 1360
    :goto_1
    return v0

    .line 1337
    :pswitch_1
    const/4 v1, 0x1

    .line 1338
    goto :goto_0

    .line 1351
    :pswitch_2
    const/16 v0, 0x1f

    .line 1352
    goto :goto_1

    .line 1354
    :pswitch_3
    if-eqz v1, :cond_0

    const/16 v0, 0x1d

    .line 1355
    :goto_2
    goto :goto_1

    .line 1354
    :cond_0
    const/16 v0, 0x1c

    goto :goto_2

    .line 1335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 1343
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getIntentData()V
    .locals 24

    .prologue
    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    move-object/from16 v20, v0

    const-string v21, "draft_event_id"

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mEventId:Ljava/lang/String;

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    move-object/from16 v20, v0

    const-string v21, "avatar"

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAvatar:Ljava/lang/String;

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/CreateNewEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 345
    .local v10, "intent":Landroid/content/Intent;
    const-string v20, "event_msg"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v20

    if-eqz v20, :cond_7

    .line 346
    const-string v20, "event_msg"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 347
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v20, "event_bundle"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/bean/EventListData;

    .line 349
    .local v7, "eventData":Lcom/lzx/iteam/bean/EventListData;
    invoke-virtual {v7}, Lcom/lzx/iteam/bean/EventListData;->getEventType()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    .line 350
    invoke-virtual {v7}, Lcom/lzx/iteam/bean/EventListData;->getEventName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mEventName:Ljava/lang/String;

    .line 351
    invoke-virtual {v7}, Lcom/lzx/iteam/bean/EventListData;->getReceiver()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mReceiverMsg:Ljava/lang/String;

    .line 352
    invoke-virtual {v7}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mEventTheme:Ljava/lang/String;

    .line 353
    invoke-virtual {v7}, Lcom/lzx/iteam/bean/EventListData;->getContent1()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mPart1:Ljava/lang/String;

    .line 354
    invoke-virtual {v7}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle1()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart1:Ljava/lang/String;

    .line 355
    invoke-virtual {v7}, Lcom/lzx/iteam/bean/EventListData;->getContent2()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mPart2:Ljava/lang/String;

    .line 356
    invoke-virtual {v7}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle2()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart2:Ljava/lang/String;

    .line 357
    invoke-virtual {v7}, Lcom/lzx/iteam/bean/EventListData;->getContent3()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mPart3:Ljava/lang/String;

    .line 358
    invoke-virtual {v7}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle3()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart3:Ljava/lang/String;

    .line 359
    invoke-virtual {v7}, Lcom/lzx/iteam/bean/EventListData;->getContent1()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mPassVoteData:Ljava/lang/String;

    .line 360
    invoke-virtual {v7}, Lcom/lzx/iteam/bean/EventListData;->getThumbImage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->images:Ljava/lang/String;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->images:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->images:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_8

    .line 366
    :cond_0
    invoke-virtual {v7}, Lcom/lzx/iteam/bean/EventListData;->getActivityTime()Ljava/lang/String;

    move-result-object v18

    .line 367
    .local v18, "time":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/lzx/iteam/bean/EventListData;->getEndTime()Ljava/lang/String;

    move-result-object v6

    .line 368
    .local v6, "endTime":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/lzx/iteam/bean/EventListData;->getIsQrcode()Ljava/lang/String;

    move-result-object v16

    .line 370
    .local v16, "qrcode":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    const-string v20, "0"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 371
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lzx/iteam/CreateNewEventActivity;->mStartTime:J

    .line 372
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartTime:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/lzx/iteam/util/DateUtil;->getAllTime(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mEventActiviteTime:Ljava/lang/String;

    .line 373
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartTime:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/lzx/iteam/util/DateUtil;->getMonth(J)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mStartMonth:I

    .line 374
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartTime:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/lzx/iteam/util/DateUtil;->getDay(J)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mStartDay:I

    .line 376
    :cond_1
    invoke-static {v6}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 377
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J

    .line 378
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/lzx/iteam/util/DateUtil;->getHour(J)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mEndHour:I

    .line 379
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/lzx/iteam/util/DateUtil;->getMinute(J)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mEndMinute:I

    .line 380
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndHour:I

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndMinute:I

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 381
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/lzx/iteam/util/DateUtil;->getHourAndMin(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mEventEndTime:Ljava/lang/String;

    .line 384
    :cond_2
    invoke-static/range {v16 .. v16}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 385
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->isQrcode:Ljava/lang/String;

    .line 387
    :cond_3
    invoke-virtual {v7}, Lcom/lzx/iteam/bean/EventListData;->getActivitySite()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mEventActiviteAddress:Ljava/lang/String;

    .line 388
    invoke-virtual {v7}, Lcom/lzx/iteam/bean/EventListData;->getAuthor()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mAuthor:Ljava/lang/String;

    .line 390
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .local v17, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v11, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mReceiverMsg:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 394
    .local v11, "jsonArray":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-lt v8, v0, :cond_9

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventReceiverName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventReceiverName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_4

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 407
    .local v15, "message":Landroid/os/Message;
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v8    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v15    # "message":Landroid/os/Message;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvTitle:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventTheme:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlEventTitle:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventTheme:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventTheme:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 422
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "1"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvNote:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f080189

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CreateNewEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlEventTitle:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvNoticeTitle:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const-string v21, "\u516c\u544a\u6807\u9898: "

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlEventAuthor:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mAuthor:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAuthor:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mAuthor:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 430
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mLayoutPart1:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mViewPart1:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPart1:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPart1:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 575
    :goto_4
    new-instance v20, Lcom/lzx/iteam/gridimg/ImageAdapter;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/lzx/iteam/gridimg/ImageAdapter;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->adapter:Lcom/lzx/iteam/gridimg/ImageAdapter;

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->adapter:Lcom/lzx/iteam/gridimg/ImageAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v13, v2}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->initData(ZLjava/util/ArrayList;Lcom/lzx/iteam/gridimg/ImageAdapter;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->setHandleGridView(Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;)V

    .line 580
    const-string v20, "is_show"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->isShow:Z

    .line 581
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->isShow:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvPreView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventOk:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlEventReceiver:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventAddReceiver:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventTheme:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart2:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart3:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 596
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v6    # "endTime":Ljava/lang/String;
    .end local v7    # "eventData":Lcom/lzx/iteam/bean/EventListData;
    .end local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v16    # "qrcode":Ljava/lang/String;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    .end local v18    # "time":Ljava/lang/String;
    :cond_7
    return-void

    .line 362
    .restart local v4    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "eventData":Lcom/lzx/iteam/bean/EventListData;
    :cond_8
    aget-object v9, v21, v20

    .line 363
    .local v9, "image":Ljava/lang/String;
    sget-object v23, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 395
    .end local v9    # "image":Ljava/lang/String;
    .restart local v6    # "endTime":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    .restart local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v16    # "qrcode":Ljava/lang/String;
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    .restart local v18    # "time":Ljava/lang/String;
    :cond_9
    :try_start_1
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 396
    .local v14, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v11, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 397
    .local v12, "jsonObject":Lorg/json/JSONObject;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "user_name"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string v20, "text"

    const-string v21, "user_name"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v20, "user_id"

    const-string v21, "user_id"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v20, "icon"

    const-string v21, "user_image"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v20, "contact_id"

    const-string v21, "contact_id"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 394
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 409
    .end local v8    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v5

    .line 410
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 417
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "4"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlEventTitle:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventTheme:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 436
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const-string v21, "\u516c\u544a\u5185\u5bb9"

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 439
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "7"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvNote:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f08018a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CreateNewEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlEventTitle:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvNoticeTitle:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const-string v21, "\u6d3b\u52a8\u4e3b\u9898: "

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlEventActiviteTime:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlEventActiviteAddress:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mAuthor:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAuthor:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mAuthor:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 448
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventActiviteTime:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_e

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvEventTime:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventActiviteTime:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventActiviteAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_f

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAddress:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventActiviteAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 455
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mLayoutPart1:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mViewPart1:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPart1:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_10

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPart1:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 461
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const-string v21, "\u6d3b\u52a8\u5185\u5bb9"

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 464
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "8"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvNote:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f08018b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CreateNewEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlEventTitle:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvNoticeTitle:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const-string v21, "\u6295\u7968\u6807\u9898: "

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mVoteList:Lcom/lzx/iteam/widget/MyListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/lzx/iteam/widget/MyListView;->setVisibility(I)V

    .line 469
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mVoteData:Ljava/util/ArrayList;

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPassVoteData:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_12

    const-string v20, ","

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPassVoteData:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 471
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mVoteData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mVoteData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_13
    new-instance v20, Lcom/lzx/iteam/adapter/VoteAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mVoteData:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/lzx/iteam/adapter/VoteAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/CreateNewEventActivity;->mVoteAdapter:Lcom/lzx/iteam/adapter/VoteAdapter;

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mVoteAdapter:Lcom/lzx/iteam/adapter/VoteAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/VoteAdapter;->setOnUpdateLinster(Lcom/lzx/iteam/adapter/VoteAdapter$OnUpdateLinster;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mVoteList:Lcom/lzx/iteam/widget/MyListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mVoteAdapter:Lcom/lzx/iteam/adapter/VoteAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/lzx/iteam/widget/MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_4

    .line 474
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPassVoteData:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, ","

    const/16 v22, -0x1

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v19

    .line 475
    .local v19, "votes":[Ljava/lang/String;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_13

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mVoteData:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    aget-object v21, v19, v8

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 484
    .end local v8    # "i":I
    .end local v19    # "votes":[Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "9"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvNote:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f08018c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CreateNewEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvNoticeTitle:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const-string v21, "\u7b7e\u5230\u4e3b\u9898: "

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvCreateEventTime:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const-string v21, "\u7b7e\u5230\u65f6\u95f4: "

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvCreateEventAddress:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const-string v21, "\u5730\u70b9: "

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mLlCreateEventImage:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlEventActiviteTime:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlEventActiviteAddress:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlEndTime:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlOpenQrcode:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventActiviteTime:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_16

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvEventTime:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventActiviteTime:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventEndTime:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_17

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvEndTime:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventEndTime:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->isQrcode:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/lzx/iteam/CreateNewEventActivity;->setNotice(Ljava/lang/String;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventActiviteAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_18

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAddress:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventActiviteAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 506
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mLayoutPart1:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mViewPart1:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPart1:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_19

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPart1:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 512
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const-string v21, "\u5907\u6ce8"

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 516
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvNote:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f08018d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CreateNewEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart3:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1f

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mLayoutPart3:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPart3:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1b

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart3:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPart3:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 525
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mLayoutPart2:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPart2:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1c

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart2:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPart2:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 531
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mLayoutPart1:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPart1:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1d

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPart1:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 523
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart3:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "\u8bf7\u586b\u5199"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart3:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 529
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart2:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "\u8bf7\u586b\u5199"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart2:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 534
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart1:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1e

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "\u8bf7\u586b\u5199"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart1:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 537
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const-string v21, "\u8bf7\u586b\u5199\u5185\u5bb9"

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 541
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart2:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_23

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mLayoutPart2:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mViewPart2:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPart2:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_20

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart2:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPart2:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 551
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mLayoutPart1:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPart1:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_21

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPart1:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 549
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart2:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "\u8bf7\u586b\u5199"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart2:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 554
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart1:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_22

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "\u8bf7\u586b\u5199"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart1:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 557
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const-string v21, "\u8bf7\u586b\u5199\u5185\u5bb9"

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 561
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mLayoutPart1:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setMinLines(I)V

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mViewPart1:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPart1:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_24

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mPart1:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 566
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart1:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_25

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "\u8bf7\u586b\u5199"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart1:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 569
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const-string v21, "\u8bf7\u586b\u5199\u5185\u5bb9"

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method private getNotice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTbQrcode:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const-string v0, "1"

    .line 336
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private httpReqDlgDismiss()V
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mWaitDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1541
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1542
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mWaitDialog:Landroid/app/Dialog;

    .line 1544
    :cond_0
    return-void
.end method

.method private httpReqDlgShow()V
    .locals 1

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mWaitDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mActivity:Lcom/lzx/iteam/CreateNewEventActivity;

    invoke-static {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->waitDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mWaitDialog:Landroid/app/Dialog;

    .line 1529
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1530
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1534
    :cond_0
    return-void
.end method

.method private initDay(II)V
    .locals 4
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .prologue
    const/4 v3, 0x1

    .line 1390
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/CreateNewEventActivity;->getDay(II)I

    move-result v0

    .line 1391
    .local v0, "count":I
    new-instance v1, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;

    const-string v2, "%02d"

    invoke-direct {v1, p0, v3, v0, v2}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1392
    .local v1, "numericWheelAdapter":Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;
    const-string v2, " \u65e5"

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->setLabel(Ljava/lang/String;)V

    .line 1394
    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/selectdate/WheelView;->setViewAdapter(Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;)V

    .line 1395
    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/selectdate/WheelView;->setCyclic(Z)V

    .line 1397
    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/WheelView;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-le v2, v0, :cond_0

    .line 1398
    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 1400
    :cond_0
    return-void
.end method

.method private initHour()V
    .locals 4

    .prologue
    .line 1406
    new-instance v0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;

    const/4 v1, 0x0

    const/16 v2, 0x17

    const-string v3, "%02d"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1407
    .local v0, "numericWheelAdapter":Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;
    const-string v1, " \u65f6"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->setLabel(Ljava/lang/String;)V

    .line 1409
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/selectdate/WheelView;->setViewAdapter(Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;)V

    .line 1410
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/selectdate/WheelView;->setCyclic(Z)V

    .line 1411
    return-void
.end method

.method private initMins()V
    .locals 6

    .prologue
    .line 1417
    new-instance v0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;

    const/4 v2, 0x0

    const/16 v3, 0xb

    const-string v4, "%02d"

    const/4 v5, 0x5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    .line 1418
    .local v0, "numericWheelAdapter":Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;
    const-string v1, " \u5206"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->setLabel(Ljava/lang/String;)V

    .line 1420
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/selectdate/WheelView;->setViewAdapter(Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;)V

    .line 1421
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/selectdate/WheelView;->setCyclic(Z)V

    .line 1422
    return-void
.end method

.method private initMonth()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1378
    new-instance v0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;

    const/16 v1, 0xc

    const-string v2, "%02d"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 1379
    .local v0, "numericWheelAdapter":Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;
    const-string v1, " \u6708"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->setLabel(Ljava/lang/String;)V

    .line 1381
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/selectdate/WheelView;->setViewAdapter(Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;)V

    .line 1382
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/selectdate/WheelView;->setCyclic(Z)V

    .line 1383
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->scrollListener:Lcom/lzx/iteam/selectdate/OnWheelScrollListener;

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/selectdate/WheelView;->addScrollingListener(Lcom/lzx/iteam/selectdate/OnWheelScrollListener;)V

    .line 1384
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 253
    const v0, 0x7f0e0247

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventTitle:Landroid/widget/RelativeLayout;

    .line 254
    const v0, 0x7f0e024c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventReceiverTitle:Landroid/widget/RelativeLayout;

    .line 255
    const v0, 0x7f0e0250

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventLayout:Landroid/widget/ScrollView;

    .line 256
    const v0, 0x7f0e0248

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventCancle:Landroid/widget/TextView;

    .line 257
    const v0, 0x7f0e024b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventOk:Landroid/widget/TextView;

    .line 258
    const v0, 0x7f0e0253

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventReceiverName:Landroid/widget/TextView;

    .line 259
    const v0, 0x7f0e0258

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventTheme:Landroid/widget/EditText;

    .line 260
    const v0, 0x7f0e026a

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventContentTitle:Landroid/widget/TextView;

    .line 261
    const v0, 0x7f0e026b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventContent:Landroid/widget/EditText;

    .line 262
    const v0, 0x7f0e0254

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventAddReceiver:Landroid/widget/ImageView;

    .line 263
    const v0, 0x7f0e0255

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventAddReceiverArrow:Landroid/widget/ImageView;

    .line 264
    const v0, 0x7f0e024d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventReceiverBack:Landroid/widget/LinearLayout;

    .line 265
    const v0, 0x7f0e027c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/gridimg/AllEasyGridView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    .line 266
    const v0, 0x7f0e0256

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlEventTitle:Landroid/widget/RelativeLayout;

    .line 267
    const v0, 0x7f0e0251

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlEventReceiver:Landroid/widget/RelativeLayout;

    .line 268
    const v0, 0x7f0e0259

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlEventAuthor:Landroid/widget/RelativeLayout;

    .line 269
    const v0, 0x7f0e0257

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvNoticeTitle:Landroid/widget/TextView;

    .line 270
    const v0, 0x7f0e025b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAuthor:Landroid/widget/EditText;

    .line 271
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlEventReceiver:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventContentTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventReceiverBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventCancle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventAddReceiver:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    const v0, 0x7f0e024f

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvPreView:Landroid/widget/TextView;

    .line 278
    const v0, 0x7f0e0275

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvNote:Landroid/widget/TextView;

    .line 279
    const v0, 0x7f0e0249

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mLayoutHelp:Landroid/widget/LinearLayout;

    .line 280
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mLayoutHelp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    const v0, 0x7f0e026e

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    .line 283
    const v0, 0x7f0e0271

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart2:Landroid/widget/EditText;

    .line 284
    const v0, 0x7f0e0274

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart3:Landroid/widget/EditText;

    .line 285
    const v0, 0x7f0e026d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mLayoutPart1:Landroid/widget/LinearLayout;

    .line 286
    const v0, 0x7f0e0270

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mLayoutPart2:Landroid/widget/LinearLayout;

    .line 287
    const v0, 0x7f0e0273

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mLayoutPart3:Landroid/widget/LinearLayout;

    .line 288
    const v0, 0x7f0e024a

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvTitle:Landroid/widget/TextView;

    .line 289
    const v0, 0x7f0e026f

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mViewPart1:Landroid/view/View;

    .line 290
    const v0, 0x7f0e0272

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mViewPart2:Landroid/view/View;

    .line 293
    const v0, 0x7f0e025c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlEventActiviteTime:Landroid/widget/RelativeLayout;

    .line 294
    const v0, 0x7f0e0264

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlEventActiviteAddress:Landroid/widget/RelativeLayout;

    .line 295
    const v0, 0x7f0e025e

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvEventTime:Landroid/widget/TextView;

    .line 296
    const v0, 0x7f0e0266

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAddress:Landroid/widget/EditText;

    .line 297
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlEventActiviteTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    const v0, 0x7f0e026c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/MyListView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mVoteList:Lcom/lzx/iteam/widget/MyListView;

    .line 302
    const v0, 0x7f0e027a

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mSelectIv:Landroid/widget/ImageView;

    .line 303
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mSelectIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    const v0, 0x7f0e027b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mIvTakePhoto:Landroid/widget/ImageView;

    .line 305
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mIvTakePhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    const v0, 0x7f0e0277

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mImageHScrollView:Landroid/widget/HorizontalScrollView;

    .line 308
    const v0, 0x7f0e0278

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mImageHLinearLayout:Landroid/widget/LinearLayout;

    .line 309
    const v0, 0x7f0e0276

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mShowImageLayout:Landroid/widget/LinearLayout;

    .line 311
    const v0, 0x7f0e0260

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlEndTime:Landroid/widget/RelativeLayout;

    .line 312
    const v0, 0x7f0e0267

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlOpenQrcode:Landroid/widget/RelativeLayout;

    .line 313
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlEndTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mRlOpenQrcode:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    const v0, 0x7f0e025d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvCreateEventTime:Landroid/widget/TextView;

    .line 316
    const v0, 0x7f0e0265

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvCreateEventAddress:Landroid/widget/TextView;

    .line 317
    const v0, 0x7f0e0279

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mLlCreateEventImage:Landroid/widget/LinearLayout;

    .line 318
    const v0, 0x7f0e0262

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvEndTime:Landroid/widget/TextView;

    .line 319
    const v0, 0x7f0e0269

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTbQrcode:Landroid/widget/ToggleButton;

    .line 320
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTbQrcode:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 322
    return-void
.end method

.method private initYear(I)V
    .locals 3
    .param p1, "curYear"    # I

    .prologue
    .line 1367
    new-instance v0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;

    invoke-direct {v0, p0, p1, p1}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    .line 1368
    .local v0, "numericWheelAdapter":Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;
    const-string v1, " \u5e74"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->setLabel(Ljava/lang/String;)V

    .line 1370
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->year:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/selectdate/WheelView;->setViewAdapter(Lcom/lzx/iteam/selectdate/adapter/WheelViewAdapter;)V

    .line 1371
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->year:Lcom/lzx/iteam/selectdate/WheelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/selectdate/WheelView;->setCyclic(Z)V

    .line 1372
    return-void
.end method

.method private isOverTime()Z
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 1217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1219
    .local v8, "curTime":J
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->c:Ljava/util/Calendar;

    iget v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartYear:I

    iget v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartMonth:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartDay:I

    iget v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartHour:I

    iget v5, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartMinute:I

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1220
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 1222
    .local v10, "selectTime":J
    cmp-long v0, v10, v8

    if-lez v0, :cond_0

    .line 1223
    iput-wide v10, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartTime:J

    .line 1224
    const/4 v6, 0x1

    .line 1226
    :cond_0
    return v6
.end method

.method private setEndTime()V
    .locals 4

    .prologue
    .line 1207
    iget-wide v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/DateUtil;->getYear(J)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndYear:I

    .line 1208
    iget-wide v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/DateUtil;->getMonth(J)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndMonth:I

    .line 1209
    iget-wide v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/DateUtil;->getDay(J)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndDay:I

    .line 1210
    iget-wide v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/DateUtil;->getHour(J)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndHour:I

    .line 1211
    iget-wide v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/DateUtil;->getMinute(J)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndMinute:I

    .line 1212
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvEndTime:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/DateUtil;->getHourAndMin(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    return-void
.end method

.method private setImageMsg()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1468
    const/4 v2, 0x0

    .line 1469
    .local v2, "imgSize":I
    sget-object v7, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 1470
    sget-object v7, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1471
    if-lez v2, :cond_2

    .line 1475
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mImageHScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7, v10}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 1476
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mImageHLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1477
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v7, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v0, v7, :cond_1

    .line 1520
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 1478
    .restart local v0    # "i":I
    :cond_1
    sget-object v7, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1479
    .local v1, "image":Ljava/lang/String;
    move v5, v0

    .line 1480
    .local v5, "position":I
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03009c

    iget-object v9, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mImageHLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 1481
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f0e0455

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1482
    .local v3, "mIvDelete":Landroid/widget/ImageView;
    const v7, 0x7f0e0454

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1483
    .local v4, "mIvImage":Landroid/widget/ImageView;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "file://"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionEventImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v7, v8, v4, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 1485
    new-instance v7, Lcom/lzx/iteam/CreateNewEventActivity$20;

    invoke-direct {v7, p0, v1, v6}, Lcom/lzx/iteam/CreateNewEventActivity$20;-><init>(Lcom/lzx/iteam/CreateNewEventActivity;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1500
    new-instance v7, Lcom/lzx/iteam/CreateNewEventActivity$21;

    invoke-direct {v7, p0, v5}, Lcom/lzx/iteam/CreateNewEventActivity$21;-><init>(Lcom/lzx/iteam/CreateNewEventActivity;I)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1510
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mImageHLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1477
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1514
    .end local v0    # "i":I
    .end local v1    # "image":Ljava/lang/String;
    .end local v3    # "mIvDelete":Landroid/widget/ImageView;
    .end local v4    # "mIvImage":Landroid/widget/ImageView;
    .end local v5    # "position":I
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mImageHScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setNotice(Ljava/lang/String;)V
    .locals 2
    .param p1, "notice"    # Ljava/lang/String;

    .prologue
    .line 325
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTbQrcode:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTbQrcode:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private showSavePop()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 893
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030083

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 894
    .local v1, "mainView":Landroid/view/View;
    const v4, 0x7f0e03c0

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 895
    .local v3, "yes":Landroid/widget/Button;
    new-instance v4, Lcom/lzx/iteam/CreateNewEventActivity$3;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/CreateNewEventActivity$3;-><init>(Lcom/lzx/iteam/CreateNewEventActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 943
    const v4, 0x7f0e03c1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 944
    .local v2, "no":Landroid/widget/Button;
    new-instance v4, Lcom/lzx/iteam/CreateNewEventActivity$4;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/CreateNewEventActivity$4;-><init>(Lcom/lzx/iteam/CreateNewEventActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 955
    const v4, 0x7f0e03c2

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 956
    .local v0, "cancel":Landroid/widget/Button;
    new-instance v4, Lcom/lzx/iteam/CreateNewEventActivity$5;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/CreateNewEventActivity$5;-><init>(Lcom/lzx/iteam/CreateNewEventActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 963
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    .line 964
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 965
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 966
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 967
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 968
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 969
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 970
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 971
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    const v5, 0x7f09000b

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 972
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    const/16 v5, 0x50

    invoke-virtual {v4, v1, v5, v9, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 973
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->update()V

    .line 975
    new-instance v4, Lcom/lzx/iteam/CreateNewEventActivity$6;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/CreateNewEventActivity$6;-><init>(Lcom/lzx/iteam/CreateNewEventActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 983
    return-void
.end method


# virtual methods
.method public addImage()V
    .locals 10

    .prologue
    .line 1549
    new-instance v9, Landroid/content/Intent;

    const-class v0, Lcom/lzx/iteam/ChooseContactByTeamActivity;

    invoke-direct {v9, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1550
    .local v9, "intent1":Landroid/content/Intent;
    const-string v0, "events_add_receiver"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1551
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1553
    .local v7, "bundle":Landroid/os/Bundle;
    new-instance v8, Lcom/lzx/iteam/bean/EventListData;

    invoke-direct {v8}, Lcom/lzx/iteam/bean/EventListData;-><init>()V

    .line 1554
    .local v8, "eventData":Lcom/lzx/iteam/bean/EventListData;
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 1555
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 1556
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mReceiverMsg:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1557
    const-string v0, ""

    invoke-virtual {v8, v0}, Lcom/lzx/iteam/bean/EventListData;->setReceiver(Ljava/lang/String;)V

    .line 1561
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventTheme:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventTitle(Ljava/lang/String;)V

    .line 1562
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    .line 1563
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/lzx/iteam/bean/EventListData;->setContent2(Ljava/lang/String;)V

    .line 1564
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/lzx/iteam/bean/EventListData;->setContent3(Ljava/lang/String;)V

    .line 1565
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart1:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V

    .line 1566
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart2:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle2(Ljava/lang/String;)V

    .line 1567
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart3:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle3(Ljava/lang/String;)V

    .line 1568
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAuthor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/lzx/iteam/bean/EventListData;->setAuthor(Ljava/lang/String;)V

    .line 1569
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/lzx/iteam/bean/EventListData;->setActivityTime(Ljava/lang/String;)V

    .line 1571
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->c:Ljava/util/Calendar;

    iget v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->curYear:I

    iget v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartMonth:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartDay:I

    iget v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndHour:I

    iget v5, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndMinute:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1572
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J

    .line 1573
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/lzx/iteam/bean/EventListData;->setEndTime(Ljava/lang/String;)V

    .line 1575
    invoke-direct {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->getNotice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/lzx/iteam/bean/EventListData;->setIsQrcode(Ljava/lang/String;)V

    .line 1576
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/lzx/iteam/bean/EventListData;->setActivitySite(Ljava/lang/String;)V

    .line 1577
    const-string v0, "8"

    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1578
    invoke-virtual {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->getPassVoteData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    .line 1580
    :cond_0
    const-string v0, "event_bundle"

    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1581
    const-string v0, "event_msg"

    invoke-virtual {v9, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1583
    invoke-virtual {p0, v9}, Lcom/lzx/iteam/CreateNewEventActivity;->startActivity(Landroid/content/Intent;)V

    .line 1584
    return-void

    .line 1559
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mReceiverMsg:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/lzx/iteam/bean/EventListData;->setReceiver(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public createNewActive()V
    .locals 10

    .prologue
    .line 1734
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1735
    .local v6, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sid"

    .line 1736
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1737
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "event_type"

    const-string v3, "7"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1738
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "recv_members"

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mReceiverMsg:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1739
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "event_title"

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventTheme:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1740
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "event_date"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartTime:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1741
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "event_address"

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAddress:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1742
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "event_content"

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1743
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->imageArray:Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->imageArray:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1744
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "attachment"

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->imageArray:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1746
    :cond_0
    new-instance v0, Lcom/lzx/iteam/net/CreateEventMsg;

    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    const-string v4, ""

    iget-object v5, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAvatar:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/lzx/iteam/net/CreateEventMsg;-><init>(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    .local v0, "createEventMsg":Lcom/lzx/iteam/net/CreateEventMsg;
    const-string v1, "/api/event/add_active"

    iput-object v1, v0, Lcom/lzx/iteam/net/CreateEventMsg;->mApi:Ljava/lang/String;

    .line 1748
    iput-object v6, v0, Lcom/lzx/iteam/net/CreateEventMsg;->mParams:Ljava/util/List;

    .line 1749
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 1751
    return-void
.end method

.method public createNewEvent()V
    .locals 12

    .prologue
    .line 1646
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1647
    .local v11, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sid"

    .line 1648
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1650
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "event_type"

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1652
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart3:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1653
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 1655
    .local v9, "content3":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "init_title"

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart3:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1656
    const-string v1, "content"

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart3:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1660
    :goto_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1662
    .local v8, "content2":Lorg/json/JSONObject;
    :try_start_1
    const-string v1, "init_title"

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart2:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1663
    const-string v1, "content"

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1667
    :goto_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 1669
    .local v7, "content1":Lorg/json/JSONObject;
    :try_start_2
    const-string v1, "init_title"

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart1:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1670
    const-string v1, "content"

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1675
    :goto_2
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 1676
    .local v6, "array":Lorg/json/JSONArray;
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1677
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1678
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1712
    .end local v8    # "content2":Lorg/json/JSONObject;
    .end local v9    # "content3":Lorg/json/JSONObject;
    :goto_3
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "recv_members"

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mReceiverMsg:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1714
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "event_title"

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventTheme:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1715
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "event_content"

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1716
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->imageArray:Lorg/json/JSONArray;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->imageArray:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1717
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "attachment"

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->imageArray:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1721
    :goto_4
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u53d1"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1722
    .local v4, "eventTypeName":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "event_templ_name"

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1723
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1724
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "author"

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAuthor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1726
    :cond_0
    new-instance v0, Lcom/lzx/iteam/net/CreateEventMsg;

    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAvatar:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/lzx/iteam/net/CreateEventMsg;-><init>(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    .local v0, "createEventMsg":Lcom/lzx/iteam/net/CreateEventMsg;
    const-string v1, "/api/event/add"

    iput-object v1, v0, Lcom/lzx/iteam/net/CreateEventMsg;->mApi:Ljava/lang/String;

    .line 1728
    iput-object v11, v0, Lcom/lzx/iteam/net/CreateEventMsg;->mParams:Ljava/util/List;

    .line 1729
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 1731
    return-void

    .line 1657
    .end local v0    # "createEventMsg":Lcom/lzx/iteam/net/CreateEventMsg;
    .end local v4    # "eventTypeName":Ljava/lang/String;
    .end local v6    # "array":Lorg/json/JSONArray;
    .end local v7    # "content1":Lorg/json/JSONObject;
    .restart local v9    # "content3":Lorg/json/JSONObject;
    :catch_0
    move-exception v10

    .line 1658
    .local v10, "e":Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 1664
    .end local v10    # "e":Lorg/json/JSONException;
    .restart local v8    # "content2":Lorg/json/JSONObject;
    :catch_1
    move-exception v10

    .line 1665
    .restart local v10    # "e":Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 1671
    .end local v10    # "e":Lorg/json/JSONException;
    .restart local v7    # "content1":Lorg/json/JSONObject;
    :catch_2
    move-exception v10

    .line 1672
    .restart local v10    # "e":Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 1680
    .end local v7    # "content1":Lorg/json/JSONObject;
    .end local v8    # "content2":Lorg/json/JSONObject;
    .end local v9    # "content3":Lorg/json/JSONObject;
    .end local v10    # "e":Lorg/json/JSONException;
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart2:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1681
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1683
    .restart local v8    # "content2":Lorg/json/JSONObject;
    :try_start_3
    const-string v1, "init_title"

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart2:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1684
    const-string v1, "content"

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1688
    :goto_5
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 1690
    .restart local v7    # "content1":Lorg/json/JSONObject;
    :try_start_4
    const-string v1, "init_title"

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart1:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1691
    const-string v1, "content"

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1696
    :goto_6
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 1697
    .restart local v6    # "array":Lorg/json/JSONArray;
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1698
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_3

    .line 1685
    .end local v6    # "array":Lorg/json/JSONArray;
    .end local v7    # "content1":Lorg/json/JSONObject;
    :catch_3
    move-exception v10

    .line 1686
    .restart local v10    # "e":Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 1692
    .end local v10    # "e":Lorg/json/JSONException;
    .restart local v7    # "content1":Lorg/json/JSONObject;
    :catch_4
    move-exception v10

    .line 1693
    .restart local v10    # "e":Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 1700
    .end local v7    # "content1":Lorg/json/JSONObject;
    .end local v8    # "content2":Lorg/json/JSONObject;
    .end local v10    # "e":Lorg/json/JSONException;
    :cond_2
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 1702
    .restart local v7    # "content1":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "init_title"

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart1:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1703
    const-string v1, "content"

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1708
    :goto_7
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 1709
    .restart local v6    # "array":Lorg/json/JSONArray;
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_3

    .line 1704
    .end local v6    # "array":Lorg/json/JSONArray;
    :catch_5
    move-exception v10

    .line 1705
    .restart local v10    # "e":Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7

    .line 1719
    .end local v10    # "e":Lorg/json/JSONException;
    .restart local v6    # "array":Lorg/json/JSONArray;
    :cond_3
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "attachment"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method public createNewReg()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 1796
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1797
    .local v6, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sid"

    .line 1798
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1799
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "event_type"

    const-string v3, "9"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1800
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "recv_members"

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mReceiverMsg:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1801
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "event_title"

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventTheme:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1802
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "start_datetime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartTime:J

    div-long/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1803
    iget-wide v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/DateUtil;->getHour(J)I

    move-result v1

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/DateUtil;->getMinute(J)I

    move-result v1

    if-nez v1, :cond_0

    .line 1804
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "end_datetime"

    const-string v3, "0"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1808
    :goto_0
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "is_qrcode"

    invoke-direct {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->getNotice()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1809
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "event_address"

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAddress:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1810
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "event_content"

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1811
    new-instance v0, Lcom/lzx/iteam/net/CreateEventMsg;

    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    const-string v4, ""

    iget-object v5, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAvatar:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/lzx/iteam/net/CreateEventMsg;-><init>(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    .local v0, "createEventMsg":Lcom/lzx/iteam/net/CreateEventMsg;
    const-string v1, "/api/event/calendar/add_meeting"

    iput-object v1, v0, Lcom/lzx/iteam/net/CreateEventMsg;->mApi:Ljava/lang/String;

    .line 1813
    iput-object v6, v0, Lcom/lzx/iteam/net/CreateEventMsg;->mParams:Ljava/util/List;

    .line 1814
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 1815
    return-void

    .line 1806
    .end local v0    # "createEventMsg":Lcom/lzx/iteam/net/CreateEventMsg;
    :cond_0
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "end_datetime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J

    div-long/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createNewVote()V
    .locals 13

    .prologue
    .line 1754
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1755
    .local v10, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sid"

    .line 1756
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1757
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "event_type"

    const-string v3, "8"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1758
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "recv_members"

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mReceiverMsg:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1759
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "event_title"

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventTheme:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1761
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 1762
    .local v6, "array":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->getPassVoteData()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mPassVoteData:Ljava/lang/String;

    .line 1763
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mPassVoteData:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1764
    .local v12, "votes":[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1765
    .local v7, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v1, v12

    if-lt v9, v1, :cond_0

    .line 1770
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 1771
    const-string v1, "\u81f3\u5c11\u586b\u5199\u4e24\u9879"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1772
    invoke-direct {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->httpReqDlgDismiss()V

    .line 1793
    :goto_1
    return-void

    .line 1766
    :cond_0
    aget-object v1, v12, v9

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1767
    aget-object v1, v12, v9

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1765
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1775
    :cond_2
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v9, v1, :cond_4

    .line 1785
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "event_content"

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1786
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->imageArray:Lorg/json/JSONArray;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->imageArray:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1787
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "attachment"

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->imageArray:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1789
    :cond_3
    new-instance v0, Lcom/lzx/iteam/net/CreateEventMsg;

    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    const-string v4, ""

    iget-object v5, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAvatar:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/lzx/iteam/net/CreateEventMsg;-><init>(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    .local v0, "createEventMsg":Lcom/lzx/iteam/net/CreateEventMsg;
    const-string v1, "/api/event/add_vote"

    iput-object v1, v0, Lcom/lzx/iteam/net/CreateEventMsg;->mApi:Ljava/lang/String;

    .line 1791
    iput-object v10, v0, Lcom/lzx/iteam/net/CreateEventMsg;->mParams:Ljava/util/List;

    .line 1792
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    goto :goto_1

    .line 1776
    .end local v0    # "createEventMsg":Lcom/lzx/iteam/net/CreateEventMsg;
    :cond_4
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 1778
    .local v11, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "init_title"

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v9, 0x41

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1779
    const-string v1, "content"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1780
    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1775
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1781
    :catch_0
    move-exception v8

    .line 1782
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method public delImage(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    .line 1588
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1589
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1591
    .local v7, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    iget-object v8, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mReceiverMsg:Ljava/lang/String;

    invoke-direct {v2, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1592
    .local v2, "jsonArray":Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 1593
    .local v6, "newJsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v1, v8, :cond_0

    .line 1617
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 1618
    iget-object v8, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventReceiverName:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1619
    iget-object v8, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventAddReceiverArrow:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1620
    iget-object v8, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventAddReceiver:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1626
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mReceiverMsg:Ljava/lang/String;

    .line 1627
    new-instance v8, Lcom/lzx/iteam/gridimg/ImageAdapter;

    const/4 v9, 0x1

    invoke-direct {v8, p0, v9}, Lcom/lzx/iteam/gridimg/ImageAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v8, p0, Lcom/lzx/iteam/CreateNewEventActivity;->adapter:Lcom/lzx/iteam/gridimg/ImageAdapter;

    .line 1628
    iget-object v8, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/lzx/iteam/CreateNewEventActivity;->adapter:Lcom/lzx/iteam/gridimg/ImageAdapter;

    invoke-virtual {v8, v9, v4, v10}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->initData(ZLjava/util/ArrayList;Lcom/lzx/iteam/gridimg/ImageAdapter;)V

    .line 1629
    iget-object v8, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v8, p0}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->setHandleGridView(Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;)V

    .line 1633
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "newJsonArray":Lorg/json/JSONArray;
    :goto_2
    return-void

    .line 1594
    .restart local v1    # "i":I
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "newJsonArray":Lorg/json/JSONArray;
    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1595
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "user_id"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    iget-object v8, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v8}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->getData()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    const-string v10, "user_id"

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1596
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1597
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1598
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "user_name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1599
    const-string v8, "text"

    const-string v9, "user_name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    const-string v8, "icon"

    const-string v9, "user_image"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    const-string v8, "user_id"

    const-string v9, "user_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    const-string v8, "contact_id"

    const-string v9, "contact_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1593
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1604
    :cond_2
    const-string v8, "0"

    const-string v9, "user_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1605
    const-string v8, "user_name"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    iget-object v8, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v8}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->getData()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    const-string v10, "text"

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1606
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1607
    .restart local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1608
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "user_name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    const-string v8, "text"

    const-string v9, "user_name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    const-string v8, "icon"

    const-string v9, "user_image"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    const-string v8, "user_id"

    const-string v9, "user_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    const-string v8, "contact_id"

    const-string v9, "contact_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 1630
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "newJsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 1631
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1622
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "newJsonArray":Lorg/json/JSONArray;
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventReceiverName:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1623
    iget-object v8, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventAddReceiverArrow:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1624
    iget-object v8, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventAddReceiver:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public getPassVoteData()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1923
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1924
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mVoteList:Lcom/lzx/iteam/widget/MyListView;

    invoke-virtual {v4}, Lcom/lzx/iteam/widget/MyListView;->getChildCount()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 1930
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1925
    :cond_0
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mVoteList:Lcom/lzx/iteam/widget/MyListView;

    invoke-virtual {v4, v1}, Lcom/lzx/iteam/widget/MyListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1926
    .local v2, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0e065d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1928
    .local v0, "et":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1924
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getQnToken(Ljava/lang/String;)V
    .locals 5
    .param p1, "keys"    # Ljava/lang/String;

    .prologue
    .line 1858
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1859
    .local v1, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1860
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "key"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1861
    new-instance v0, Lcom/lzx/iteam/net/GetQnTokenMsg;

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetQnTokenMsg;-><init>(Landroid/os/Message;)V

    .line 1862
    .local v0, "getQnTokenMsg":Lcom/lzx/iteam/net/GetQnTokenMsg;
    const-string v2, "/api/qn/get_event_token"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetQnTokenMsg;->mApi:Ljava/lang/String;

    .line 1863
    iput-object v1, v0, Lcom/lzx/iteam/net/GetQnTokenMsg;->mParams:Ljava/util/List;

    .line 1864
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 1865
    return-void
.end method

.method public getVoteData()V
    .locals 5

    .prologue
    .line 1939
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mVoteData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1940
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mVoteList:Lcom/lzx/iteam/widget/MyListView;

    invoke-virtual {v3}, Lcom/lzx/iteam/widget/MyListView;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 1946
    return-void

    .line 1941
    :cond_0
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mVoteList:Lcom/lzx/iteam/widget/MyListView;

    invoke-virtual {v3, v1}, Lcom/lzx/iteam/widget/MyListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1942
    .local v2, "layout":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0e065d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1944
    .local v0, "et":Landroid/widget/EditText;
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mVoteData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1940
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 1426
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1427
    sparse-switch p1, :sswitch_data_0

    .line 1465
    :cond_0
    :goto_0
    return-void

    .line 1429
    :sswitch_0
    if-ne p2, v5, :cond_1

    .line 1433
    invoke-direct {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->setImageMsg()V

    goto :goto_0

    .line 1434
    :cond_1
    const/16 v3, 0x64

    if-ne p2, v3, :cond_0

    .line 1435
    const-string v3, "imagePath"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1436
    .local v2, "imgPath":Ljava/lang/String;
    sget-object v3, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1437
    invoke-direct {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->setImageMsg()V

    goto :goto_0

    .line 1449
    .end local v2    # "imgPath":Ljava/lang/String;
    :sswitch_1
    sget-object v3, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    if-ne p2, v5, :cond_0

    .line 1450
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mFilePath:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/lzx/iteam/util/PhotoUtil;->readBitmapFromPath(Landroid/app/Activity;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1451
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/lzx/iteam/util/PhotoUtil;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 1452
    .local v1, "degree":I
    if-eqz v1, :cond_2

    .line 1453
    invoke-static {v0, v1}, Lcom/lzx/iteam/util/PhotoUtil;->rotaingImageView(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1454
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mFilePath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/lzx/iteam/util/PhotoUtil;->deleteFolderFile(Ljava/lang/String;Z)V

    .line 1455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/Yun/Images/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Yun/Images"

    invoke-static {v0, v4}, Lcom/lzx/iteam/util/PhotoUtil;->saveBitmaptoSdCard(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mFilePath:Ljava/lang/String;

    .line 1457
    :cond_2
    sget-object v3, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1458
    invoke-direct {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->setImageMsg()V

    goto :goto_0

    .line 1427
    :sswitch_data_0
    .sparse-switch
        0xbcf -> :sswitch_1
        0x2772 -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 24
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 644
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 646
    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->isShow:Z

    if-eqz v2, :cond_1

    .line 647
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/CreateNewEventActivity;->finish()V

    .line 663
    :goto_1
    :try_start_0
    const-string v2, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/CreateNewEventActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/CreateNewEventActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :goto_2
    invoke-static {}, Lcom/lzx/iteam/selectimage/Bimp;->deleteAllPhoto()V

    goto :goto_0

    .line 648
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventReceiverName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventTheme:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvEventTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAddress:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAuthor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    sget-object v2, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 649
    :cond_2
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    .local v20, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 651
    sget-object v2, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 654
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->images:Ljava/lang/String;

    .line 658
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/lzx/iteam/CreateNewEventActivity;->showSavePop()V

    goto/16 :goto_1

    .line 651
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 652
    .local v13, "image":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 656
    .end local v13    # "image":Ljava/lang/String;
    :cond_4
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->images:Ljava/lang/String;

    goto :goto_4

    .line 660
    .end local v20    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/CreateNewEventActivity;->finish()V

    goto/16 :goto_1

    .line 664
    :catch_0
    move-exception v11

    .line 665
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 672
    .end local v11    # "e":Ljava/lang/Exception;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventReceiverName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 673
    const-string v2, "\u5bf9\u4e0d\u8d77\uff0c\u60a8\u81f3\u5c11\u8981\u9009\u62e9\u4e00\u4f4d\u6536\u4ef6\u4eba"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 676
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventTheme:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 677
    const-string v2, "\u5bf9\u4e0d\u8d77\uff0c\u4e3b\u9898\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 681
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    const-string v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    const-string v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 682
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventActiviteTime:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 683
    const-string v2, "\u5bf9\u4e0d\u8d77\uff0c\u65f6\u95f4\u4e0d\u80fd\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 686
    :cond_9
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_a

    .line 687
    const-string v2, "\u5bf9\u4e0d\u8d77\uff0c\u65f6\u95f4\u5df2\u7ecf\u8fc7\u65f6"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 691
    :cond_a
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    const-string v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 692
    const-string v2, "\u5bf9\u4e0d\u8d77\uff0c\u7ed3\u675f\u65f6\u95f4\u4e0d\u80fd\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 697
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->c:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lzx/iteam/CreateNewEventActivity;->curYear:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartMonth:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartDay:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndHour:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndMinute:I

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J

    .line 699
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndHour:I

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndMinute:I

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_c

    .line 700
    const-string v2, "\u7ed3\u675f\u65f6\u95f4\u5c0f\u4e8e\u7b7e\u5230\u65f6\u95f4\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 704
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAddress:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 705
    const-string v2, "\u5bf9\u4e0d\u8d77\uff0c\u5730\u70b9\u4e0d\u80fd\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 709
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    const-string v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    const-string v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart3:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 711
    const-string v2, "\u5bf9\u4e0d\u8d77\uff0c\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 723
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/lzx/iteam/CreateNewEventActivity;->httpReqDlgShow()V

    .line 724
    sget-object v2, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_f

    .line 725
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->imageArray:Lorg/json/JSONArray;

    .line 726
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 727
    .restart local v20    # "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_10

    .line 758
    const/4 v2, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/CreateNewEventActivity;->getQnToken(Ljava/lang/String;)V

    .line 761
    .end local v20    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    const-string v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 762
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/CreateNewEventActivity;->createNewActive()V

    goto/16 :goto_0

    .line 727
    .restart local v20    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 728
    .restart local v13    # "image":Ljava/lang/String;
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 729
    .local v22, "token":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 730
    .local v19, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mBitMap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_12

    .line 731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mBitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_11

    .line 732
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mBitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 734
    :cond_11
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mBitMap:Landroid/graphics/Bitmap;

    .line 736
    :cond_12
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v3}, Lcom/lzx/iteam/util/PhotoUtil;->readBitmapFromPath(Landroid/app/Activity;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mBitMap:Landroid/graphics/Bitmap;

    .line 741
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mBitMap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mBitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_13

    .line 742
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mBitMap:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/lzx/iteam/util/PhotoUtil;->compressImage(Landroid/graphics/Bitmap;)[B

    move-result-object v10

    .line 743
    .local v10, "bytes":[B
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    .end local v10    # "bytes":[B
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CreateNewEventActivity;->keyByte:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    :try_start_1
    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    .line 750
    .local v18, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "type"

    const-string v4, "1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 751
    const-string v3, "data"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 752
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CreateNewEventActivity;->imageArray:Lorg/json/JSONArray;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    .line 753
    .end local v18    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v11

    .line 754
    .local v11, "e":Lorg/json/JSONException;
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_5

    .line 763
    .end local v11    # "e":Lorg/json/JSONException;
    .end local v13    # "image":Ljava/lang/String;
    .end local v19    # "key":Ljava/lang/String;
    .end local v20    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v22    # "token":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    const-string v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/CreateNewEventActivity;->createNewVote()V

    goto/16 :goto_0

    .line 765
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    const-string v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 766
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/CreateNewEventActivity;->createNewReg()V

    goto/16 :goto_0

    .line 768
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/CreateNewEventActivity;->createNewEvent()V

    goto/16 :goto_0

    .line 773
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/CreateNewEventActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/DialerApp;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/DialerApp;->setmEventToWhere(Ljava/lang/String;)V

    .line 774
    new-instance v16, Landroid/content/Intent;

    const-class v2, Lcom/lzx/iteam/ChooseContactByTeamActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 775
    .local v16, "intent1":Landroid/content/Intent;
    const-string v2, "events_add_receiver"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 777
    .local v9, "bundle":Landroid/os/Bundle;
    new-instance v12, Lcom/lzx/iteam/bean/EventListData;

    invoke-direct {v12}, Lcom/lzx/iteam/bean/EventListData;-><init>()V

    .line 778
    .local v12, "eventData":Lcom/lzx/iteam/bean/EventListData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mReceiverMsg:Ljava/lang/String;

    if-nez v2, :cond_18

    .line 781
    const-string v2, ""

    invoke-virtual {v12, v2}, Lcom/lzx/iteam/bean/EventListData;->setReceiver(Ljava/lang/String;)V

    .line 785
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventTheme:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/lzx/iteam/bean/EventListData;->setEventTitle(Ljava/lang/String;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/lzx/iteam/bean/EventListData;->setContent2(Ljava/lang/String;)V

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/lzx/iteam/bean/EventListData;->setContent3(Ljava/lang/String;)V

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart1:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V

    .line 790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart2:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle2(Ljava/lang/String;)V

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mHintPart3:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle3(Ljava/lang/String;)V

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAuthor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/lzx/iteam/bean/EventListData;->setAuthor(Ljava/lang/String;)V

    .line 793
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/lzx/iteam/bean/EventListData;->setActivityTime(Ljava/lang/String;)V

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->c:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lzx/iteam/CreateNewEventActivity;->curYear:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartMonth:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartDay:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndHour:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndMinute:I

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J

    .line 797
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/lzx/iteam/bean/EventListData;->setEndTime(Ljava/lang/String;)V

    .line 799
    invoke-direct/range {p0 .. p0}, Lcom/lzx/iteam/CreateNewEventActivity;->getNotice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/lzx/iteam/bean/EventListData;->setIsQrcode(Ljava/lang/String;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAddress:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/lzx/iteam/bean/EventListData;->setActivitySite(Ljava/lang/String;)V

    .line 801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    const-string v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 802
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/CreateNewEventActivity;->getPassVoteData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/lzx/iteam/bean/EventListData;->setContent1(Ljava/lang/String;)V

    .line 804
    :cond_17
    const-string v2, "event_bundle"

    invoke-virtual {v9, v2, v12}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 805
    const-string v2, "event_msg"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 806
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CreateNewEventActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 783
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mReceiverMsg:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/lzx/iteam/bean/EventListData;->setReceiver(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 809
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v12    # "eventData":Lcom/lzx/iteam/bean/EventListData;
    .end local v16    # "intent1":Landroid/content/Intent;
    :sswitch_3
    new-instance v17, Landroid/content/Intent;

    const-class v2, Lcom/lzx/iteam/ImageFileActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 810
    .local v17, "intent2":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CreateNewEventActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 813
    .end local v17    # "intent2":Landroid/content/Intent;
    :sswitch_4
    invoke-static/range {p0 .. p0}, Lcom/lzx/iteam/util/PhotoUtil;->doTakePhotoEvent(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mFilePath:Ljava/lang/String;

    goto/16 :goto_0

    .line 817
    :sswitch_5
    :try_start_2
    const-string v2, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/CreateNewEventActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/CreateNewEventActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 821
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventReceiverName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventTitle:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventReceiverTitle:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventLayout:Landroid/widget/ScrollView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->setVisibility(I)V

    .line 826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mShowImageLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 818
    :catch_2
    move-exception v11

    .line 819
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 830
    .end local v11    # "e":Ljava/lang/Exception;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventTitle:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventReceiverTitle:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventLayout:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->setVisibility(I)V

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mShowImageLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 837
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventContent:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventContent:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodManager;

    .line 839
    .local v14, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v14, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto/16 :goto_0

    .line 843
    .end local v14    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_8
    :try_start_3
    const-string v2, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/CreateNewEventActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/CreateNewEventActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 847
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/CreateNewEventActivity;->showDateSelectPop()V

    goto/16 :goto_0

    .line 844
    :catch_3
    move-exception v11

    .line 845
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 851
    .end local v11    # "e":Ljava/lang/Exception;
    :sswitch_9
    :try_start_4
    const-string v2, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/CreateNewEventActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/CreateNewEventActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 855
    :goto_9
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    .line 856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mActivity:Lcom/lzx/iteam/CreateNewEventActivity;

    const-string v3, "\u8bf7\u5148\u9009\u62e9\u7b7e\u5230\u65f6\u95f4"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 852
    :catch_4
    move-exception v11

    .line 853
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 858
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/CreateNewEventActivity;->showContinueDateSelectPop()V

    goto/16 :goto_0

    .line 862
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mTbQrcode:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->toggle()V

    goto/16 :goto_0

    .line 865
    :sswitch_b
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mActivity:Lcom/lzx/iteam/CreateNewEventActivity;

    const-class v3, Lcom/lzx/iteam/HelpActivity;

    invoke-direct {v15, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 867
    .local v15, "intent":Landroid/content/Intent;
    const-string v21, ""

    .line 868
    .local v21, "title":Ljava/lang/String;
    const/16 v23, 0x0

    .line 869
    .local v23, "type":I
    const-string v2, "4"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 870
    const-string v21, "\u5982\u4f55\u53d1\u5e03\u4e8b\u4ef6?"

    .line 871
    const/16 v23, 0x9

    .line 885
    :cond_1a
    :goto_a
    const-string v2, "title"

    move-object/from16 v0, v21

    invoke-virtual {v15, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 886
    const-string v2, "type"

    move/from16 v0, v23

    invoke-virtual {v15, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 887
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lzx/iteam/CreateNewEventActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 872
    :cond_1b
    const-string v2, "1"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 873
    const-string v21, "\u5982\u4f55\u53d1\u5e03\u516c\u544a?"

    .line 874
    const/16 v23, 0x6

    .line 875
    goto :goto_a

    :cond_1c
    const-string v2, "7"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 876
    const-string v21, "\u5982\u4f55\u53d1\u5e03\u6d3b\u52a8?"

    .line 877
    const/16 v23, 0x6

    .line 878
    goto :goto_a

    :cond_1d
    const-string v2, "8"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 879
    const-string v21, "\u5982\u4f55\u53d1\u5e03\u6295\u7968?"

    .line 880
    const/16 v23, 0x7

    .line 881
    goto :goto_a

    :cond_1e
    const-string v2, "9"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 882
    const-string v21, "\u5982\u4f55\u53d1\u5e03\u4f1a\u8bae\u901a\u77e5?"

    .line 883
    const/16 v23, 0x8

    goto :goto_a

    .line 644
    :sswitch_data_0
    .sparse-switch
        0x7f0e0248 -> :sswitch_0
        0x7f0e0249 -> :sswitch_b
        0x7f0e024b -> :sswitch_1
        0x7f0e024d -> :sswitch_6
        0x7f0e0251 -> :sswitch_5
        0x7f0e0254 -> :sswitch_2
        0x7f0e025c -> :sswitch_8
        0x7f0e0260 -> :sswitch_9
        0x7f0e0267 -> :sswitch_a
        0x7f0e026a -> :sswitch_7
        0x7f0e027a -> :sswitch_3
        0x7f0e027b -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 217
    const v0, 0x7f030055

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->setContentView(I)V

    .line 218
    iput-object p0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mActivity:Lcom/lzx/iteam/CreateNewEventActivity;

    .line 219
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 220
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 221
    new-instance v0, Lcom/lzx/iteam/provider/EventsMsgDB;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/provider/EventsMsgDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    .line 222
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->c:Ljava/util/Calendar;

    .line 223
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->curYear:I

    .line 224
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->curMonth:I

    .line 225
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->curDate:I

    .line 226
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->c:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->curHour:I

    .line 227
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->c:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->curMinute:I

    .line 228
    invoke-direct {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->initView()V

    .line 229
    invoke-static {p0}, Lcom/lzx/iteam/selectimage/Res;->init(Landroid/content/Context;)V

    .line 230
    invoke-direct {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->getIntentData()V

    .line 231
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1819
    packed-switch p1, :pswitch_data_0

    .line 1854
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_1
    return v3

    .line 1821
    :pswitch_0
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v3}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1822
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1823
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventReceiverTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1824
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventLayout:Landroid/widget/ScrollView;

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1825
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v3, v5}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->setVisibility(I)V

    .line 1826
    const/4 v3, 0x1

    goto :goto_1

    .line 1829
    :cond_0
    :try_start_0
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/CreateNewEventActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1833
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1834
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    iget-boolean v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->isShow:Z

    if-eqz v3, :cond_1

    .line 1835
    invoke-virtual {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->finish()V

    goto :goto_0

    .line 1830
    .end local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 1831
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1836
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventReceiverName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventTheme:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventPart1:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTvEventTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAddress:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEventAuthor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    sget-object v3, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 1837
    :cond_2
    sget-object v3, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1838
    sget-object v3, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1841
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->images:Ljava/lang/String;

    .line 1845
    :goto_4
    invoke-direct {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->showSavePop()V

    goto/16 :goto_0

    .line 1838
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1839
    .local v1, "image":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1843
    .end local v1    # "image":Ljava/lang/String;
    :cond_4
    const-string v3, ""

    iput-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->images:Ljava/lang/String;

    goto :goto_4

    .line 1847
    :cond_5
    invoke-static {}, Lcom/lzx/iteam/selectimage/Bimp;->deleteAllPhoto()V

    .line 1849
    invoke-virtual {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->finish()V

    goto/16 :goto_0

    .line 1819
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 237
    invoke-direct {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->setImageMsg()V

    .line 238
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventReceiverName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventAddReceiverArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventAddReceiver:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventTheme:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 243
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 249
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventAddReceiverArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mCreateEventAddReceiver:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onUpdateAdd(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mVoteData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1902
    const-string v0, "\u6700\u591a5\u4e2a\u9009\u9879"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1908
    :goto_0
    return-void

    .line 1904
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->getVoteData()V

    .line 1905
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mVoteData:Ljava/util/ArrayList;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1906
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mVoteAdapter:Lcom/lzx/iteam/adapter/VoteAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/VoteAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onUpdateRemove(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1912
    invoke-virtual {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->getVoteData()V

    .line 1913
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mVoteData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1914
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mVoteAdapter:Lcom/lzx/iteam/adapter/VoteAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/VoteAdapter;->notifyDataSetChanged()V

    .line 1915
    return-void
.end method

.method public queryImage(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1638
    return-void
.end method

.method public setPhoto(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 6
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "file"    # [B
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1869
    const-string v0, "\u4e03\u725b--token"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    const-string v0, "\u4e03\u725b--fileName"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    invoke-static {p0}, Lcom/lzx/iteam/DialerApp;->getUploadManager(Landroid/content/Context;)Lcom/qiniu/android/storage/UploadManager;

    move-result-object v0

    .line 1872
    new-instance v4, Lcom/lzx/iteam/CreateNewEventActivity$22;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/CreateNewEventActivity$22;-><init>(Lcom/lzx/iteam/CreateNewEventActivity;)V

    .line 1896
    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    .line 1871
    invoke-virtual/range {v0 .. v5}, Lcom/qiniu/android/storage/UploadManager;->put([BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    .line 1897
    return-void
.end method

.method public showContinueDateSelectPop()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 1128
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030053

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1129
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f0e0240

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1130
    .local v0, "continueTime1":Landroid/widget/TextView;
    const v7, 0x7f0e0241

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1131
    .local v1, "continueTime2":Landroid/widget/TextView;
    const v7, 0x7f0e0242

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1132
    .local v2, "continueTime3":Landroid/widget/TextView;
    const v7, 0x7f0e0243

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1133
    .local v3, "continueTime4":Landroid/widget/TextView;
    const v7, 0x7f0e0244

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1134
    .local v5, "continueTimeOther":Landroid/widget/TextView;
    const v7, 0x7f0e0245

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1135
    .local v4, "continueTimeCancle":Landroid/widget/TextView;
    new-instance v7, Lcom/lzx/iteam/CreateNewEventActivity$10;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/CreateNewEventActivity$10;-><init>(Lcom/lzx/iteam/CreateNewEventActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1143
    new-instance v7, Lcom/lzx/iteam/CreateNewEventActivity$11;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/CreateNewEventActivity$11;-><init>(Lcom/lzx/iteam/CreateNewEventActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1152
    new-instance v7, Lcom/lzx/iteam/CreateNewEventActivity$12;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/CreateNewEventActivity$12;-><init>(Lcom/lzx/iteam/CreateNewEventActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1160
    new-instance v7, Lcom/lzx/iteam/CreateNewEventActivity$13;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/CreateNewEventActivity$13;-><init>(Lcom/lzx/iteam/CreateNewEventActivity;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1169
    new-instance v7, Lcom/lzx/iteam/CreateNewEventActivity$14;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/CreateNewEventActivity$14;-><init>(Lcom/lzx/iteam/CreateNewEventActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1177
    new-instance v7, Lcom/lzx/iteam/CreateNewEventActivity$15;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/CreateNewEventActivity$15;-><init>(Lcom/lzx/iteam/CreateNewEventActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1185
    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    .line 1186
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1187
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1188
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1189
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1190
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1191
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v11}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1192
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v11}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1193
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    const v8, 0x7f09000b

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1194
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    const/16 v8, 0x50

    invoke-virtual {v7, v6, v8, v12, v12}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1195
    iget-object v7, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->update()V

    .line 1196
    new-instance v7, Lcom/lzx/iteam/CreateNewEventActivity$16;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/CreateNewEventActivity$16;-><init>(Lcom/lzx/iteam/CreateNewEventActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1203
    return-void
.end method

.method public showDateSelectPop()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 990
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300e1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 992
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0e0049

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/selectdate/WheelView;

    iput-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->year:Lcom/lzx/iteam/selectdate/WheelView;

    .line 993
    iget v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->curYear:I

    invoke-direct {p0, v4}, Lcom/lzx/iteam/CreateNewEventActivity;->initYear(I)V

    .line 994
    const v4, 0x7f0e004a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/selectdate/WheelView;

    iput-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;

    .line 995
    invoke-direct {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->initMonth()V

    .line 996
    const v4, 0x7f0e004b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/selectdate/WheelView;

    iput-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    .line 997
    iget v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->curYear:I

    iget v5, p0, Lcom/lzx/iteam/CreateNewEventActivity;->curMonth:I

    invoke-direct {p0, v4, v5}, Lcom/lzx/iteam/CreateNewEventActivity;->initDay(II)V

    .line 998
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->year:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v4, v7}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 999
    iget v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartMonth:I

    if-eqz v4, :cond_0

    .line 1000
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;

    iget v5, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartMonth:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 1004
    :goto_0
    iget v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartDay:I

    if-eqz v4, :cond_1

    .line 1005
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    iget v5, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartDay:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 1010
    :goto_1
    const v4, 0x7f0e05d3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/selectdate/WheelView;

    iput-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    .line 1011
    invoke-direct {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->initHour()V

    .line 1012
    const v4, 0x7f0e05d4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/selectdate/WheelView;

    iput-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    .line 1013
    invoke-direct {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->initMins()V

    .line 1015
    iget v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartHour:I

    if-eqz v4, :cond_2

    .line 1016
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    iget v5, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartHour:I

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 1026
    :goto_2
    const/4 v2, 0x0

    .line 1027
    .local v2, "current":I
    iget v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartMinute:I

    if-eqz v4, :cond_3

    .line 1028
    iget v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mStartMinute:I

    div-int/lit8 v2, v4, 0x5

    .line 1032
    :goto_3
    const/16 v4, 0xb

    if-ne v2, v4, :cond_4

    .line 1033
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    invoke-virtual {v4, v7}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 1038
    :goto_4
    const v4, 0x7f0e0048

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1039
    .local v0, "bt":Landroid/widget/TextView;
    new-instance v4, Lcom/lzx/iteam/CreateNewEventActivity$7;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/CreateNewEventActivity$7;-><init>(Lcom/lzx/iteam/CreateNewEventActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    const v4, 0x7f0e0047

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1095
    .local v1, "cancel":Landroid/widget/TextView;
    new-instance v4, Lcom/lzx/iteam/CreateNewEventActivity$8;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/CreateNewEventActivity$8;-><init>(Lcom/lzx/iteam/CreateNewEventActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1102
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    .line 1103
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1104
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1105
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1106
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1107
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1108
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1109
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1110
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    const v5, 0x7f09000b

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1111
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    const/16 v5, 0x50

    invoke-virtual {v4, v3, v5, v7, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1112
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->update()V

    .line 1113
    new-instance v4, Lcom/lzx/iteam/CreateNewEventActivity$9;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/CreateNewEventActivity$9;-><init>(Lcom/lzx/iteam/CreateNewEventActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1120
    return-void

    .line 1002
    .end local v0    # "bt":Landroid/widget/TextView;
    .end local v1    # "cancel":Landroid/widget/TextView;
    .end local v2    # "current":I
    :cond_0
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->month:Lcom/lzx/iteam/selectdate/WheelView;

    iget v5, p0, Lcom/lzx/iteam/CreateNewEventActivity;->curMonth:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 1007
    :cond_1
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->day:Lcom/lzx/iteam/selectdate/WheelView;

    iget v5, p0, Lcom/lzx/iteam/CreateNewEventActivity;->curDate:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto/16 :goto_1

    .line 1018
    :cond_2
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    iget v5, p0, Lcom/lzx/iteam/CreateNewEventActivity;->curHour:I

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto/16 :goto_2

    .line 1030
    .restart local v2    # "current":I
    :cond_3
    iget v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->curMinute:I

    div-int/lit8 v2, v4, 0x5

    goto/16 :goto_3

    .line 1035
    :cond_4
    iget-object v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto/16 :goto_4
.end method

.method public showEndDateSelectPop()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 1236
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300e3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1237
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0e05d3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/selectdate/WheelView;

    iput-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    .line 1238
    invoke-direct {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->initHour()V

    .line 1239
    const v3, 0x7f0e05d4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/selectdate/WheelView;

    iput-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    .line 1240
    invoke-direct {p0}, Lcom/lzx/iteam/CreateNewEventActivity;->initMins()V

    .line 1244
    iget v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndHour:I

    if-eqz v3, :cond_0

    .line 1245
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    iget v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndHour:I

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 1249
    :goto_0
    iget v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndMinute:I

    if-eqz v3, :cond_1

    .line 1250
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    iget v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mEndMinute:I

    div-int/lit8 v4, v4, 0x5

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    .line 1255
    :goto_1
    const v3, 0x7f0e0048

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1256
    .local v0, "bt":Landroid/widget/TextView;
    new-instance v3, Lcom/lzx/iteam/CreateNewEventActivity$17;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/CreateNewEventActivity$17;-><init>(Lcom/lzx/iteam/CreateNewEventActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1279
    const v3, 0x7f0e0047

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1280
    .local v1, "cancel":Landroid/widget/TextView;
    new-instance v3, Lcom/lzx/iteam/CreateNewEventActivity$18;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/CreateNewEventActivity$18;-><init>(Lcom/lzx/iteam/CreateNewEventActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1287
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    .line 1288
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1289
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1290
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1291
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1292
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1293
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1294
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1295
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    const v4, 0x7f09000b

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1296
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    const/16 v4, 0x50

    invoke-virtual {v3, v2, v4, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1297
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->update()V

    .line 1298
    new-instance v3, Lcom/lzx/iteam/CreateNewEventActivity$19;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/CreateNewEventActivity$19;-><init>(Lcom/lzx/iteam/CreateNewEventActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1305
    return-void

    .line 1247
    .end local v0    # "bt":Landroid/widget/TextView;
    .end local v1    # "cancel":Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;

    iget v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->curHour:I

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 1252
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;

    iget v4, p0, Lcom/lzx/iteam/CreateNewEventActivity;->curMinute:I

    div-int/lit8 v4, v4, 0x5

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/selectdate/WheelView;->setCurrentItem(I)V

    goto :goto_1
.end method

.method public showImageLayout(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 1954
    if-eqz p1, :cond_0

    .line 1956
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mImageHScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 1961
    :goto_0
    return-void

    .line 1959
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity;->mImageHScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_0
.end method
