.class public Lcom/lzx/iteam/FunctionFragment;
.super Landroid/support/v4/app/Fragment;
.source "FunctionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/FunctionFragment$ItemClickListener;
    }
.end annotation


# instance fields
.field private final GET_CALENDAR_STATUS:I

.field private final GET_TALK_NEW:I

.field private mActivity:Lcom/lzx/iteam/MainActivity;

.field private mApproval:Lcom/lzx/iteam/widget/TextMoreView;

.field private mAttendance:Lcom/lzx/iteam/widget/TextMoreView;

.field private mCardAddress:Landroid/widget/TextView;

.field private mCardCompany:Landroid/widget/TextView;

.field private mCardEmail:Landroid/widget/TextView;

.field private mCardName:Landroid/widget/TextView;

.field private mCardPhone:Landroid/widget/TextView;

.field private mCardPhoto:Landroid/widget/ImageView;

.field private mCardPosition:Landroid/widget/TextView;

.field private mCardSex:Landroid/widget/ImageView;

.field private mCircleNewImage:Landroid/widget/ImageView;

.field private mCircleNewMessage:Landroid/widget/RelativeLayout;

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mDraft:Lcom/lzx/iteam/widget/TextMoreView;

.field private mHandler:Landroid/os/Handler;

.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mKeyPad:Lcom/lzx/iteam/widget/TextMoreView;

.field private mMore:Landroid/widget/LinearLayout;

.field private mMoreWindow:Landroid/widget/PopupWindow;

.field private mMyAvatar:Ljava/lang/String;

.field private mMyName:Ljava/lang/String;

.field private mMySex:Ljava/lang/String;

.field private mName:Landroid/widget/TextView;

.field private mOnclicNoAlertDialog:Landroid/app/Dialog;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mRecommend:Lcom/lzx/iteam/widget/TextMoreView;

.field private mSchedule:Lcom/lzx/iteam/widget/TextMoreView;

.field private mSetting:Lcom/lzx/iteam/widget/TextMoreView;

.field private mShareUtil:Lcom/lzx/iteam/util/ShareUtil;

.field private mShareWindow:Landroid/widget/PopupWindow;

.field private mTvApprovalNew:Landroid/widget/TextView;

.field private mTvMessage:Landroid/widget/TextView;

.field private mTvScanf:Landroid/widget/TextView;

.field private mTvScheduleNew:Landroid/widget/TextView;

.field private mUid:Ljava/lang/String;

.field private myCircle:Lcom/lzx/iteam/widget/TextMoreView;

.field private mySpace:Lcom/lzx/iteam/widget/TextMoreView;

.field private nameCard:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private newTalkId:Ljava/lang/String;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mUid:Ljava/lang/String;

    .line 86
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lzx/iteam/FunctionFragment;->GET_TALK_NEW:I

    .line 87
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/lzx/iteam/FunctionFragment;->GET_CALENDAR_STATUS:I

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->newTalkId:Ljava/lang/String;

    .line 90
    new-instance v0, Lcom/lzx/iteam/FunctionFragment$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/FunctionFragment$1;-><init>(Lcom/lzx/iteam/FunctionFragment;)V

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method private GetCalendarStatus()V
    .locals 5

    .prologue
    .line 737
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 739
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    new-instance v0, Lcom/lzx/iteam/net/GetCalendarStatusMsg;

    iget-object v2, p0, Lcom/lzx/iteam/FunctionFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-direct {v0, v2, v3}, Lcom/lzx/iteam/net/GetCalendarStatusMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 741
    .local v0, "message":Lcom/lzx/iteam/net/GetCalendarStatusMsg;
    const-string v2, "/api/event/calendar/status"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetCalendarStatusMsg;->mApi:Ljava/lang/String;

    .line 742
    iput-object v1, v0, Lcom/lzx/iteam/net/GetCalendarStatusMsg;->mParams:Ljava/util/List;

    .line 743
    iget-object v2, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 744
    return-void
.end method

