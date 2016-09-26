.class public Lcom/lzx/iteam/ApprovalDetailActivity;
.super Lcom/lzx/iteam/base/MyBaseActivity;
.source "ApprovalDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final APPROVAL_ACTION:I = 0x4e21

.field private static final APPROVAL_DETAIL:I = 0x4e22


# instance fields
.field private ap2:Lcom/lzx/iteam/bean/ApprovalBean;

.field private mAdapter:Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;

.field private mApLv:Lcom/lzx/iteam/widget/MyListView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e008b
    .end annotation
.end field

.field private mAppId:Ljava/lang/String;

.field private mAppType:I

.field private mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/ApprovalBean;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIvAvatar:Lcom/lzx/iteam/widget/RoundImageView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0076
    .end annotation
.end field

.field private mIvStatus:Landroid/widget/ImageView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0079
    .end annotation
.end field

.field private mLayoutAction:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e008e
    .end annotation
.end field

.field private mLayoutAgree:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e008f
    .end annotation
.end field

.field private mLayoutBack:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e007a
    .end annotation
.end field

.field private mLayoutDays:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0086
    .end annotation
.end field

.field private mLayoutDelete:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e008d
    .end annotation
.end field

.field private mLayoutEnd:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0084
    .end annotation
.end field

.field private mLayoutLeaveType:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e007e
    .end annotation
.end field

.field private mLayoutRefuse:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0090
    .end annotation
.end field

.field private mLayoutTraval:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0080
    .end annotation
.end field

.field private mListType:I

.field private mTvDayTitle:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0087
    .end annotation
.end field

.field private mTvDays:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0088
    .end annotation
.end field

.field private mTvEndTime:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0085
    .end annotation
.end field

.field private mTvLeaveType:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e007f
    .end annotation
.end field

.field private mTvName:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0077
    .end annotation
.end field

.field private mTvReason:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e008a
    .end annotation
.end field

.field private mTvReasonTitle:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0089
    .end annotation
.end field

.field private mTvStartTime:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0083
    .end annotation
.end field

.field private mTvStartTimeTitle:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0082
    .end annotation
.end field

.field private mTvStatus:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0078
    .end annotation
.end field

.field private mTvTitle:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e007b
    .end annotation
.end field

.field private mTvTravalPlace:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0081
    .end annotation
.end field

.field private mUid:Ljava/lang/String;

.field private mWaitDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lzx/iteam/base/MyBaseActivity;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mDataList:Ljava/util/List;

    .line 97
    new-instance v0, Lcom/lzx/iteam/ApprovalDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ApprovalDetailActivity$1;-><init>(Lcom/lzx/iteam/ApprovalDetailActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ApprovalDetailActivity;)V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/lzx/iteam/ApprovalDetailActivity;->httpReqDlgDismiss()V

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/ApprovalDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/ApprovalDetailActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lzx/iteam/ApprovalDetailActivity;Lcom/lzx/iteam/bean/ApprovalData;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    return-void
.end method

.method static synthetic access$12(Lcom/lzx/iteam/ApprovalDetailActivity;I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mListType:I

    return-void
.end method

.method static synthetic access$13(Lcom/lzx/iteam/ApprovalDetailActivity;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/lzx/iteam/ApprovalDetailActivity;->setData()V

    return-void
.end method

.method static synthetic access$14(Lcom/lzx/iteam/ApprovalDetailActivity;)V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/lzx/iteam/ApprovalDetailActivity;->httpReqDlgShow()V

    return-void
.end method

.method static synthetic access$15(Lcom/lzx/iteam/ApprovalDetailActivity;I)V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ApprovalDetailActivity;->setApprovalData(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/ApprovalDetailActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mIvStatus:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/ApprovalDetailActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/ApprovalDetailActivity;)Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mAdapter:Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/ApprovalDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mLayoutAction:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/ApprovalDetailActivity;)Lcom/lzx/iteam/bean/ApprovalData;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/ApprovalDetailActivity;)Lcom/lzx/iteam/util/PreferenceUtil;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/ApprovalDetailActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/ApprovalDetailActivity;)I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mListType:I

    return v0
.end method

