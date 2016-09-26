.class public Lcom/lzx/iteam/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/LoginActivity$LoginMessage;,
        Lcom/lzx/iteam/LoginActivity$MyResizeListener;,
        Lcom/lzx/iteam/LoginActivity$NameCardMessage;
    }
.end annotation


# static fields
.field private static final BIGGER:I = 0x7d5

.field public static final ERROR_PARSE:I = 0x7d1

.field private static final ERR_LOGIN:I = 0x7d2

.field private static final MSG_GET_CHAT_GROUP_LIST:I = 0x7d8

.field private static final MSG_GET_CLOUD_GROUP_LIST:I = 0x7d9

.field private static final MSG_GET_EVENT_LIST:I = 0x7d7

.field private static final MSG_GET_NAMECARD:I = 0x6fd

.field public static final MSG_LOGIN:I = 0x7d3

.field private static final MSG_RESIZE:I = 0x7d6

.field private static final MSG_SET_REGISTRATION_ID:I = 0x7d0

.field private static final SMALLER:I = 0x7d4

.field public static instance:Lcom/lzx/iteam/LoginActivity;


# instance fields
.field private isRegist:Z

.field private mAsynClient:Lcom/lzx/iteam/net/AsynHttpClient;

.field private mBtnLogin:Landroid/widget/Button;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mContext:Landroid/content/Context;

.field private mCountryCode:Ljava/lang/String;

.field private mDialog:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mEtLoginCountry:Landroid/widget/EditText;

.field private mEtLoginPassword:Landroid/widget/EditText;

.field private mEtLoginPhoneNumber:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mIvCloudLogo:Landroid/widget/ImageView;

.field private mPasswd:Ljava/lang/String;

.field private mPhoneNum:Ljava/lang/String;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mProgressDialog:Landroid/app/Dialog;

.field private mRootLayout:Lcom/lzx/iteam/widget/ResizeLinerLayout;

.field private mTvForgetPassword:Landroid/widget/TextView;

.field private mTvLoginDesc:Landroid/widget/TextView;

.field private mTvNoAccount:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/lzx/iteam/LoginActivity;->instance:Lcom/lzx/iteam/LoginActivity;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    new-instance v0, Lcom/lzx/iteam/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/LoginActivity$1;-><init>(Lcom/lzx/iteam/LoginActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/LoginActivity;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/lzx/iteam/LoginActivity;->handleLoginDone(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/LoginActivity;)Lcom/lzx/iteam/util/PreferenceUtil;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/LoginActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mPhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/LoginActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mPasswd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/LoginActivity;)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/lzx/iteam/LoginActivity;->httpReqDlgDismiss()V

    return-void
.end method