.method private GetNewMessage()V
    .locals 5

    .prologue
    .line 724
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 726
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    iget-object v2, p0, Lcom/lzx/iteam/FunctionFragment;->newTalkId:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 728
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "talk_id"

    iget-object v4, p0, Lcom/lzx/iteam/FunctionFragment;->newTalkId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    :cond_0
    new-instance v0, Lcom/lzx/iteam/net/GetTalkNewMsg;

    iget-object v2, p0, Lcom/lzx/iteam/FunctionFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-direct {v0, v2, v3}, Lcom/lzx/iteam/net/GetTalkNewMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 731
    .local v0, "message":Lcom/lzx/iteam/net/GetTalkNewMsg;
    const-string v2, "/api/talk/new"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetTalkNewMsg;->mApi:Ljava/lang/String;

    .line 732
    iput-object v1, v0, Lcom/lzx/iteam/net/GetTalkNewMsg;->mParams:Ljava/util/List;

    .line 733
    iget-object v2, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execTalkHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 734
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/FunctionFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/FunctionFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCircleNewMessage:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/FunctionFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mMyName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lzx/iteam/FunctionFragment;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mShareWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$12(Lcom/lzx/iteam/FunctionFragment;)Lcom/lzx/iteam/util/ShareUtil;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mShareUtil:Lcom/lzx/iteam/util/ShareUtil;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lzx/iteam/FunctionFragment;)Lcom/lzx/iteam/util/PreferenceUtil;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    return-object v0
.end method

