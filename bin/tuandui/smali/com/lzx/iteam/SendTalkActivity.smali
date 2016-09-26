.class public Lcom/lzx/iteam/SendTalkActivity;
.super Landroid/app/Activity;
.source "SendTalkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAKE_PHOTO:I = 0x3ec


# instance fields
.field private final GET_QN_TOKEN:I

.field private final SEND_TALK_MESSAGE:I

.field private index:I

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

.field private mActivity:Lcom/lzx/iteam/SendTalkActivity;

.field private mBack:Landroid/widget/TextView;

.field private mBitMap:Landroid/graphics/Bitmap;

.field private mContentImage:Lorg/json/JSONArray;

.field private mContentText:Ljava/lang/String;

.field private mEmotionLayout:Landroid/widget/LinearLayout;

.field private mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

.field private mFilePath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mImageHLinearLayout:Landroid/widget/LinearLayout;

.field private mImageHScrollView:Landroid/widget/HorizontalScrollView;

.field private mIvEmotion:Landroid/widget/ImageView;

.field private mIvImage:Landroid/widget/ImageView;

.field private mIvSendImage:Landroid/widget/ImageView;

.field private mIvSendPhoto:Landroid/widget/ImageView;

.field private mLlEmotionDots:Landroid/widget/LinearLayout;

.field private mLlImage:Landroid/widget/LinearLayout;

.field private mOk:Landroid/widget/TextView;

.field private mRlEditLayout:Landroid/widget/RelativeLayout;

.field private mTalkContent:Landroid/widget/EditText;

.field private mVpEmotion:Landroid/support/v4/view/ViewPager;

.field private mWaitDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/SendTalkActivity;->index:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->keyByte:Ljava/util/List;

    .line 62
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lzx/iteam/SendTalkActivity;->SEND_TALK_MESSAGE:I

    .line 63
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/lzx/iteam/SendTalkActivity;->GET_QN_TOKEN:I

    .line 68
    new-instance v0, Lcom/lzx/iteam/SendTalkActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/SendTalkActivity$1;-><init>(Lcom/lzx/iteam/SendTalkActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/SendTalkActivity;)V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/lzx/iteam/SendTalkActivity;->httpReqDlgDismiss()V

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/SendTalkActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->keyByte:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/SendTalkActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mImageHLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/SendTalkActivity;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/lzx/iteam/SendTalkActivity;->index:I

    return v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/SendTalkActivity;I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/lzx/iteam/SendTalkActivity;->index:I

    return-void
.end method

