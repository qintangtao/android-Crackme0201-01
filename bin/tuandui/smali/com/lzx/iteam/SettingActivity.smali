.class public Lcom/lzx/iteam/SettingActivity;
.super Landroid/app/Activity;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/SettingActivity$MobileDeactiveMessage;
    }
.end annotation


# static fields
.field private static final MSG_DEACTIVE:I = 0x7d2

.field private static final MSG_GET_VERSION:I = 0x700


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private dialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mAsk:Lcom/lzx/iteam/widget/TextMoreView;

.field private mAsynClient:Lcom/lzx/iteam/net/AsynHttpClient;

.field private mBack:Landroid/widget/LinearLayout;

.field private mCheck:Lcom/lzx/iteam/widget/TextMoreView;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mCustom:Lcom/lzx/iteam/widget/TextMoreView;

.field private mHandler:Landroid/os/Handler;

.field private mHelp:Lcom/lzx/iteam/widget/TextMoreView;

.field private mIntent:Landroid/content/Intent;

.field private mIvDimension:Landroid/widget/ImageView;

.field private mMyAvatar:Ljava/lang/String;

.field private mMyName:Ljava/lang/String;

.field private mOut:Landroid/widget/TextView;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mQrCode:Lcom/lzx/iteam/widget/TextMoreView;

.field private mQrCodeEncoder:Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;

.field private mQrCodeWindow:Landroid/widget/PopupWindow;

.field private mQuestion:Lcom/lzx/iteam/widget/TextMoreView;

.field private mResetPw:Lcom/lzx/iteam/widget/TextMoreView;