.method static synthetic access$14(Lcom/lzx/iteam/FunctionFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->nameCard:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$15(Lcom/lzx/iteam/FunctionFragment;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mMoreWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/FunctionFragment;)Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/FunctionFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCircleNewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/FunctionFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lzx/iteam/FunctionFragment;->newTalkId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/lzx/iteam/FunctionFragment;)Lcom/lzx/iteam/MainActivity;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/FunctionFragment;)Lcom/lzx/iteam/util/AllDialogUtil;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/FunctionFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mTvScheduleNew:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/FunctionFragment;Landroid/widget/TextView;I)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/FunctionFragment;->setNewMsg(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$9(Lcom/lzx/iteam/FunctionFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mTvApprovalNew:Landroid/widget/TextView;

    return-object v0
.end method

.method private getApprovalMsg()V
    .locals 5

    .prologue
    .line 747
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 749
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    new-instance v0, Lcom/lzx/iteam/net/GetCalendarStatusMsg;

    iget-object v2, p0, Lcom/lzx/iteam/FunctionFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-direct {v0, v2, v3}, Lcom/lzx/iteam/net/GetCalendarStatusMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 751
    .local v0, "message":Lcom/lzx/iteam/net/GetCalendarStatusMsg;
    const-string v2, "/api/event/approval/todo"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetCalendarStatusMsg;->mApi:Ljava/lang/String;

    .line 752
    iput-object v1, v0, Lcom/lzx/iteam/net/GetCalendarStatusMsg;->mParams:Ljava/util/List;

    .line 753
    iget-object v2, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 754
    return-void
.end method

.method private setNewMsg(Landroid/widget/TextView;I)V
    .locals 8
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "status"    # I

    .prologue
    const/16 v7, 0x64

    const/16 v5, 0xa

    const/high16 v6, 0x41a00000    # 20.0f

    .line 194
    if-nez p2, :cond_1

    .line 195
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    if-lez p2, :cond_2

    if-ge p2, v5, :cond_2

    .line 199
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 200
    .local v1, "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v4, v6}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 201
    .local v2, "pd":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 202
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 203
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    const v4, 0x7f02033b

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 205
    const/16 v4, 0x11

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 207
    .end local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "pd":I
    :cond_2
    if-lt p2, v5, :cond_3

    if-ge p2, v7, :cond_3

    .line 208
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 209
    .restart local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v4, v5}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 210
    .local v3, "widthPx":I
    iget-object v4, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v4, v6}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 211
    .local v0, "heightPx":I
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 212
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 213
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    const v4, 0x7f02033c

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 216
    .end local v0    # "heightPx":I
    .end local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "widthPx":I
    :cond_3
    if-lt p2, v7, :cond_0

    .line 217
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 218
    .restart local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v4, v5}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 219
    .restart local v3    # "widthPx":I
    iget-object v4, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v4, v6}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 220
    .restart local v0    # "heightPx":I
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 221
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 222
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    const v4, 0x7f02033d

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 224
    const-string v4, "99+"

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private showChangeLayoutDialog()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 590
    new-instance v2, Landroid/app/Dialog;

    iget-object v8, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const v9, 0x1030010

    invoke-direct {v2, v8, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 591
    .local v2, "lDialog":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 592
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v8, 0x0

    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 593
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 594
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 595
    invoke-virtual {v2, v11}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 596
    const v8, 0x7f03005e

    invoke-virtual {v2, v8}, Landroid/app/Dialog;->setContentView(I)V

    .line 597
    invoke-virtual {v2, v11}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 598
    const v8, 0x7f0e02e7

    invoke-virtual {v2, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 599
    .local v5, "radioBtn_v":Landroid/widget/RadioButton;
    const v8, 0x7f0e02eb

    invoke-virtual {v2, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 600
    .local v4, "radioBtn_h":Landroid/widget/RadioButton;
    iget-object v8, p0, Lcom/lzx/iteam/FunctionFragment;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 601
    const-string v9, "keyboard_layout_orientation"

    const-class v10, Ljava/lang/Integer;

    .line 600
    invoke-virtual {v8, v9, v10}, Lcom/lzx/iteam/util/PreferenceUtil;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 602
    .local v1, "keyboard_layout_orientation":I
    packed-switch v1, :pswitch_data_0

    .line 610
    invoke-virtual {v5, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 613
    :goto_0
    const v8, 0x7f0e02e4

    invoke-virtual {v2, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 614
    .local v7, "view_vertical":Landroid/view/View;
    new-instance v8, Lcom/lzx/iteam/FunctionFragment$4;

    invoke-direct {v8, p0, v2, v5, v4}, Lcom/lzx/iteam/FunctionFragment$4;-><init>(Lcom/lzx/iteam/FunctionFragment;Landroid/app/Dialog;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    const v8, 0x7f0e02e8

    invoke-virtual {v2, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 627
    .local v6, "view_horizontal":Landroid/view/View;
    new-instance v8, Lcom/lzx/iteam/FunctionFragment$5;

    invoke-direct {v8, p0, v2, v4, v5}, Lcom/lzx/iteam/FunctionFragment$5;-><init>(Lcom/lzx/iteam/FunctionFragment;Landroid/app/Dialog;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    const v8, 0x7f0e02e3

    invoke-virtual {v2, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 640
    .local v0, "btnExit":Landroid/widget/Button;
    new-instance v8, Lcom/lzx/iteam/FunctionFragment$6;

    invoke-direct {v8, p0, v2}, Lcom/lzx/iteam/FunctionFragment$6;-><init>(Lcom/lzx/iteam/FunctionFragment;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 649
    return-void

    .line 604
    .end local v0    # "btnExit":Landroid/widget/Button;
    .end local v6    # "view_horizontal":Landroid/view/View;
    .end local v7    # "view_vertical":Landroid/view/View;
    :pswitch_0
    invoke-virtual {v5, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 607
    :pswitch_1
    invoke-virtual {v4, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 602
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showSetPop()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 658
    iget-object v4, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030092

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 659
    .local v3, "mainView":Landroid/view/View;
    const v4, 0x7f0e0417

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 661
    .local v2, "btnShare":Landroid/widget/Button;
    new-instance v4, Lcom/lzx/iteam/FunctionFragment$7;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/FunctionFragment$7;-><init>(Lcom/lzx/iteam/FunctionFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    const v4, 0x7f0e0418

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 680
    .local v1, "btnEdit":Landroid/widget/Button;
    new-instance v4, Lcom/lzx/iteam/FunctionFragment$8;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/FunctionFragment$8;-><init>(Lcom/lzx/iteam/FunctionFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    const v4, 0x7f0e0419

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 690
    .local v0, "btnCancel":Landroid/widget/Button;
    new-instance v4, Lcom/lzx/iteam/FunctionFragment$9;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/FunctionFragment$9;-><init>(Lcom/lzx/iteam/FunctionFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    new-instance v4, Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-direct {v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lzx/iteam/FunctionFragment;->mMoreWindow:Landroid/widget/PopupWindow;

    .line 698
    iget-object v4, p0, Lcom/lzx/iteam/FunctionFragment;->mMoreWindow:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 699
    iget-object v4, p0, Lcom/lzx/iteam/FunctionFragment;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 700
    iget-object v4, p0, Lcom/lzx/iteam/FunctionFragment;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 701
    iget-object v4, p0, Lcom/lzx/iteam/FunctionFragment;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 702
    iget-object v4, p0, Lcom/lzx/iteam/FunctionFragment;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 703
    iget-object v4, p0, Lcom/lzx/iteam/FunctionFragment;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 704
    iget-object v4, p0, Lcom/lzx/iteam/FunctionFragment;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 705
    iget-object v4, p0, Lcom/lzx/iteam/FunctionFragment;->mMoreWindow:Landroid/widget/PopupWindow;

    const v5, 0x7f09000b

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 706
    iget-object v4, p0, Lcom/lzx/iteam/FunctionFragment;->mMoreWindow:Landroid/widget/PopupWindow;

    const/16 v5, 0x50

    invoke-virtual {v4, v3, v5, v9, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 707
    iget-object v4, p0, Lcom/lzx/iteam/FunctionFragment;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->update()V

    .line 709
    new-instance v4, Lcom/lzx/iteam/FunctionFragment$10;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/FunctionFragment$10;-><init>(Lcom/lzx/iteam/FunctionFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 716
    return-void
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 268
    const v0, 0x7f0e0409

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/TextMoreView;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->myCircle:Lcom/lzx/iteam/widget/TextMoreView;

    .line 269
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->myCircle:Lcom/lzx/iteam/widget/TextMoreView;

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/widget/TextMoreView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    const v0, 0x7f0e040d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/TextMoreView;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mySpace:Lcom/lzx/iteam/widget/TextMoreView;

    .line 271
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mySpace:Lcom/lzx/iteam/widget/TextMoreView;

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/widget/TextMoreView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    const v0, 0x7f0e040e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/TextMoreView;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mSchedule:Lcom/lzx/iteam/widget/TextMoreView;

    .line 273
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mSchedule:Lcom/lzx/iteam/widget/TextMoreView;

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/widget/TextMoreView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    const v0, 0x7f0e0410

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/TextMoreView;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mAttendance:Lcom/lzx/iteam/widget/TextMoreView;

    .line 275
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mAttendance:Lcom/lzx/iteam/widget/TextMoreView;

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/widget/TextMoreView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    const v0, 0x7f0e0412

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/TextMoreView;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mApproval:Lcom/lzx/iteam/widget/TextMoreView;

    .line 277
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mApproval:Lcom/lzx/iteam/widget/TextMoreView;

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/widget/TextMoreView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    const v0, 0x7f0e0415

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/TextMoreView;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mRecommend:Lcom/lzx/iteam/widget/TextMoreView;

    .line 279
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mRecommend:Lcom/lzx/iteam/widget/TextMoreView;

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/widget/TextMoreView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    const v0, 0x7f0e0416

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/TextMoreView;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mSetting:Lcom/lzx/iteam/widget/TextMoreView;

    .line 281
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mSetting:Lcom/lzx/iteam/widget/TextMoreView;

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/widget/TextMoreView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    const v0, 0x7f0e0413

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/TextMoreView;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mDraft:Lcom/lzx/iteam/widget/TextMoreView;

    .line 283
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mDraft:Lcom/lzx/iteam/widget/TextMoreView;

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/widget/TextMoreView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    const v0, 0x7f0e0407

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mName:Landroid/widget/TextView;

    .line 285
    const v0, 0x7f0e0414

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mTvMessage:Landroid/widget/TextView;

    .line 286
    const v0, 0x7f0e040a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCircleNewMessage:Landroid/widget/RelativeLayout;

    .line 287
    const v0, 0x7f0e040b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCircleNewImage:Landroid/widget/ImageView;

    .line 288
    const v0, 0x7f0e040f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mTvScheduleNew:Landroid/widget/TextView;

    .line 289
    const v0, 0x7f0e009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mTvApprovalNew:Landroid/widget/TextView;

    .line 290
    const v0, 0x7f0e0406

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mTvScanf:Landroid/widget/TextView;

    .line 291
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mTvScanf:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    const v0, 0x7f0e0408

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mMore:Landroid/widget/LinearLayout;

    .line 293
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mMore:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    const v0, 0x7f0e052a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCardName:Landroid/widget/TextView;

    .line 297
    const v0, 0x7f0e0531

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCardPhone:Landroid/widget/TextView;

    .line 298
    const v0, 0x7f0e0532

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCardEmail:Landroid/widget/TextView;

    .line 299
    const v0, 0x7f0e0530

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCardCompany:Landroid/widget/TextView;

    .line 300
    const v0, 0x7f0e052c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCardPosition:Landroid/widget/TextView;

    .line 301
    const v0, 0x7f0e0533

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCardAddress:Landroid/widget/TextView;

    .line 302
    const v0, 0x7f0e0333

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCardPhoto:Landroid/widget/ImageView;

    .line 303
    const v0, 0x7f0e052b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCardSex:Landroid/widget/ImageView;

    .line 304
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCardPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 416
    invoke-static {}, Lcom/lzx/iteam/util/Constants;->isFastClick()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 485
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 475
    :sswitch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v1, "image":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment;->mMyAvatar:Ljava/lang/String;

    const-string v4, "\\?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const-class v4, Lcom/lzx/iteam/ImagePagerActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 478
    .local v0, "i":Landroid/content/Intent;
    const-string v3, "image_origin"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 479
    const-string v3, "image_urls"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 480
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/FunctionFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 427
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "image":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_1
    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v4, "newTalkId"

    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->newTalkId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 428
    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment;->mCircleNewMessage:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 429
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const-class v4, Lcom/lzx/iteam/TalkListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 430
    .local v2, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/lzx/iteam/TalkListActivity;->CONTACTS_CIRCLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/FunctionFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 435
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const-class v4, Lcom/lzx/iteam/TalkListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 436
    .restart local v2    # "intent":Landroid/content/Intent;
    sget-object v3, Lcom/lzx/iteam/TalkListActivity;->MY_PERSONAL_SPACE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/FunctionFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 440
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_3
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const-class v4, Lcom/lzx/iteam/ScheduleCalendarActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 441
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "userName"

    iget-object v4, p0, Lcom/lzx/iteam/FunctionFragment;->mMyName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/FunctionFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 445
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_4
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const-class v4, Lcom/lzx/iteam/AttendanceMainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/FunctionFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 449
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_5
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const-class v4, Lcom/lzx/iteam/ApprovalActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 450
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/FunctionFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 453
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_6
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    .line 454
    const-class v4, Lcom/lzx/iteam/dimensioncode/CaptureActivity;

    .line 453
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 455
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/FunctionFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 458
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_7
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const-class v4, Lcom/lzx/iteam/EditMyCardActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 459
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "contact_data"

    iget-object v4, p0, Lcom/lzx/iteam/FunctionFragment;->nameCard:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 460
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/FunctionFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 464
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_8
    const-string v3, "\u63a8\u8350\"\u56e2\u961f\"\u7ed9\u5c0f\u4f19\u4f34\uff0c\u8d76\u7d27\u52a0\u5165\u6211\u4eec"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/lzx/iteam/FunctionFragment;->showSharePopAlert(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 467
    :sswitch_9
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const-class v4, Lcom/lzx/iteam/SettingActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 468
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/FunctionFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 471
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_a
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const-class v4, Lcom/lzx/iteam/DraftsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 472
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/FunctionFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 419
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0333 -> :sswitch_0
        0x7f0e0406 -> :sswitch_6
        0x7f0e0408 -> :sswitch_7
        0x7f0e0409 -> :sswitch_1
        0x7f0e040d -> :sswitch_2
        0x7f0e040e -> :sswitch_3
        0x7f0e0410 -> :sswitch_4
        0x7f0e0412 -> :sswitch_5
        0x7f0e0413 -> :sswitch_a
        0x7f0e0415 -> :sswitch_8
        0x7f0e0416 -> :sswitch_9
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 233
    invoke-virtual {p0}, Lcom/lzx/iteam/FunctionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/MainActivity;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    .line 234
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 235
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "useid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mUid:Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 237
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v0}, Lcom/lzx/iteam/util/ShareUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/ShareUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mShareUtil:Lcom/lzx/iteam/util/ShareUtil;

    .line 238
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 239
    const-string v0, "function"

    const-string v1, "oncreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 252
    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment;->rootView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 253
    const v1, 0x7f030091

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/FunctionFragment;->rootView:Landroid/view/View;

    .line 254
    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/FunctionFragment;->initView(Landroid/view/View;)V

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 258
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 259
    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment;->rootView:Landroid/view/View;

    return-object v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 310
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 311
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "newTalkId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->newTalkId:Ljava/lang/String;

    .line 312
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "contact_name_card"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->nameCard:Ljava/util/ArrayList;

    .line 313
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->nameCard:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->nameCard:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->nameCard:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/FunctionFragment;->setNameCard(Ljava/util/ArrayList;)V

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/FunctionFragment;->setNotice()V

    .line 318
    invoke-direct {p0}, Lcom/lzx/iteam/FunctionFragment;->GetNewMessage()V

    .line 319
    invoke-direct {p0}, Lcom/lzx/iteam/FunctionFragment;->GetCalendarStatus()V

    .line 320
    invoke-direct {p0}, Lcom/lzx/iteam/FunctionFragment;->getApprovalMsg()V

    .line 321
    const-string v0, "function"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 326
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 327
    const-string v0, "function"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method public setNameCard(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "nameCard":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v3, 0x3

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 370
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mMyName:Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment;->mMyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment;->mCardName:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment;->mCardPhone:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCardPhone:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/FunctionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 375
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment;->mCardCompany:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :cond_0
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 379
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCardPosition:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment;->mCardPosition:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    :goto_0
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 385
    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment;->mCardEmail:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    :goto_1
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 390
    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment;->mCardAddress:Landroid/widget/TextView;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    :goto_2
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mMyAvatar:Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "avatar"

    iget-object v2, p0, Lcom/lzx/iteam/FunctionFragment;->mMyAvatar:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 396
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mMySex:Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mMyAvatar:Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "None"

    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment;->mMyAvatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 400
    sget-object v0, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment;->mMyAvatar:Ljava/lang/String;

    iget-object v2, p0, Lcom/lzx/iteam/FunctionFragment;->mCardPhoto:Landroid/widget/ImageView;

    sget-object v3, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mMySex:Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0"

    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment;->mMySex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCardSex:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    :cond_3
    :goto_3
    return-void

    .line 382
    :cond_4
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCardPosition:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 387
    :cond_5
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCardEmail:Landroid/widget/TextView;

    const-string v1, "\u8d44\u6599\u672a\u5b8c\u5584"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 392
    :cond_6
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCardAddress:Landroid/widget/TextView;

    const-string v1, "\u8d44\u6599\u672a\u5b8c\u5584"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 404
    :cond_7
    const-string v0, "1"

    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment;->mMySex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 405
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCardSex:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCardSex:Landroid/widget/ImageView;

    const v1, 0x7f0202eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 407
    :cond_8
    const-string v0, "2"

    iget-object v1, p0, Lcom/lzx/iteam/FunctionFragment;->mMySex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 408
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCardSex:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment;->mCardSex:Landroid/widget/ImageView;

    const v1, 0x7f0202ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method public setNotice()V
    .locals 11

    .prologue
    const/16 v10, 0x64

    const/16 v9, 0xa

    const/high16 v8, 0x41a00000    # 20.0f

    const/4 v7, 0x0

    .line 331
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v6, "draft_event_unread"

    invoke-virtual {v5, v6, v7}, Lcom/lzx/iteam/util/PreferenceUtil;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 332
    .local v3, "unread":I
    if-nez v3, :cond_1

    .line 333
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mTvMessage:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    if-lez v3, :cond_2

    if-ge v3, v9, :cond_2

    .line 335
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 337
    .local v1, "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v5, v8}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 338
    .local v2, "pd":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 339
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 340
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mTvMessage:Landroid/widget/TextView;

    const v6, 0x7f02033b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 342
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mTvMessage:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 343
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mTvMessage:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 344
    .end local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "pd":I
    :cond_2
    if-lt v3, v9, :cond_3

    if-ge v3, v10, :cond_3

    .line 345
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 347
    .restart local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v5, v6}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 348
    .local v4, "widthPx":I
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v5, v8}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 349
    .local v0, "heightPx":I
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 350
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 351
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mTvMessage:Landroid/widget/TextView;

    const v6, 0x7f02033c

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 353
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mTvMessage:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 354
    .end local v0    # "heightPx":I
    .end local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "widthPx":I
    :cond_3
    if-lt v3, v10, :cond_0

    .line 355
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 357
    .restart local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v5, v6}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 358
    .restart local v4    # "widthPx":I
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v5, v8}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 359
    .restart local v0    # "heightPx":I
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 360
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 361
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mTvMessage:Landroid/widget/TextView;

    const v6, 0x7f02033d

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 363
    iget-object v5, p0, Lcom/lzx/iteam/FunctionFragment;->mTvMessage:Landroid/widget/TextView;

    const-string v6, "99+"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public showSharePopAlert(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 18
    .param p1, "shareText"    # Ljava/lang/String;
    .param p2, "shareImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 491
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0300e9

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 492
    .local v13, "mainView":Landroid/view/View;
    const v4, 0x7f0e0600

    invoke-virtual {v13, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/GridView;

    .line 493
    .local v11, "gr_share":Landroid/widget/GridView;
    const v4, 0x7f0e05ff

    invoke-virtual {v13, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 494
    .local v15, "shareLayout":Landroid/widget/LinearLayout;
    const v4, 0x7f0e0601

    invoke-virtual {v13, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 496
    .local v16, "shareTvCancel":Landroid/widget/TextView;
    new-instance v4, Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-direct {v4, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lzx/iteam/FunctionFragment;->mShareWindow:Landroid/widget/PopupWindow;

    .line 497
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/FunctionFragment;->mShareWindow:Landroid/widget/PopupWindow;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/FunctionFragment;->mShareWindow:Landroid/widget/PopupWindow;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 499
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/FunctionFragment;->mShareWindow:Landroid/widget/PopupWindow;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 500
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/FunctionFragment;->mShareWindow:Landroid/widget/PopupWindow;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 501
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/FunctionFragment;->mShareWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v13}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/FunctionFragment;->mShareWindow:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 503
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/FunctionFragment;->mShareWindow:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 507
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v5, "gridItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v4, 0x4

    new-array v9, v4, [I

    fill-array-data v9, :array_0

    .line 509
    .local v9, "drawableId":[I
    const/4 v4, 0x4

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "\u77ed\u4fe1\u9080\u8bf7"

    aput-object v6, v10, v4

    const/4 v4, 0x1

    const-string v6, "\u4e8c\u7ef4\u7801\u9080\u8bf7"

    aput-object v6, v10, v4

    const/4 v4, 0x2

    const-string v6, "\u5fae\u4fe1\u597d\u53cb"

    aput-object v6, v10, v4

    const/4 v4, 0x3

    const-string v6, "\u670b\u53cb\u5708"

    aput-object v6, v10, v4

    .line 510
    .local v10, "drawableText":[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/4 v4, 0x4

    if-lt v12, v4, :cond_0

    .line 516
    new-instance v3, Landroid/widget/SimpleAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    .line 518
    const v6, 0x7f0300e7

    .line 519
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v17, "ItemImage"

    aput-object v17, v7, v8

    const/4 v8, 0x1

    const-string v17, "ItemText"

    aput-object v17, v7, v8

    .line 520
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_1

    .line 516
    invoke-direct/range {v3 .. v8}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 521
    .local v3, "simpleAdapter":Landroid/widget/SimpleAdapter;
    invoke-virtual {v11, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 522
    new-instance v4, Lcom/lzx/iteam/FunctionFragment$ItemClickListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v4, v0, v1, v2}, Lcom/lzx/iteam/FunctionFragment$ItemClickListener;-><init>(Lcom/lzx/iteam/FunctionFragment;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/FunctionFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const v6, 0x7f040018

    invoke-static {v4, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/FunctionFragment;->mShareWindow:Landroid/widget/PopupWindow;

    const/16 v6, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v13, v6, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 528
    new-instance v4, Lcom/lzx/iteam/FunctionFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/lzx/iteam/FunctionFragment$2;-><init>(Lcom/lzx/iteam/FunctionFragment;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    new-instance v4, Lcom/lzx/iteam/FunctionFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/lzx/iteam/FunctionFragment$3;-><init>(Lcom/lzx/iteam/FunctionFragment;)V

    invoke-virtual {v13, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 543
    return-void

    .line 511
    .end local v3    # "simpleAdapter":Landroid/widget/SimpleAdapter;
    :cond_0
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 512
    .local v14, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "ItemImage"

    aget v6, v9, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string v4, "ItemText"

    aget-object v6, v10, v12

    invoke-virtual {v14, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 508
    :array_0
    .array-data 4
        0x7f020304
        0x7f020292
        0x7f020378
        0x7f020379
    .end array-data

    .line 520
    :array_1
    .array-data 4
        0x7f0e05fb
        0x7f0e05fc
    .end array-data
.end method

.method public update()V
    .locals 0

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/lzx/iteam/FunctionFragment;->setNotice()V

    .line 721
    return-void
.end method