.method private getApprovalDetail()V
    .locals 6

    .prologue
    .line 366
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v2, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sid"

    .line 368
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "approval_id"

    iget-object v5, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mAppId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x4e22

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 371
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/lzx/iteam/net/GetApprovalDetail;

    invoke-direct {v1, v0}, Lcom/lzx/iteam/net/GetApprovalDetail;-><init>(Landroid/os/Message;)V

    .line 372
    .local v1, "msg":Lcom/lzx/iteam/net/GetApprovalDetail;
    const-string v3, "/api/event/approval/detail"

    iput-object v3, v1, Lcom/lzx/iteam/net/GetApprovalDetail;->mApi:Ljava/lang/String;

    .line 373
    iput-object v2, v1, Lcom/lzx/iteam/net/GetApprovalDetail;->mParams:Ljava/util/List;

    .line 374
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 375
    return-void
.end method

.method private httpReqDlgDismiss()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mWaitDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mWaitDialog:Landroid/app/Dialog;

    .line 399
    :cond_0
    return-void
.end method

.method private httpReqDlgShow()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mWaitDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->waitDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mWaitDialog:Landroid/app/Dialog;

    .line 384
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 389
    :cond_0
    return-void
.end method

.method private setApprovalData(I)V
    .locals 7
    .param p1, "action"    # I

    .prologue
    .line 348
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v2, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sid"

    .line 350
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "approval_id"

    iget-object v5, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mAppId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "action_type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x4e21

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 354
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Lcom/lzx/iteam/net/DeleteEventMsg;

    invoke-direct {v1, v0}, Lcom/lzx/iteam/net/DeleteEventMsg;-><init>(Landroid/os/Message;)V

    .line 355
    .local v1, "msg":Lcom/lzx/iteam/net/DeleteEventMsg;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 356
    const-string v3, "/api/event/approval/action"

    iput-object v3, v1, Lcom/lzx/iteam/net/DeleteEventMsg;->mApi:Ljava/lang/String;

    .line 357
    iput-object v2, v1, Lcom/lzx/iteam/net/DeleteEventMsg;->mParams:Ljava/util/List;

    .line 358
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 360
    return-void
.end method