.method static synthetic access$5(Lcom/lzx/iteam/SendTalkActivity;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mContentImage:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/SendTalkActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private httpReqDlgDismiss()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mWaitDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mWaitDialog:Landroid/app/Dialog;

    .line 525
    :cond_0
    return-void
.end method

.method private httpReqDlgShow()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mWaitDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mActivity:Lcom/lzx/iteam/SendTalkActivity;

    invoke-static {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->waitDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mWaitDialog:Landroid/app/Dialog;

    .line 512
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 515
    :cond_0
    return-void
.end method

.method private initEmotion()V
    .locals 4

    .prologue
    .line 220
    new-instance v0, Lcom/lzx/iteam/emotion/EmotionUtil;

    iget-object v1, p0, Lcom/lzx/iteam/SendTalkActivity;->mTalkContent:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/lzx/iteam/SendTalkActivity;->mLlEmotionDots:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lzx/iteam/SendTalkActivity;->mVpEmotion:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lzx/iteam/emotion/EmotionUtil;-><init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

    .line 221
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

    invoke-virtual {v0}, Lcom/lzx/iteam/emotion/EmotionUtil;->initStaticFaces()V

    .line 222
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

    invoke-virtual {v0}, Lcom/lzx/iteam/emotion/EmotionUtil;->initViewPager()V

    .line 223
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mVpEmotion:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/lzx/iteam/emotion/EmotionUtil$PageChange;

    iget-object v2, p0, Lcom/lzx/iteam/SendTalkActivity;->mEmotionUtil:Lcom/lzx/iteam/emotion/EmotionUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/lzx/iteam/emotion/EmotionUtil$PageChange;-><init>(Lcom/lzx/iteam/emotion/EmotionUtil;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 224
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 149
    const v0, 0x7f0e05e1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SendTalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mBack:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f0e05e3

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SendTalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mOk:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f0e05e4

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SendTalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mTalkContent:Landroid/widget/EditText;

    .line 153
    const v0, 0x7f0e05e5

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SendTalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mImageHScrollView:Landroid/widget/HorizontalScrollView;

    .line 154
    const v0, 0x7f0e05e6

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SendTalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mImageHLinearLayout:Landroid/widget/LinearLayout;

    .line 155
    const v0, 0x7f0e05e8

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SendTalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mIvEmotion:Landroid/widget/ImageView;

    .line 156
    const v0, 0x7f0e05e9

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SendTalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mIvImage:Landroid/widget/ImageView;

    .line 157
    const v0, 0x7f0e05df

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SendTalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mRlEditLayout:Landroid/widget/RelativeLayout;

    .line 158
    const v0, 0x7f0e05ed

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SendTalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    .line 159
    const v0, 0x7f0e05ee

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SendTalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mVpEmotion:Landroid/support/v4/view/ViewPager;

    .line 160
    const v0, 0x7f0e05ef

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SendTalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mLlEmotionDots:Landroid/widget/LinearLayout;

    .line 161
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mTalkContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 162
    invoke-virtual {p0}, Lcom/lzx/iteam/SendTalkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 163
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mIvEmotion:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lzx/iteam/SendTalkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    const v0, 0x7f0e05ea

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SendTalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mLlImage:Landroid/widget/LinearLayout;

    .line 165
    const v0, 0x7f0e05eb

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SendTalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mIvSendImage:Landroid/widget/ImageView;

    .line 166
    const v0, 0x7f0e05ec

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SendTalkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mIvSendPhoto:Landroid/widget/ImageView;

    .line 167
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mBack:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mIvEmotion:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mIvImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mTalkContent:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mIvSendImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mIvSendPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    return-void
.end method

.method private sendTalkMsg()V
    .locals 5

    .prologue
    .line 347
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 349
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v2, p0, Lcom/lzx/iteam/SendTalkActivity;->mContentText:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 351
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "text"

    iget-object v4, p0, Lcom/lzx/iteam/SendTalkActivity;->mContentText:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/SendTalkActivity;->mContentImage:Lorg/json/JSONArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lzx/iteam/SendTalkActivity;->mContentImage:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 354
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "content"

    iget-object v4, p0, Lcom/lzx/iteam/SendTalkActivity;->mContentImage:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_1
    new-instance v0, Lcom/lzx/iteam/net/SendTalkMsg;

    iget-object v2, p0, Lcom/lzx/iteam/SendTalkActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/lzx/iteam/net/SendTalkMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 357
    .local v0, "message":Lcom/lzx/iteam/net/SendTalkMsg;
    const-string v2, "/api/talk/add"

    iput-object v2, v0, Lcom/lzx/iteam/net/SendTalkMsg;->mApi:Ljava/lang/String;

    .line 358
    iput-object v1, v0, Lcom/lzx/iteam/net/SendTalkMsg;->mParams:Ljava/util/List;

    .line 359
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execTalkHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 360
    return-void
.end method

.method private setImageMsg()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 402
    const/4 v2, 0x0

    .line 403
    .local v2, "imgSize":I
    sget-object v7, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 404
    sget-object v7, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 405
    if-lez v2, :cond_2

    .line 409
    iget-object v7, p0, Lcom/lzx/iteam/SendTalkActivity;->mImageHScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7, v10}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 410
    iget-object v7, p0, Lcom/lzx/iteam/SendTalkActivity;->mImageHLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v7, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v0, v7, :cond_1

    .line 455
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 412
    .restart local v0    # "i":I
    :cond_1
    sget-object v7, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 413
    .local v1, "image":Ljava/lang/String;
    move v5, v0

    .line 414
    .local v5, "position":I
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03009c

    iget-object v9, p0, Lcom/lzx/iteam/SendTalkActivity;->mImageHLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 415
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f0e0455

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 416
    .local v3, "mIvDelete":Landroid/widget/ImageView;
    const v7, 0x7f0e0454

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 417
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

    .line 419
    new-instance v7, Lcom/lzx/iteam/SendTalkActivity$2;

    invoke-direct {v7, p0, v1, v6}, Lcom/lzx/iteam/SendTalkActivity$2;-><init>(Lcom/lzx/iteam/SendTalkActivity;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    new-instance v7, Lcom/lzx/iteam/SendTalkActivity$3;

    invoke-direct {v7, p0, v5}, Lcom/lzx/iteam/SendTalkActivity$3;-><init>(Lcom/lzx/iteam/SendTalkActivity;I)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object v7, p0, Lcom/lzx/iteam/SendTalkActivity;->mImageHLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    .end local v0    # "i":I
    .end local v1    # "image":Ljava/lang/String;
    .end local v3    # "mIvDelete":Landroid/widget/ImageView;
    .end local v4    # "mIvImage":Landroid/widget/ImageView;
    .end local v5    # "position":I
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    iget-object v7, p0, Lcom/lzx/iteam/SendTalkActivity;->mImageHScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getQnToken(Ljava/lang/String;)V
    .locals 5
    .param p1, "keys"    # Ljava/lang/String;

    .prologue
    .line 496
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v1, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "keys"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    new-instance v0, Lcom/lzx/iteam/net/GetQnTokenMsg;

    iget-object v2, p0, Lcom/lzx/iteam/SendTalkActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetQnTokenMsg;-><init>(Landroid/os/Message;)V

    .line 500
    .local v0, "getQnTokenMsg":Lcom/lzx/iteam/net/GetQnTokenMsg;
    const-string v2, "/api/talk/get_talk_token"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetQnTokenMsg;->mApi:Ljava/lang/String;

    .line 501
    iput-object v1, v0, Lcom/lzx/iteam/net/GetQnTokenMsg;->mParams:Ljava/util/List;

    .line 502
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execTalkHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 503
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 365
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 366
    sparse-switch p1, :sswitch_data_0

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 368
    :sswitch_0
    if-ne p2, v5, :cond_1

    .line 369
    invoke-direct {p0}, Lcom/lzx/iteam/SendTalkActivity;->setImageMsg()V

    goto :goto_0

    .line 370
    :cond_1
    const/16 v3, 0x64

    if-ne p2, v3, :cond_0

    .line 371
    const-string v3, "imagePath"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "imgPath":Ljava/lang/String;
    sget-object v3, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-direct {p0}, Lcom/lzx/iteam/SendTalkActivity;->setImageMsg()V

    goto :goto_0

    .line 385
    .end local v2    # "imgPath":Ljava/lang/String;
    :sswitch_1
    sget-object v3, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    if-ne p2, v5, :cond_0

    .line 386
    iget-object v3, p0, Lcom/lzx/iteam/SendTalkActivity;->mFilePath:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/lzx/iteam/util/PhotoUtil;->readBitmapFromPath(Landroid/app/Activity;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 387
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/lzx/iteam/SendTalkActivity;->mFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/lzx/iteam/util/PhotoUtil;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 388
    .local v1, "degree":I
    if-eqz v1, :cond_2

    .line 389
    invoke-static {v0, v1}, Lcom/lzx/iteam/util/PhotoUtil;->rotaingImageView(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 390
    iget-object v3, p0, Lcom/lzx/iteam/SendTalkActivity;->mFilePath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/lzx/iteam/util/PhotoUtil;->deleteFolderFile(Ljava/lang/String;Z)V

    .line 391
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

    iput-object v3, p0, Lcom/lzx/iteam/SendTalkActivity;->mFilePath:Ljava/lang/String;

    .line 393
    :cond_2
    sget-object v3, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lzx/iteam/SendTalkActivity;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-direct {p0}, Lcom/lzx/iteam/SendTalkActivity;->setImageMsg()V

    goto :goto_0

    .line 366
    :sswitch_data_0
    .sparse-switch
        0xbcf -> :sswitch_1
        0x2772 -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 341
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 230
    :pswitch_1
    const-string v13, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lzx/iteam/SendTalkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/SendTalkActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 232
    invoke-static {}, Lcom/lzx/iteam/selectimage/Bimp;->deleteAllPhoto()V

    .line 233
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/SendTalkActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/SendTalkActivity;->mLlImage:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/SendTalkActivity;->finish()V

    goto :goto_0

    .line 239
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/lzx/iteam/SendTalkActivity;->httpReqDlgShow()V

    .line 241
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/SendTalkActivity;->mTalkContent:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lzx/iteam/SendTalkActivity;->mContentText:Ljava/lang/String;

    .line 242
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/SendTalkActivity;->mContentText:Ljava/lang/String;

    invoke-static {v13}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    sget-object v13, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_1

    .line 243
    const-string v13, "\u5bf9\u4e0d\u8d77\uff0c\u60a8\u6ca1\u6709\u586b\u5199\u5185\u5bb9"

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 244
    invoke-direct/range {p0 .. p0}, Lcom/lzx/iteam/SendTalkActivity;->httpReqDlgDismiss()V

    goto :goto_0

    .line 248
    :cond_1
    sget-object v13, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_2

    .line 249
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lzx/iteam/SendTalkActivity;->mContentImage:Lorg/json/JSONArray;

    .line 250
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v10, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v13, Lcom/lzx/iteam/selectimage/Bimp;->tempSelectBitmap:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_3

    .line 281
    const/4 v13, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lzx/iteam/SendTalkActivity;->getQnToken(Ljava/lang/String;)V

    .line 284
    .end local v10    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/lzx/iteam/SendTalkActivity;->sendTalkMsg()V

    goto/16 :goto_0

    .line 251
    .restart local v10    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 252
    .local v5, "image":Ljava/lang/String;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v11, "token":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 254
    .local v9, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/SendTalkActivity;->mBitMap:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_5

    .line 255
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/SendTalkActivity;->mBitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v14

    if-nez v14, :cond_4

    .line 256
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/SendTalkActivity;->mBitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 258
    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lzx/iteam/SendTalkActivity;->mBitMap:Landroid/graphics/Bitmap;

    .line 260
    :cond_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5, v14}, Lcom/lzx/iteam/util/PhotoUtil;->readBitmapFromPath(Landroid/app/Activity;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lzx/iteam/SendTalkActivity;->mBitMap:Landroid/graphics/Bitmap;

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/SendTalkActivity;->mBitMap:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/SendTalkActivity;->mBitMap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v14

    if-nez v14, :cond_6

    .line 266
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/SendTalkActivity;->mBitMap:Landroid/graphics/Bitmap;

    invoke-static {v14}, Lcom/lzx/iteam/util/PhotoUtil;->compressImage(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 267
    .local v2, "bytes":[B
    invoke-interface {v11, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .end local v2    # "bytes":[B
    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 273
    .local v8, "jsonObject":Lorg/json/JSONObject;
    const-string v14, "type"

    const-string v15, "1"

    invoke-virtual {v8, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string v14, "data"

    invoke-virtual {v8, v14, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/SendTalkActivity;->mContentImage:Lorg/json/JSONArray;

    invoke-virtual {v14, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/SendTalkActivity;->keyByte:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 276
    :catch_0
    move-exception v3

    .line 277
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 289
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v5    # "image":Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v11    # "token":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/SendTalkActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v13

    if-nez v13, :cond_7

    const/4 v12, 0x1

    .line 290
    .local v12, "visible":Z
    :goto_3
    if-eqz v12, :cond_8

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/SendTalkActivity;->mIvEmotion:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/SendTalkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0202c5

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    const-string v13, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lzx/iteam/SendTalkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodManager;

    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 298
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/SendTalkActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    if-eqz v12, :cond_9

    const/16 v13, 0x8

    :goto_5
    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/SendTalkActivity;->mLlImage:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v13

    if-nez v13, :cond_a

    const/4 v12, 0x1

    .line 300
    :goto_6
    if-eqz v12, :cond_0

    .line 301
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/SendTalkActivity;->mLlImage:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 289
    .end local v12    # "visible":Z
    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    .line 295
    .restart local v12    # "visible":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/SendTalkActivity;->mIvEmotion:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/SendTalkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0202c8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    const-string v13, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lzx/iteam/SendTalkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/SendTalkActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_4

    .line 298
    :cond_9
    const/4 v13, 0x0

    goto :goto_5

    .line 299
    :cond_a
    const/4 v12, 0x0

    goto :goto_6

    .line 308
    .end local v12    # "visible":Z
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/SendTalkActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v13

    if-nez v13, :cond_b

    const/4 v4, 0x1

    .line 309
    .local v4, "emotionVisible":Z
    :goto_7
    if-eqz v4, :cond_c

    .line 310
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/SendTalkActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/SendTalkActivity;->mIvEmotion:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/SendTalkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0202c5

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/SendTalkActivity;->mLlImage:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v13

    if-nez v13, :cond_d

    const/4 v6, 0x1

    .line 320
    .local v6, "imageVisible":Z
    :goto_9
    if-nez v6, :cond_0

    .line 321
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/SendTalkActivity;->mLlImage:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 308
    .end local v4    # "emotionVisible":Z
    .end local v6    # "imageVisible":Z
    :cond_b
    const/4 v4, 0x0

    goto :goto_7

    .line 314
    .restart local v4    # "emotionVisible":Z
    :cond_c
    :try_start_1
    const-string v13, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lzx/iteam/SendTalkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/SendTalkActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    .line 315
    :catch_1
    move-exception v3

    .line 316
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 319
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_d
    const/4 v6, 0x0

    goto :goto_9

    .line 326
    .end local v4    # "emotionVisible":Z
    :pswitch_5
    new-instance v7, Landroid/content/Intent;

    const-class v13, Lcom/lzx/iteam/ImageFileActivity;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    .local v7, "intent2":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/lzx/iteam/SendTalkActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 332
    .end local v7    # "intent2":Landroid/content/Intent;
    :pswitch_6
    invoke-static/range {p0 .. p0}, Lcom/lzx/iteam/util/PhotoUtil;->doTakePhotoEvent(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lzx/iteam/SendTalkActivity;->mFilePath:Ljava/lang/String;

    goto/16 :goto_0

    .line 336
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/SendTalkActivity;->mIvEmotion:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/SendTalkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0202c5

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/SendTalkActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/SendTalkActivity;->mLlImage:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x7f0e05e1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const v0, 0x7f0300e5

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SendTalkActivity;->setContentView(I)V

    .line 135
    iput-object p0, p0, Lcom/lzx/iteam/SendTalkActivity;->mActivity:Lcom/lzx/iteam/SendTalkActivity;

    .line 136
    invoke-direct {p0}, Lcom/lzx/iteam/SendTalkActivity;->initView()V

    .line 137
    invoke-static {p0}, Lcom/lzx/iteam/selectimage/Res;->init(Landroid/content/Context;)V

    .line 138
    invoke-direct {p0}, Lcom/lzx/iteam/SendTalkActivity;->initEmotion()V

    .line 139
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v1, 0x8

    .line 530
    packed-switch p1, :pswitch_data_0

    .line 543
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 532
    :pswitch_0
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mLlImage:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mEmotionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mLlImage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mIvEmotion:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lzx/iteam/SendTalkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 536
    const/4 v0, 0x1

    goto :goto_1

    .line 539
    :cond_1
    invoke-static {}, Lcom/lzx/iteam/selectimage/Bimp;->deleteAllPhoto()V

    goto :goto_0

    .line 530
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 145
    invoke-direct {p0}, Lcom/lzx/iteam/SendTalkActivity;->setImageMsg()V

    .line 146
    return-void
.end method

.method public setPhoto(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 6
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "file"    # [B
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 470
    const-string v0, "\u4e03\u725b--token"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v0, "\u4e03\u725b--fileName"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-static {p0}, Lcom/lzx/iteam/DialerApp;->getUploadManager(Landroid/content/Context;)Lcom/qiniu/android/storage/UploadManager;

    move-result-object v0

    .line 473
    new-instance v4, Lcom/lzx/iteam/SendTalkActivity$4;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/SendTalkActivity$4;-><init>(Lcom/lzx/iteam/SendTalkActivity;)V

    .line 491
    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    .line 472
    invoke-virtual/range {v0 .. v5}, Lcom/qiniu/android/storage/UploadManager;->put([BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    .line 492
    return-void
.end method

.method public showImageLayout(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 458
    if-eqz p1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mImageHScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 465
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity;->mImageHScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_0
.end method