.field private mTvVersion:Landroid/widget/TextView;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/SettingActivity;->bmp:Landroid/graphics/Bitmap;

    .line 76
    new-instance v0, Lcom/lzx/iteam/SettingActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/SettingActivity$1;-><init>(Lcom/lzx/iteam/SettingActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/SettingActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/SettingActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mQrCodeWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private getVersionMessage()V
    .locals 5

    .prologue
    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v0, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "client_type"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "version"

    invoke-static {p0}, Lcom/lzx/iteam/util/Constants;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    new-instance v1, Lcom/lzx/iteam/net/GetAppMessageMsg;

    iget-object v2, p0, Lcom/lzx/iteam/SettingActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x700

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lzx/iteam/net/GetAppMessageMsg;-><init>(Landroid/os/Message;)V

    .line 442
    .local v1, "message":Lcom/lzx/iteam/net/GetAppMessageMsg;
    const-string v2, "/api/app/version"

    iput-object v2, v1, Lcom/lzx/iteam/net/GetAppMessageMsg;->mApi:Ljava/lang/String;

    .line 443
    iput-object v0, v1, Lcom/lzx/iteam/net/GetAppMessageMsg;->mParams:Ljava/util/List;

    .line 444
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 446
    return-void
.end method

.method private showQrCodePop()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 239
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030093

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 240
    .local v2, "mainView":Landroid/view/View;
    const v4, 0x7f0e041b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 241
    .local v0, "head":Landroid/widget/ImageView;
    sget-object v4, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v5, p0, Lcom/lzx/iteam/SettingActivity;->mMyAvatar:Ljava/lang/String;

    sget-object v6, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v4, v5, v0, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 243
    const v4, 0x7f0e0405

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lzx/iteam/SettingActivity;->mIvDimension:Landroid/widget/ImageView;

    .line 244
    iget-object v4, p0, Lcom/lzx/iteam/SettingActivity;->nameCard:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/SettingActivity;->setQrCode(Ljava/util/ArrayList;)V

    .line 245
    const v4, 0x7f0e041c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 246
    .local v1, "mName":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lzx/iteam/SettingActivity;->mMyName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    const v4, 0x7f0e041a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 249
    .local v3, "qrcode":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lzx/iteam/SettingActivity;->mQrCodeWindow:Landroid/widget/PopupWindow;

    .line 250
    iget-object v4, p0, Lcom/lzx/iteam/SettingActivity;->mQrCodeWindow:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v4, p0, Lcom/lzx/iteam/SettingActivity;->mQrCodeWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 252
    iget-object v4, p0, Lcom/lzx/iteam/SettingActivity;->mQrCodeWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 253
    iget-object v4, p0, Lcom/lzx/iteam/SettingActivity;->mQrCodeWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 254
    iget-object v4, p0, Lcom/lzx/iteam/SettingActivity;->mQrCodeWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 255
    iget-object v4, p0, Lcom/lzx/iteam/SettingActivity;->mQrCodeWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 256
    iget-object v4, p0, Lcom/lzx/iteam/SettingActivity;->mQrCodeWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 257
    iget-object v4, p0, Lcom/lzx/iteam/SettingActivity;->mQrCodeWindow:Landroid/widget/PopupWindow;

    const/16 v5, 0x11

    invoke-virtual {v4, v2, v5, v9, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 258
    iget-object v4, p0, Lcom/lzx/iteam/SettingActivity;->mQrCodeWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->update()V

    .line 259
    const v4, 0x7f040002

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 260
    new-instance v4, Lcom/lzx/iteam/SettingActivity$2;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/SettingActivity$2;-><init>(Lcom/lzx/iteam/SettingActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 266
    new-instance v4, Lcom/lzx/iteam/SettingActivity$3;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/SettingActivity$3;-><init>(Lcom/lzx/iteam/SettingActivity;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 274
    return-void
.end method


# virtual methods
.method public checkVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "versionCode"    # Ljava/lang/String;
    .param p2, "versionLog"    # Ljava/lang/String;
    .param p3, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->updateOnlineConfig(Landroid/content/Context;)V

    .line 400
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 401
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 402
    .local v2, "mWifi":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    :try_start_0
    invoke-static {p0}, Lcom/lzx/iteam/util/Constants;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 406
    iget-object v3, p0, Lcom/lzx/iteam/SettingActivity;->dialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u53d1\u73b0\u65b0\u7248\u672c\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u73b0\u5728\u4e0b\u8f7d"

    const-string v6, "\u4ee5\u540e\u518d\u8bf4"

    invoke-virtual {v3, v4, p2, v5, v6}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 407
    iget-object v3, p0, Lcom/lzx/iteam/SettingActivity;->dialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    new-instance v4, Lcom/lzx/iteam/SettingActivity$5;

    invoke-direct {v4, p0, p3}, Lcom/lzx/iteam/SettingActivity$5;-><init>(Lcom/lzx/iteam/SettingActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v1

    .line 425
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initProperty()V
    .locals 1

    .prologue
    .line 179
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/SettingActivity;->dialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 180
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mAsynClient:Lcom/lzx/iteam/net/AsynHttpClient;

    .line 181
    return-void
.end method

.method public initView()V
    .locals 1

    .prologue
    .line 148
    const v0, 0x7f0e05f0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mBack:Landroid/widget/LinearLayout;

    .line 149
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v0, 0x7f0e05f6

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/TextMoreView;

    iput-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mResetPw:Lcom/lzx/iteam/widget/TextMoreView;

    .line 151
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mResetPw:Lcom/lzx/iteam/widget/TextMoreView;

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/widget/TextMoreView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mResetPw:Lcom/lzx/iteam/widget/TextMoreView;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/TextMoreView;->setImageGone()V

    .line 153
    const v0, 0x7f0e05f7

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/TextMoreView;

    iput-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mCheck:Lcom/lzx/iteam/widget/TextMoreView;

    .line 154
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mCheck:Lcom/lzx/iteam/widget/TextMoreView;

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/widget/TextMoreView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mCheck:Lcom/lzx/iteam/widget/TextMoreView;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/TextMoreView;->setImageGone()V

    .line 156
    const v0, 0x7f0e05fa

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mOut:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mOut:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v0, 0x7f0e05f8

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/TextMoreView;

    iput-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mAsk:Lcom/lzx/iteam/widget/TextMoreView;

    .line 159
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mAsk:Lcom/lzx/iteam/widget/TextMoreView;

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/widget/TextMoreView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mAsk:Lcom/lzx/iteam/widget/TextMoreView;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/TextMoreView;->setImageGone()V

    .line 161
    const v0, 0x7f0e05f9

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/TextMoreView;

    iput-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mCustom:Lcom/lzx/iteam/widget/TextMoreView;

    .line 162
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mCustom:Lcom/lzx/iteam/widget/TextMoreView;

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/widget/TextMoreView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mCustom:Lcom/lzx/iteam/widget/TextMoreView;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/TextMoreView;->setImageGone()V

    .line 164
    const v0, 0x7f0e05f3

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/TextMoreView;

    iput-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mHelp:Lcom/lzx/iteam/widget/TextMoreView;

    .line 165
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mHelp:Lcom/lzx/iteam/widget/TextMoreView;

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/widget/TextMoreView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mHelp:Lcom/lzx/iteam/widget/TextMoreView;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/TextMoreView;->setImageGone()V

    .line 167
    const v0, 0x7f0e05f4

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/TextMoreView;

    iput-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mQuestion:Lcom/lzx/iteam/widget/TextMoreView;

    .line 168
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mQuestion:Lcom/lzx/iteam/widget/TextMoreView;

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/widget/TextMoreView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mQuestion:Lcom/lzx/iteam/widget/TextMoreView;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/TextMoreView;->setImageGone()V

    .line 170
    const v0, 0x7f0e05f5

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/TextMoreView;

    iput-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mQrCode:Lcom/lzx/iteam/widget/TextMoreView;

    .line 171
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mQrCode:Lcom/lzx/iteam/widget/TextMoreView;

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/widget/TextMoreView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mQrCode:Lcom/lzx/iteam/widget/TextMoreView;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/TextMoreView;->setImageGone()V

    .line 173
    const v0, 0x7f0e05f2

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mTvVersion:Landroid/widget/TextView;

    .line 176
    return-void
.end method

.method public mobileDeactive()V
    .locals 5

    .prologue
    .line 342
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    new-instance v0, Lcom/lzx/iteam/SettingActivity$MobileDeactiveMessage;

    .line 346
    iget-object v2, p0, Lcom/lzx/iteam/SettingActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 345
    invoke-direct {v0, v2}, Lcom/lzx/iteam/SettingActivity$MobileDeactiveMessage;-><init>(Landroid/os/Message;)V

    .line 347
    .local v0, "mobileDeactiveMsg":Lcom/lzx/iteam/SettingActivity$MobileDeactiveMessage;
    iput-object v1, v0, Lcom/lzx/iteam/SettingActivity$MobileDeactiveMessage;->mParams:Ljava/util/List;

    .line 348
    const-string v2, "/api/user/logout"

    iput-object v2, v0, Lcom/lzx/iteam/SettingActivity$MobileDeactiveMessage;->mApi:Ljava/lang/String;

    .line 349
    iget-object v2, p0, Lcom/lzx/iteam/SettingActivity;->mAsynClient:Lcom/lzx/iteam/net/AsynHttpClient;

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 350
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 233
    :goto_0
    :pswitch_0
    return-void

    .line 198
    :pswitch_1
    invoke-virtual {p0}, Lcom/lzx/iteam/SettingActivity;->finish()V

    goto :goto_0

    .line 201
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/ResetPswActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 205
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_3
    invoke-direct {p0}, Lcom/lzx/iteam/SettingActivity;->getVersionMessage()V

    goto :goto_0

    .line 208
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/CompanyCustomActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v1, "custom":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 213
    .end local v1    # "custom":Landroid/content/Intent;
    :pswitch_5
    invoke-virtual {p0}, Lcom/lzx/iteam/SettingActivity;->showAlarmDialog()V

    goto :goto_0

    .line 216
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/AskActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v0, "ask":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 220
    .end local v0    # "ask":Landroid/content/Intent;
    :pswitch_7
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/HelpActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "title"

    const-string v4, "\u64cd\u4f5c\u5e2e\u52a9"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v3, "type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 226
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_8
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/FeedActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 230
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_9
    invoke-direct {p0}, Lcom/lzx/iteam/SettingActivity;->showQrCodePop()V

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x7f0e05f0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    const v0, 0x7f0300e6

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SettingActivity;->setContentView(I)V

    .line 140
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 141
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 142
    invoke-virtual {p0}, Lcom/lzx/iteam/SettingActivity;->initView()V

    .line 143
    invoke-virtual {p0}, Lcom/lzx/iteam/SettingActivity;->initProperty()V

    .line 144
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mTvVersion:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "V "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/lzx/iteam/util/Constants;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 187
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "contact_name_card"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lzx/iteam/SettingActivity;->nameCard:Ljava/util/ArrayList;

    .line 188
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity;->nameCard:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mMyAvatar:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity;->nameCard:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lzx/iteam/SettingActivity;->mMyName:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setQrCode(Ljava/util/ArrayList;)V
    .locals 9
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
    .line 278
    .local p1, "nameCard":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "window"

    invoke-virtual {p0, v6}, Lcom/lzx/iteam/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 279
    .local v3, "manager":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 280
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 281
    .local v5, "width":I
    move v4, v5

    .line 283
    .local v4, "smllerDimension":I
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iput-object v6, p0, Lcom/lzx/iteam/SettingActivity;->mIntent:Landroid/content/Intent;

    .line 284
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 285
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "name"

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v7, "phone"

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v7, "company"

    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v7, "job"

    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v7, "email"

    const/4 v6, 0x5

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v7, "address"

    const/4 v6, 0x6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 294
    iget-object v6, p0, Lcom/lzx/iteam/SettingActivity;->mIntent:Landroid/content/Intent;

    const-string v7, "ENCODE_TYPE"

    const-string v8, "CONTACT_TYPE"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    iget-object v6, p0, Lcom/lzx/iteam/SettingActivity;->mIntent:Landroid/content/Intent;

    const-string v7, "ENCODE_DATA"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 296
    iget-object v6, p0, Lcom/lzx/iteam/SettingActivity;->mIntent:Landroid/content/Intent;

    const-string v7, "ENCODE_FORMAT"

    sget-object v8, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v8}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    :cond_0
    new-instance v6, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;

    iget-object v7, p0, Lcom/lzx/iteam/SettingActivity;->mIntent:Landroid/content/Intent;

    const/4 v8, 0x1

    invoke-direct {v6, p0, v7, v4, v8}, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V

    iput-object v6, p0, Lcom/lzx/iteam/SettingActivity;->mQrCodeEncoder:Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;

    .line 303
    iget-object v6, p0, Lcom/lzx/iteam/SettingActivity;->mQrCodeEncoder:Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;

    const/high16 v7, -0x1000000

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/lzx/iteam/dimensioncode/encode/QRCodeEncoder;->encodeAsBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/lzx/iteam/SettingActivity;->bmp:Landroid/graphics/Bitmap;

    .line 304
    iget-object v6, p0, Lcom/lzx/iteam/SettingActivity;->mIvDimension:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/lzx/iteam/SettingActivity;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 305
    iget-object v6, p0, Lcom/lzx/iteam/SettingActivity;->mIvDimension:Landroid/widget/ImageView;

    const v7, 0x7f0a0005

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v2

    .line 307
    .local v2, "e":Lcom/google/zxing/WriterException;
    invoke-virtual {v2}, Lcom/google/zxing/WriterException;->printStackTrace()V

    goto :goto_0
.end method

.method public showAlarmDialog()V
    .locals 5

    .prologue
    .line 317
    const-string v1, "\u63d0\u793a"

    .line 318
    .local v1, "stopAlarm":Ljava/lang/String;
    const-string v0, "\u662f\u5426\u9000\u51fa\u5f53\u524d\u8d26\u53f7"

    .line 319
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/lzx/iteam/SettingActivity;->dialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    const-string v3, "\u786e\u5b9a"

    const-string v4, "\u53d6\u6d88"

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 320
    iget-object v2, p0, Lcom/lzx/iteam/SettingActivity;->dialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    new-instance v3, Lcom/lzx/iteam/SettingActivity$4;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/SettingActivity$4;-><init>(Lcom/lzx/iteam/SettingActivity;)V

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 334
    return-void
.end method