.method private setData()V
    .locals 14

    .prologue
    .line 172
    iget v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mListType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 173
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mLayoutAction:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    :cond_0
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v10}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_id()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mAppId:Ljava/lang/String;

    .line 176
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v10}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_type()I

    move-result v10

    iput v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mAppType:I

    .line 177
    iget v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mAppType:I

    packed-switch v10, :pswitch_data_0

    .line 225
    :goto_0
    sget-object v10, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v11, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v11}, Lcom/lzx/iteam/bean/ApprovalData;->getUser_image()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mIvAvatar:Lcom/lzx/iteam/widget/RoundImageView;

    sget-object v13, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v10, v11, v12, v13}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 226
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvName:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v11}, Lcom/lzx/iteam/bean/ApprovalData;->getUser_name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    new-instance v0, Lcom/lzx/iteam/bean/ApprovalBean;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/ApprovalBean;-><init>()V

    .line 229
    .local v0, "ap1":Lcom/lzx/iteam/bean/ApprovalBean;
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v10}, Lcom/lzx/iteam/bean/ApprovalData;->getUser_image()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/lzx/iteam/bean/ApprovalBean;->setImage(Ljava/lang/String;)V

    .line 230
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v10}, Lcom/lzx/iteam/bean/ApprovalData;->getUser_name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/lzx/iteam/bean/ApprovalBean;->setName(Ljava/lang/String;)V

    .line 231
    const-string v10, "\u53d1\u51fa\u7533\u8bf7"

    invoke-virtual {v0, v10}, Lcom/lzx/iteam/bean/ApprovalBean;->setStatus(Ljava/lang/String;)V

    .line 232
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v10}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_time()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/lzx/iteam/bean/ApprovalBean;->setTime(J)V

    .line 233
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mDataList:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v10, Lcom/lzx/iteam/bean/ApprovalBean;

    invoke-direct {v10}, Lcom/lzx/iteam/bean/ApprovalBean;-><init>()V

    iput-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->ap2:Lcom/lzx/iteam/bean/ApprovalBean;

    .line 236
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->ap2:Lcom/lzx/iteam/bean/ApprovalBean;

    iget-object v11, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v11}, Lcom/lzx/iteam/bean/ApprovalData;->getApprove_admin_image()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/lzx/iteam/bean/ApprovalBean;->setImage(Ljava/lang/String;)V

    .line 237
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->ap2:Lcom/lzx/iteam/bean/ApprovalBean;

    iget-object v11, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v11}, Lcom/lzx/iteam/bean/ApprovalData;->getApprove_admin_name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/lzx/iteam/bean/ApprovalBean;->setName(Ljava/lang/String;)V

    .line 239
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v10}, Lcom/lzx/iteam/bean/ApprovalData;->getApprove_admin()Ljava/lang/String;

    move-result-object v9

    .line 240
    .local v9, "uid":Ljava/lang/String;
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v11, "useid"

    const-string v12, "\uff0d1"

    invoke-virtual {v10, v11, v12}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "mUid":Ljava/lang/String;
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v10}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_status()I

    move-result v8

    .line 243
    .local v8, "status":I
    if-nez v8, :cond_4

    .line 244
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->ap2:Lcom/lzx/iteam/bean/ApprovalBean;

    const-string v11, "\u5ba1\u6279\u4e2d..."

    invoke-virtual {v10, v11}, Lcom/lzx/iteam/bean/ApprovalBean;->setStatus(Ljava/lang/String;)V

    .line 245
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->ap2:Lcom/lzx/iteam/bean/ApprovalBean;

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v12, v13}, Lcom/lzx/iteam/bean/ApprovalBean;->setTime(J)V

    .line 246
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 247
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvStatus:Landroid/widget/TextView;

    const-string v11, "\u7b49\u5f85\u6211\u5ba1\u6279"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :goto_1
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mDataList:Ljava/util/List;

    iget-object v11, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->ap2:Lcom/lzx/iteam/bean/ApprovalBean;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v10}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_start_time()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-static {v10, v11}, Lcom/lzx/iteam/util/DateUtil;->formatDate(J)Ljava/lang/String;

    move-result-object v6

    .line 289
    .local v6, "start":Ljava/lang/String;
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v10}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_start_part()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    const-string v7, " \u4e0a\u5348"

    .line 290
    .local v7, "startPart":Ljava/lang/String;
    :goto_2
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvStartTime:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mAppType:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_1

    .line 292
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v10}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_end_time()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-static {v10, v11}, Lcom/lzx/iteam/util/DateUtil;->formatDate(J)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "end":Ljava/lang/String;
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v10}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_end_part()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    const-string v2, " \u4e0a\u5348"

    .line 294
    .local v2, "endPart":Ljava/lang/String;
    :goto_3
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvEndTime:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvDays:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v12}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_day()F

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    .end local v1    # "end":Ljava/lang/String;
    .end local v2    # "endPart":Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvReason:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v11}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_reason()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    new-instance v10, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;

    iget-object v11, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mActivity:Landroid/app/Activity;

    iget-object v12, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mDataList:Ljava/util/List;

    invoke-direct {v10, v11, v12}, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mAdapter:Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;

    .line 300
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApLv:Lcom/lzx/iteam/widget/MyListView;

    iget-object v11, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mAdapter:Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;

    invoke-virtual {v10, v11}, Lcom/lzx/iteam/widget/MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 301
    return-void

    .line 179
    .end local v0    # "ap1":Lcom/lzx/iteam/bean/ApprovalBean;
    .end local v4    # "mUid":Ljava/lang/String;
    .end local v6    # "start":Ljava/lang/String;
    .end local v7    # "startPart":Ljava/lang/String;
    .end local v8    # "status":I
    .end local v9    # "uid":Ljava/lang/String;
    :pswitch_0
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mLayoutTraval:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v10}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_address()Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "place":Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 182
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvTravalPlace:Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_2
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvTitle:Landroid/widget/TextView;

    const v11, 0x7f08019a

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 185
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvDayTitle:Landroid/widget/TextView;

    const-string v11, "\u51fa\u5dee\u5929\u6570: "

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvReasonTitle:Landroid/widget/TextView;

    const-string v11, "\u51fa\u5dee\u4e8b\u7531: "

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 189
    .end local v5    # "place":Ljava/lang/String;
    :pswitch_1
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mLayoutLeaveType:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v10}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_leave_type()I

    move-result v3

    .line 191
    .local v3, "leaveType":I
    packed-switch v3, :pswitch_data_1

    .line 208
    :goto_4
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvTitle:Landroid/widget/TextView;

    const v11, 0x7f080199

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 209
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvDayTitle:Landroid/widget/TextView;

    const-string v11, "\u8bf7\u5047\u5929\u6570: "

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvReasonTitle:Landroid/widget/TextView;

    const-string v11, "\u8bf7\u5047\u4e8b\u7531:"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 193
    :pswitch_2
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvLeaveType:Landroid/widget/TextView;

    const v11, 0x7f08019d

    invoke-virtual {p0, v11}, Lcom/lzx/iteam/ApprovalDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 196
    :pswitch_3
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvLeaveType:Landroid/widget/TextView;

    const v11, 0x7f08019e

    invoke-virtual {p0, v11}, Lcom/lzx/iteam/ApprovalDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 199
    :pswitch_4
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvLeaveType:Landroid/widget/TextView;

    const v11, 0x7f08019f

    invoke-virtual {p0, v11}, Lcom/lzx/iteam/ApprovalDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 202
    :pswitch_5
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvLeaveType:Landroid/widget/TextView;

    const v11, 0x7f0801a0

    invoke-virtual {p0, v11}, Lcom/lzx/iteam/ApprovalDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 205
    :pswitch_6
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvLeaveType:Landroid/widget/TextView;

    const v11, 0x7f0801a1

    invoke-virtual {p0, v11}, Lcom/lzx/iteam/ApprovalDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 213
    .end local v3    # "leaveType":I
    :pswitch_7
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvTitle:Landroid/widget/TextView;

    const v11, 0x7f08019b

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 214
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvDayTitle:Landroid/widget/TextView;

    const-string v11, "\u5916\u51fa\u5929\u6570: "

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvReasonTitle:Landroid/widget/TextView;

    const-string v11, "\u5916\u51fa\u4e8b\u7531: "

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 218
    :pswitch_8
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvTitle:Landroid/widget/TextView;

    const v11, 0x7f08019c

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 219
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mLayoutEnd:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mLayoutDays:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvReasonTitle:Landroid/widget/TextView;

    const-string v11, "\u7533\u8bc9\u4e8b\u7531: "

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvStartTimeTitle:Landroid/widget/TextView;

    const-string v11, "\u7533\u8bc9\u65f6\u95f4: "

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 249
    .restart local v0    # "ap1":Lcom/lzx/iteam/bean/ApprovalBean;
    .restart local v4    # "mUid":Ljava/lang/String;
    .restart local v8    # "status":I
    .restart local v9    # "uid":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvStatus:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u7b49\u5f85"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v12}, Lcom/lzx/iteam/bean/ApprovalData;->getApprove_admin_name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u5ba1\u6279"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 256
    :cond_4
    const/4 v10, 0x1

    if-ne v8, v10, :cond_6

    .line 257
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 258
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvStatus:Landroid/widget/TextView;

    const-string v11, "\u6211\u5df2\u5ba1\u6279"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    :goto_5
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mIvStatus:Landroid/widget/ImageView;

    const v11, 0x7f02002f

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->ap2:Lcom/lzx/iteam/bean/ApprovalBean;

    const-string v11, "\u5df2\u540c\u610f"

    invoke-virtual {v10, v11}, Lcom/lzx/iteam/bean/ApprovalBean;->setStatus(Ljava/lang/String;)V

    .line 269
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->ap2:Lcom/lzx/iteam/bean/ApprovalBean;

    iget-object v11, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v11}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_done_time()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/lzx/iteam/bean/ApprovalBean;->setTime(J)V

    goto/16 :goto_1

    .line 260
    :cond_5
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvStatus:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v12}, Lcom/lzx/iteam/bean/ApprovalData;->getApprove_admin_name()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u5df2\u5ba1\u6279"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 272
    :cond_6
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 273
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvStatus:Landroid/widget/TextView;

    const-string v11, "\u6211\u5df2\u5ba1\u6279"

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :goto_6
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mIvStatus:Landroid/widget/ImageView;

    const v11, 0x7f020030

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->ap2:Lcom/lzx/iteam/bean/ApprovalBean;

    const-string v11, "\u5df2\u62d2\u7edd"

    invoke-virtual {v10, v11}, Lcom/lzx/iteam/bean/ApprovalBean;->setStatus(Ljava/lang/String;)V

    .line 284
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->ap2:Lcom/lzx/iteam/bean/ApprovalBean;

    iget-object v11, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v11}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_done_time()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/lzx/iteam/bean/ApprovalBean;->setTime(J)V

    goto/16 :goto_1

    .line 275
    :cond_7
    iget-object v10, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mTvStatus:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v12}, Lcom/lzx/iteam/bean/ApprovalData;->getApprove_admin_name()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u5df2\u5ba1\u6279"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 289
    .restart local v6    # "start":Ljava/lang/String;
    :cond_8
    const-string v7, " \u4e0b\u5348"

    goto/16 :goto_2

    .line 293
    .restart local v1    # "end":Ljava/lang/String;
    .restart local v7    # "startPart":Ljava/lang/String;
    :cond_9
    const-string v2, " \u4e0b\u5348"

    goto/16 :goto_3

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 191
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public initData()V
    .locals 4

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/lzx/iteam/ApprovalDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 157
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "action":Ljava/lang/String;
    const-string v2, "approval"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    const-string v2, "list_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mListType:I

    .line 160
    const-string v2, "approvalData"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/ApprovalData;

    iput-object v2, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    .line 161
    invoke-direct {p0}, Lcom/lzx/iteam/ApprovalDetailActivity;->setData()V

    .line 166
    :goto_0
    new-instance v2, Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 168
    return-void

    .line 163
    :cond_0
    const-string v2, "approval_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mAppId:Ljava/lang/String;

    .line 164
    invoke-direct {p0}, Lcom/lzx/iteam/ApprovalDetailActivity;->getApprovalDetail()V

    goto :goto_0