.method static synthetic access$5(Lcom/lzx/iteam/LoginActivity;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/lzx/iteam/LoginActivity;->isRegist:Z

    return v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/LoginActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/LoginActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/LoginActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 543
    invoke-direct {p0, p1}, Lcom/lzx/iteam/LoginActivity;->setRegistrationId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/lzx/iteam/LoginActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleLoginDone(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 364
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_0

    .line 365
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/LoginActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/net/LocalLogin;->login(Landroid/content/Context;)Z

    .line 366
    const-string v1, "0"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/lzx/iteam/LoginActivity;->getEventsList(Ljava/lang/String;I)V

    .line 367
    invoke-direct {p0}, Lcom/lzx/iteam/LoginActivity;->uploadNameCard()V

    .line 368
    invoke-virtual {p0}, Lcom/lzx/iteam/LoginActivity;->getChatGroupList()V

    .line 369
    invoke-virtual {p0}, Lcom/lzx/iteam/LoginActivity;->getCloudGroupList()V

    .line 392
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/LoginActivity;->httpReqDlgDismiss()V

    .line 373
    const-string v0, ""

    .line 374
    .local v0, "str":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x1f41

    if-ne v1, v2, :cond_1

    .line 375
    const v1, 0x7f080042

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 379
    :goto_1
    iget-object v1, p0, Lcom/lzx/iteam/LoginActivity;->mDialog:Lcom/lzx/iteam/util/AllDialogUtil;

    const-string v2, "\u767b\u5f55\u5931\u8d25"

    const-string v3, "\u786e\u5b9a"

    invoke-virtual {v1, v2, v0, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 380
    iget-object v1, p0, Lcom/lzx/iteam/LoginActivity;->mDialog:Lcom/lzx/iteam/util/AllDialogUtil;

    new-instance v2, Lcom/lzx/iteam/LoginActivity$2;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/LoginActivity$2;-><init>(Lcom/lzx/iteam/LoginActivity;)V

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    goto :goto_0

    .line 377
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "str":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_1
.end method

.method private httpReqDlgDismiss()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mProgressDialog:Landroid/app/Dialog;

    .line 400
    :cond_0
    return-void
.end method

.method private httpReqDlgShow()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mProgressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 262
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    const-string v1, "\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/AllDialogUtil;->styleProgress(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mProgressDialog:Landroid/app/Dialog;

    .line 263
    iget-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mProgressDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 264
    iget-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 269
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 175
    const v0, 0x7f0e04a1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/ResizeLinerLayout;

    iput-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mRootLayout:Lcom/lzx/iteam/widget/ResizeLinerLayout;

    .line 176
    iget-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mRootLayout:Lcom/lzx/iteam/widget/ResizeLinerLayout;

    new-instance v1, Lcom/lzx/iteam/LoginActivity$MyResizeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lzx/iteam/LoginActivity$MyResizeListener;-><init>(Lcom/lzx/iteam/LoginActivity;Lcom/lzx/iteam/LoginActivity$MyResizeListener;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/ResizeLinerLayout;->setOnResizeListener(Lcom/lzx/iteam/widget/ResizeLinerLayout$OnResizeListener;)V

    .line 177
    const v0, 0x7f0e04a2

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mIvCloudLogo:Landroid/widget/ImageView;

    .line 178
    const v0, 0x7f0e04a3

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mTvLoginDesc:Landroid/widget/TextView;

    .line 179
    const v0, 0x7f0e04a4

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mEtLoginCountry:Landroid/widget/EditText;

    .line 180
    const v0, 0x7f0e04a5

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mEtLoginPhoneNumber:Landroid/widget/EditText;

    .line 181
    iget-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mEtLoginPhoneNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/lzx/iteam/LoginActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "last_number"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    const v0, 0x7f0e04a6

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mEtLoginPassword:Landroid/widget/EditText;

    .line 183
    const v0, 0x7f0e04a7

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mBtnLogin:Landroid/widget/Button;

    .line 184
    const v0, 0x7f0e04a8

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mTvNoAccount:Landroid/widget/TextView;

    .line 185
    iget-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mTvNoAccount:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v0, 0x7f0e04a9

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mTvForgetPassword:Landroid/widget/TextView;

    .line 187
    iget-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mTvForgetPassword:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mBtnLogin:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void
.end method

.method private setRegistrationId(Ljava/lang/String;)V
    .locals 5
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v0, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "registration_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    new-instance v1, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    iget-object v2, p0, Lcom/lzx/iteam/LoginActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 548
    .local v1, "message":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    const-string v2, "/api/app/android_push"

    iput-object v2, v1, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 549
    iput-object v0, v1, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 550
    iget-object v2, p0, Lcom/lzx/iteam/LoginActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 552
    return-void
.end method

.method private uploadNameCard()V
    .locals 5

    .prologue
    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v0, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    new-instance v1, Lcom/lzx/iteam/LoginActivity$NameCardMessage;

    iget-object v2, p0, Lcom/lzx/iteam/LoginActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6fd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/lzx/iteam/LoginActivity$NameCardMessage;-><init>(Lcom/lzx/iteam/LoginActivity;Landroid/os/Message;)V

    .line 471
    .local v1, "message":Lcom/lzx/iteam/LoginActivity$NameCardMessage;
    const-string v2, "/api/user/mynamecard"

    iput-object v2, v1, Lcom/lzx/iteam/LoginActivity$NameCardMessage;->mApi:Ljava/lang/String;

    .line 472
    iput-object v0, v1, Lcom/lzx/iteam/LoginActivity$NameCardMessage;->mParams:Ljava/util/List;

    .line 473
    iget-object v2, p0, Lcom/lzx/iteam/LoginActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 475
    return-void
.end method


# virtual methods
.method public getChatGroupList()V
    .locals 5

    .prologue
    .line 443
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 445
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    new-instance v0, Lcom/lzx/iteam/net/ChatGroupListMsg;

    iget-object v2, p0, Lcom/lzx/iteam/LoginActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/lzx/iteam/net/ChatGroupListMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 447
    .local v0, "chatGroupListMsg":Lcom/lzx/iteam/net/ChatGroupListMsg;
    const-string v2, "/api/chatgroup/list"

    iput-object v2, v0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mApi:Ljava/lang/String;

    .line 448
    iput-object v1, v0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mParams:Ljava/util/List;

    .line 449
    iget-object v2, p0, Lcom/lzx/iteam/LoginActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 451
    return-void
.end method

.method public getCloudGroupList()V
    .locals 5

    .prologue
    .line 454
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    new-instance v0, Lcom/lzx/iteam/net/GetGroupListMsg;

    iget-object v2, p0, Lcom/lzx/iteam/LoginActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/lzx/iteam/net/GetGroupListMsg;-><init>(Landroid/content/Context;Landroid/os/Message;)V

    .line 457
    .local v0, "getGroup":Lcom/lzx/iteam/net/GetGroupListMsg;
    const-string v2, "/api/group/list"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mApi:Ljava/lang/String;

    .line 458
    iput-object v1, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mParams:Ljava/util/List;

    .line 459
    iget-object v2, p0, Lcom/lzx/iteam/LoginActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 460
    return-void
.end method

.method public getEventsList(Ljava/lang/String;I)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pageIndex"    # I

    .prologue
    .line 427
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 429
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event_type"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pagesize"

    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0xa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pageindex"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    new-instance v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;

    iget-object v2, p0, Lcom/lzx/iteam/LoginActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, p1, v4}, Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;-><init>(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;I)V

    .line 434
    .local v0, "eventListData":Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;
    const-string v2, "/api/event/list_v3"

    iput-object v2, v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;->mApi:Ljava/lang/String;

    .line 435
    iput-object v1, v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;->mParams:Ljava/util/List;

    .line 436
    iget-object v2, p0, Lcom/lzx/iteam/LoginActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 437
    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;

    .prologue
    .line 236
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/lzx/iteam/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 241
    .local v4, "tManager":Landroid/telephony/TelephonyManager;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "a_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "devId":Ljava/lang/String;
    invoke-static {p0}, Lcom/lzx/iteam/util/Constants;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "osVersion":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v2, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "phone"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "password"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "type"

    const-string v7, "1"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "device_name"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Android "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "device_no"

    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "app_version"

    invoke-direct {v5, v6, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-direct {p0}, Lcom/lzx/iteam/LoginActivity;->httpReqDlgShow()V

    .line 253
    new-instance v1, Lcom/lzx/iteam/LoginActivity$LoginMessage;

    iget-object v5, p0, Lcom/lzx/iteam/LoginActivity;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-direct {v1, p0, p0, v5}, Lcom/lzx/iteam/LoginActivity$LoginMessage;-><init>(Lcom/lzx/iteam/LoginActivity;Landroid/content/Context;Landroid/os/Message;)V

    .line 254
    .local v1, "loginMsg":Lcom/lzx/iteam/LoginActivity$LoginMessage;
    iput-object v2, v1, Lcom/lzx/iteam/LoginActivity$LoginMessage;->mParams:Ljava/util/List;

    .line 255
    const-string v5, "/api/user/login"

    iput-object v5, v1, Lcom/lzx/iteam/LoginActivity$LoginMessage;->mApi:Ljava/lang/String;

    .line 256
    iget-object v5, p0, Lcom/lzx/iteam/LoginActivity;->mAsynClient:Lcom/lzx/iteam/net/AsynHttpClient;

    invoke-virtual {v5, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 257
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 195
    :pswitch_0
    iget-object v2, p0, Lcom/lzx/iteam/LoginActivity;->mEtLoginPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/LoginActivity;->mPhoneNum:Ljava/lang/String;

    .line 196
    iget-object v2, p0, Lcom/lzx/iteam/LoginActivity;->mEtLoginPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/LoginActivity;->mPasswd:Ljava/lang/String;

    .line 198
    iget-object v2, p0, Lcom/lzx/iteam/LoginActivity;->mPhoneNum:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lzx/iteam/LoginActivity;->mPhoneNum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/LoginActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f080049

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 200
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/lzx/iteam/LoginActivity;->mPasswd:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lzx/iteam/LoginActivity;->mPasswd:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_3

    .line 203
    :cond_2
    iget-object v2, p0, Lcom/lzx/iteam/LoginActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f08004a

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 204
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 207
    :cond_3
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity;->mPhoneNum:Ljava/lang/String;

    iput-object v3, v2, Lcom/lzx/iteam/net/LocalLogin;->mPhoneNum:Ljava/lang/String;

    .line 208
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v2

    iget-object v2, v2, Lcom/lzx/iteam/net/LocalLogin;->mPhoneNum:Ljava/lang/String;

    iget-object v3, p0, Lcom/lzx/iteam/LoginActivity;->mPasswd:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/lzx/iteam/LoginActivity;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/lzx/iteam/LoginActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v3, "last_number"

    iget-object v4, p0, Lcom/lzx/iteam/LoginActivity;->mPhoneNum:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    :pswitch_1
    iget-boolean v2, p0, Lcom/lzx/iteam/LoginActivity;->isRegist:Z

    if-eqz v2, :cond_4

    .line 213
    invoke-virtual {p0}, Lcom/lzx/iteam/LoginActivity;->finish()V

    goto/16 :goto_0

    .line 215
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lzx/iteam/RegisterActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 220
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/lzx/iteam/ForgetActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    .local v0, "forget":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x7f0e04a7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    const v0, 0x7f0300b5

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/LoginActivity;->setContentView(I)V

    .line 161
    iput-object p0, p0, Lcom/lzx/iteam/LoginActivity;->mContext:Landroid/content/Context;

    .line 162
    sput-object p0, Lcom/lzx/iteam/LoginActivity;->instance:Lcom/lzx/iteam/LoginActivity;

    .line 163
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mDialog:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 164
    iget-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mAsynClient:Lcom/lzx/iteam/net/AsynHttpClient;

    .line 165
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 166
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v1, p0, Lcom/lzx/iteam/LoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/LoginActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 167
    invoke-virtual {p0}, Lcom/lzx/iteam/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "regist"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lzx/iteam/LoginActivity;->isRegist:Z

    .line 168
    invoke-direct {p0}, Lcom/lzx/iteam/LoginActivity;->initView()V

    .line 169
    return-void
.end method