.end method

.method public initListener()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mLayoutBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mLayoutAgree:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mLayoutRefuse:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 320
    :goto_0
    return-void

    .line 308
    :sswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/ApprovalDetailActivity;->finish()V

    goto :goto_0

    .line 311
    :sswitch_1
    invoke-static {}, Lcom/lzx/iteam/util/Constants;->isFastClick()Z

    .line 312
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u662f\u5426\u540c\u610f"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ApprovalData;->getUser_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7684\u7533\u8bf7?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lzx/iteam/ApprovalDetailActivity;->showDialogMsg(ILjava/lang/String;)V

    goto :goto_0

    .line 315
    :sswitch_2
    invoke-static {}, Lcom/lzx/iteam/util/Constants;->isFastClick()Z

    .line 316
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u662f\u5426\u62d2\u7edd"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mApprovalData:Lcom/lzx/iteam/bean/ApprovalData;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ApprovalData;->getUser_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7684\u7533\u8bf7?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lzx/iteam/ApprovalDetailActivity;->showDialogMsg(ILjava/lang/String;)V

    goto :goto_0

    .line 306
    :sswitch_data_0
    .sparse-switch
        0x7f0e007a -> :sswitch_0
        0x7f0e008f -> :sswitch_1
        0x7f0e0090 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 144
    const v0, 0x7f030012

    invoke-super {p0, p1, v0}, Lcom/lzx/iteam/base/MyBaseActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 145
    return-void
.end method

.method public showDialogMsg(ILjava/lang/String;)V
    .locals 4
    .param p1, "action"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 323
    const-string v2, "\u786e\u5b9a"

    .line 324
    .local v2, "okText":Ljava/lang/String;
    const v3, 0x7f08002d

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/ApprovalDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "cancelText":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalDetailActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v1

    .line 326
    .local v1, "mDialogUtil":Lcom/lzx/iteam/util/AllDialogUtil;
    const-string v3, "\u63d0\u793a"

    invoke-virtual {v1, v3, v2, v0, p2}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 327
    new-instance v3, Lcom/lzx/iteam/ApprovalDetailActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/lzx/iteam/ApprovalDetailActivity$2;-><init>(Lcom/lzx/iteam/ApprovalDetailActivity;I)V

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 340
    return-void
.end method
