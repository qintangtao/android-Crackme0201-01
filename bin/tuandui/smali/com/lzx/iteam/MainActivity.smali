.class public Lcom/lzx/iteam/MainActivity;
.super Lcom/lzx/iteam/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/MainActivity$NameCardMessage;,
        Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;
    }
.end annotation


# static fields
.field private static final MSG_GET_CHAT_GROUP_LIST:I = 0x701

.field private static final MSG_GET_IN_APP:I = 0x6fe

.field private static final MSG_GET_NAMECARD:I = 0x6fd

.field private static final MSG_GET_OUT_APP:I = 0x6ff

.field public static mActivity:Lcom/lzx/iteam/MainActivity;

.field public static mFragMainContainer:Landroid/widget/LinearLayout;


# instance fields
.field public chatGroupIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field public eventIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private eventPosition:I

.field fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private homeListenerReceiver:Landroid/content/BroadcastReceiver;

.field public mAllEventReplyUnReadMsg:Landroid/widget/TextView;

.field public mAllMessageUnReadMsg:Landroid/widget/TextView;

.field private mContactsLayout:Landroid/view/View;

.field public mContext:Landroid/content/Context;

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mEventReplyDB:Lcom/lzx/iteam/provider/EventsMsgDB;

.field private mFragmentArray:[Ljava/lang/Class;

.field private mFunctionLayout:Landroid/view/View;

.field private mGroupLayout:Landroid/view/View;

.field public mHandler:Landroid/os/Handler;

.field private mIvContacts:Landroid/widget/ImageView;

.field private mIvFunction:Landroid/widget/ImageView;

.field private mIvGroup:Landroid/widget/ImageView;

.field private mIvHelp:Landroid/widget/ImageView;

.field private mIvRecent:Landroid/widget/ImageView;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mRecentLayout:Landroid/view/View;

.field private mTabHost:Landroid/support/v4/app/FragmentTabHost;

.field private mTextArray:[Ljava/lang/String;

.field private mTvContacts:Landroid/widget/TextView;

.field private mTvFunction:Landroid/widget/TextView;

.field private mTvGroup:Landroid/widget/TextView;

.field private mTvRecent:Landroid/widget/TextView;

.field public newMessageImpl:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Lcom/lzx/iteam/BaseActivity;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/MainActivity;->chatGroupIds:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/MainActivity;->eventIds:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Lcom/lzx/iteam/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/MainActivity$1;-><init>(Lcom/lzx/iteam/MainActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/MainActivity;->mHandler:Landroid/os/Handler;

    .line 177
    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Lcom/lzx/iteam/EventsFragment;

    aput-object v1, v0, v2

    const-class v1, Lcom/lzx/iteam/GroupFragment;

    aput-object v1, v0, v3

    .line 178
    const-class v1, Lcom/lzx/iteam/ContactsFragment;

    aput-object v1, v0, v4

    const-class v1, Lcom/lzx/iteam/FunctionFragment;

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/lzx/iteam/MainActivity;->mFragmentArray:[Ljava/lang/Class;

    .line 179
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "\u5de5\u4f5c"

    aput-object v1, v0, v2

    const-string v1, "\u804a\u5929"

    aput-object v1, v0, v3

    const-string v1, "\u56e2\u961f"

    aput-object v1, v0, v4

    const-string v1, "\u6211"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/lzx/iteam/MainActivity;->mTextArray:[Ljava/lang/String;

    .line 811
    new-instance v0, Lcom/lzx/iteam/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/MainActivity$2;-><init>(Lcom/lzx/iteam/MainActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/MainActivity;->homeListenerReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/MainActivity;)Lcom/lzx/iteam/util/AllDialogUtil;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lzx/iteam/MainActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/MainActivity;)V
    .locals 0

    .prologue
    .line 856
    invoke-direct {p0}, Lcom/lzx/iteam/MainActivity;->getOutAppMessage()V

    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/MainActivity;)Lcom/lzx/iteam/util/PreferenceUtil;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/MainActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/MainActivity;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/lzx/iteam/MainActivity;->homeListenerReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/MainActivity;)Lcom/lzx/iteam/provider/MessageDB;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lzx/iteam/MainActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/MainActivity;)Lcom/lzx/iteam/provider/EventsMsgDB;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lzx/iteam/MainActivity;->mEventReplyDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/MainActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lzx/iteam/MainActivity;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method private getInAppMessage()V
    .locals 5

    .prologue
    .line 842
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .local v0, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "client_type"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "version"

    invoke-static {p0}, Lcom/lzx/iteam/util/Constants;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    new-instance v1, Lcom/lzx/iteam/net/GetAppMessageMsg;

    iget-object v2, p0, Lcom/lzx/iteam/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6fe

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lzx/iteam/net/GetAppMessageMsg;-><init>(Landroid/os/Message;)V

    .line 847
    .local v1, "message":Lcom/lzx/iteam/net/GetAppMessageMsg;
    const-string v2, "/api/app/in"

    iput-object v2, v1, Lcom/lzx/iteam/net/GetAppMessageMsg;->mApi:Ljava/lang/String;

    .line 848
    iput-object v0, v1, Lcom/lzx/iteam/net/GetAppMessageMsg;->mParams:Ljava/util/List;

    .line 849
    iget-object v2, p0, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 851
    return-void
.end method

.method private getOutAppMessage()V
    .locals 5

    .prologue
    .line 857
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 858
    .local v0, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    new-instance v1, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    iget-object v2, p0, Lcom/lzx/iteam/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6ff

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 860
    .local v1, "message":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    const-string v2, "/api/app/out"

    iput-object v2, v1, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 861
    iput-object v0, v1, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 862
    iget-object v2, p0, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 864
    return-void
.end method

.method private getTabItemView(I)Landroid/view/View;
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 186
    const/4 v4, 0x4

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 194
    .local v1, "mImageArray":[I
    iget-object v4, p0, Lcom/lzx/iteam/MainActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300f1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 195
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0e0610

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 196
    .local v0, "imageView":Landroid/widget/ImageView;
    aget v4, v1, p1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    const v4, 0x7f0e0612

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 198
    .local v2, "textView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lzx/iteam/MainActivity;->mTextArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    packed-switch p1, :pswitch_data_0

    .line 210
    :goto_0
    return-object v3

    .line 201
    :pswitch_0
    const v4, 0x7f0e04ae

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    goto :goto_0

    .line 204
    :pswitch_1
    const v4, 0x7f0e0611

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    goto :goto_0

    .line 186
    :array_0
    .array-data 4
        0x7f020230
        0x7f02022d
        0x7f020234
        0x7f020228
    .end array-data

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initChatGroupUnRead()V
    .locals 2

    .prologue
    .line 355
    new-instance v0, Lcom/lzx/iteam/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/MainActivity$4;-><init>(Lcom/lzx/iteam/MainActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 407
    invoke-virtual {v0, v1}, Lcom/lzx/iteam/MainActivity$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 409
    return-void
.end method

.method private uploadNameCard()V
    .locals 5

    .prologue
    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v0, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    new-instance v1, Lcom/lzx/iteam/MainActivity$NameCardMessage;

    iget-object v2, p0, Lcom/lzx/iteam/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6fd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/lzx/iteam/MainActivity$NameCardMessage;-><init>(Lcom/lzx/iteam/MainActivity;Landroid/os/Message;)V

    .line 493
    .local v1, "message":Lcom/lzx/iteam/MainActivity$NameCardMessage;
    const-string v2, "/api/user/mynamecard"

    iput-object v2, v1, Lcom/lzx/iteam/MainActivity$NameCardMessage;->mApi:Ljava/lang/String;

    .line 494
    iput-object v0, v1, Lcom/lzx/iteam/MainActivity$NameCardMessage;->mParams:Ljava/util/List;

    .line 495
    iget-object v2, p0, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 497
    return-void
.end method


# virtual methods
.method public checkTwoSims(Z)V
    .locals 22
    .param p1, "isstart"    # Z

    .prologue
    .line 566
    const/4 v9, 0x0

    .line 567
    .local v9, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 568
    .local v5, "br":Ljava/io/BufferedReader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/net/MsgCenter;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/MsgCenter;

    move-result-object v15

    .line 570
    .local v15, "mc":Lcom/lzx/iteam/net/MsgCenter;
    :try_start_0
    new-instance v4, Landroid/os/Build;

    invoke-direct {v4}, Landroid/os/Build;-><init>()V

    .line 571
    .local v4, "bd":Landroid/os/Build;
    sget-object v19, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 572
    .local v16, "model":Ljava/lang/String;
    sget-object v19, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 573
    .local v8, "factory":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    const-string v20, "twosims.txt"

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 579
    :goto_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 580
    .end local v5    # "br":Ljava/io/BufferedReader;
    .local v6, "br":Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .line 581
    .local v14, "line":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v14

    if-nez v14, :cond_5

    .line 639
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 640
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 645
    :cond_2
    if-eqz v9, :cond_e

    .line 646
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d

    move-object v5, v6

    .line 653
    .end local v4    # "bd":Landroid/os/Build;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v8    # "factory":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "model":Ljava/lang/String;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    return-void

    .line 576
    .restart local v4    # "bd":Landroid/os/Build;
    .restart local v8    # "factory":Ljava/lang/String;
    .restart local v16    # "model":Ljava/lang/String;
    :cond_4
    :try_start_4
    const-string v19, "twosims.txt"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/MainActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result-object v9

    goto :goto_0

    .line 582
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    :cond_5
    :try_start_5
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 583
    .local v18, "strs":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v18, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v19, 0x1

    aget-object v19, v18, v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/MainActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    move-object/from16 v19, v0

    const-string v20, "istwosim"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/MainActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    move-object/from16 v19, v0

    const-string v20, "twosimmodel"

    const/16 v21, 0x0

    aget-object v21, v18, v21

    invoke-virtual/range {v19 .. v21}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/MainActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    move-object/from16 v19, v0

    const-string v20, "twosimfactory"

    const/16 v21, 0x1

    aget-object v21, v18, v21

    invoke-virtual/range {v19 .. v21}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/MainActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    move-object/from16 v19, v0

    const-string v20, "twosimpackage"

    const/16 v21, 0x2

    aget-object v21, v18, v21

    invoke-virtual/range {v19 .. v21}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/MainActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    move-object/from16 v19, v0

    const-string v20, "twosimdownloadurl"

    const/16 v21, 0x3

    aget-object v21, v18, v21

    invoke-virtual/range {v19 .. v21}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/MainActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    move-object/from16 v19, v0

    const-string v20, "twosimtype"

    const/16 v21, 0x4

    aget-object v21, v18, v21

    invoke-virtual/range {v19 .. v21}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 590
    const/4 v12, 0x0

    .line 591
    .local v12, "isHaveInstalled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v17

    .line 593
    .local v17, "pm":Landroid/content/pm/PackageManager;
    const/16 v19, 0x2

    :try_start_6
    aget-object v19, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 594
    const/4 v12, 0x1

    .line 598
    :goto_3
    const-wide/16 v10, -0x1

    .line 599
    .local v10, "flag":J
    if-nez v12, :cond_a

    .line 600
    const-wide/16 v20, 0x0

    const/16 v19, 0x2718

    :try_start_7
    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Lcom/lzx/iteam/net/MsgCenter;->typeMsgExist(JI)J

    move-result-wide v10

    .line 601
    const-wide/16 v20, -0x1

    cmp-long v19, v10, v20

    if-nez v19, :cond_7

    .line 602
    new-instance v13, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;

    invoke-direct {v13}, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;-><init>()V

    .line 603
    .local v13, "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    iput-wide v0, v13, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->cloudId:J

    .line 604
    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->phoneNum:Ljava/lang/String;

    .line 605
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v13, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->isReaded:I

    .line 606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v13, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->dateTime:J

    .line 607
    const/16 v19, 0x2718

    move/from16 v0, v19

    iput v0, v13, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->execCode:I

    .line 608
    const v19, 0x7f08006d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->displayText:Ljava/lang/String;

    .line 609
    new-instance v19, Ljava/lang/StringBuilder;

    const/16 v20, 0x2

    aget-object v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x3

    aget-object v20, v18, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->argList:Ljava/lang/String;

    .line 610
    const v19, 0x7f0200e0

    move/from16 v0, v19

    iput v0, v13, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->msgTypeDrawableId:I

    .line 611
    const/16 v19, -0x1

    move/from16 v0, v19

    iput v0, v13, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->nextActionDrawableId:I

    .line 612
    invoke-virtual {v15, v13}, Lcom/lzx/iteam/net/MsgCenter;->addNewMsg(Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 635
    .end local v10    # "flag":J
    .end local v12    # "isHaveInstalled":Z
    .end local v13    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "strs":[Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v5, v6

    .line 636
    .end local v4    # "bd":Landroid/os/Build;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v8    # "factory":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "model":Ljava/lang/String;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .local v7, "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 639
    if-eqz v5, :cond_6

    .line 640
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 645
    :cond_6
    if-eqz v9, :cond_3

    .line 646
    :try_start_a
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_2

    .line 647
    :catch_1
    move-exception v7

    .line 648
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 596
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v4    # "bd":Landroid/os/Build;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "factory":Ljava/lang/String;
    .restart local v12    # "isHaveInstalled":Z
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "model":Ljava/lang/String;
    .restart local v17    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "strs":[Ljava/lang/String;
    :catch_2
    move-exception v19

    const/4 v12, 0x0

    goto/16 :goto_3

    .line 614
    .restart local v10    # "flag":J
    :cond_7
    :try_start_b
    invoke-virtual {v15, v10, v11}, Lcom/lzx/iteam/net/MsgCenter;->getMsgItem(J)Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;

    move-result-object v13

    .line 615
    .restart local v13    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v13, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->isReaded:I

    .line 616
    const v19, 0x7f0200e0

    move/from16 v0, v19

    iput v0, v13, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->msgTypeDrawableId:I

    .line 617
    invoke-virtual {v15, v13}, Lcom/lzx/iteam/net/MsgCenter;->updateMsgReaded(Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 637
    .end local v10    # "flag":J
    .end local v12    # "isHaveInstalled":Z
    .end local v13    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "strs":[Ljava/lang/String;
    :catchall_0
    move-exception v19

    move-object v5, v6

    .line 639
    .end local v4    # "bd":Landroid/os/Build;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v8    # "factory":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "model":Ljava/lang/String;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    :goto_5
    if-eqz v5, :cond_8

    .line 640
    :try_start_c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 645
    :cond_8
    if-eqz v9, :cond_9

    .line 646
    :try_start_d
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 652
    :cond_9
    :goto_6
    throw v19

    .line 622
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "bd":Landroid/os/Build;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "factory":Ljava/lang/String;
    .restart local v10    # "flag":J
    .restart local v12    # "isHaveInstalled":Z
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "model":Ljava/lang/String;
    .restart local v17    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "strs":[Ljava/lang/String;
    :cond_a
    const-wide/16 v20, 0x0

    const/16 v19, 0x2718

    :try_start_e
    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Lcom/lzx/iteam/net/MsgCenter;->typeMsgExist(JI)J

    move-result-wide v10

    .line 623
    const-wide/16 v20, -0x1

    cmp-long v19, v10, v20

    if-eqz v19, :cond_1

    .line 624
    invoke-virtual {v15, v10, v11}, Lcom/lzx/iteam/net/MsgCenter;->getMsgItem(J)Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;

    move-result-object v13

    .line 625
    .restart local v13    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v13, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->isReaded:I

    .line 626
    const v19, 0x7f0200df

    move/from16 v0, v19

    iput v0, v13, Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;->msgTypeDrawableId:I

    .line 627
    invoke-virtual {v15, v13}, Lcom/lzx/iteam/net/MsgCenter;->updateMsgReaded(Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    .line 641
    .end local v4    # "bd":Landroid/os/Build;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v8    # "factory":Ljava/lang/String;
    .end local v10    # "flag":J
    .end local v12    # "isHaveInstalled":Z
    .end local v13    # "item":Lcom/lzx/iteam/net/MsgCenter$MsgDataItem;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "model":Ljava/lang/String;
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .end local v18    # "strs":[Ljava/lang/String;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 642
    :try_start_f
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 645
    if-eqz v9, :cond_3

    .line 646
    :try_start_10
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    goto/16 :goto_2

    .line 647
    :catch_4
    move-exception v7

    .line 648
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 643
    :catchall_1
    move-exception v19

    .line 645
    if-eqz v9, :cond_b

    .line 646
    :try_start_11
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    .line 650
    :cond_b
    :goto_7
    throw v19

    .line 647
    :catch_5
    move-exception v7

    .line 648
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 641
    .end local v7    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v7

    .line 642
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_12
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 645
    if-eqz v9, :cond_9

    .line 646
    :try_start_13
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    goto :goto_6

    .line 647
    :catch_7
    move-exception v7

    .line 648
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 643
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v19

    .line 645
    if-eqz v9, :cond_c

    .line 646
    :try_start_14
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    .line 650
    :cond_c
    :goto_8
    throw v19

    .line 647
    :catch_8
    move-exception v7

    .line 648
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 647
    .end local v7    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v7

    .line 648
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 641
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v4    # "bd":Landroid/os/Build;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "factory":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "model":Ljava/lang/String;
    :catch_a
    move-exception v7

    .line 642
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_15
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 645
    if-eqz v9, :cond_e

    .line 646
    :try_start_16
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b

    move-object v5, v6

    .line 647
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catch_b
    move-exception v7

    .line 648
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 643
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v19

    .line 645
    if-eqz v9, :cond_d

    .line 646
    :try_start_17
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c

    .line 650
    :cond_d
    :goto_9
    throw v19

    .line 647
    :catch_c
    move-exception v7

    .line 648
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 647
    .end local v7    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v7

    .line 648
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .end local v7    # "e":Ljava/io/IOException;
    :cond_e
    move-object v5, v6

    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 637
    .end local v4    # "bd":Landroid/os/Build;
    .end local v8    # "factory":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "model":Ljava/lang/String;
    :catchall_4
    move-exception v19

    goto/16 :goto_5

    .line 635
    :catch_e
    move-exception v7

    goto/16 :goto_4
.end method

.method public checkVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "versionCode"    # Ljava/lang/String;
    .param p2, "versionLog"    # Ljava/lang/String;
    .param p3, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 871
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->updateOnlineConfig(Landroid/content/Context;)V

    .line 872
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 873
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 874
    .local v2, "mWifi":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 876
    :try_start_0
    iget-object v3, p0, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lzx/iteam/util/Constants;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 878
    iget-object v3, p0, Lcom/lzx/iteam/MainActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

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

    .line 879
    iget-object v3, p0, Lcom/lzx/iteam/MainActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    new-instance v4, Lcom/lzx/iteam/MainActivity$5;

    invoke-direct {v4, p0, p3}, Lcom/lzx/iteam/MainActivity$5;-><init>(Lcom/lzx/iteam/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 896
    :catch_0
    move-exception v1

    .line 897
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 898
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/umeng/analytics/MobclickAgent;->reportError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initProperty()V
    .locals 1

    .prologue
    .line 348
    const v0, 0x7f0e04bb

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/MainActivity;->mIvHelp:Landroid/widget/ImageView;

    .line 349
    iget-object v0, p0, Lcom/lzx/iteam/MainActivity;->mIvHelp:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v0, p0, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/MainActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 351
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 451
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 475
    :goto_0
    return-void

    .line 471
    :pswitch_0
    iget-object v0, p0, Lcom/lzx/iteam/MainActivity;->mIvHelp:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/lzx/iteam/MainActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "create_group_v1"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 451
    :pswitch_data_0
    .packed-switch 0x7f0e04bb
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 216
    invoke-super/range {p0 .. p1}, Lcom/lzx/iteam/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 217
    iput-object p0, p0, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    .line 218
    sput-object p0, Lcom/lzx/iteam/MainActivity;->mActivity:Lcom/lzx/iteam/MainActivity;

    .line 219
    iget-object v11, p0, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v11

    iput-object v11, p0, Lcom/lzx/iteam/MainActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 220
    new-instance v11, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    invoke-direct {v11, p0}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;-><init>(Lcom/lzx/iteam/MainActivity;)V

    iput-object v11, p0, Lcom/lzx/iteam/MainActivity;->newMessageImpl:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    .line 222
    invoke-virtual {p0}, Lcom/lzx/iteam/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcn/jpush/android/api/JPushInterface;->stopPush(Landroid/content/Context;)V

    .line 224
    iget-object v11, p0, Lcom/lzx/iteam/MainActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v12, "first_started"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/lzx/iteam/util/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 225
    .local v6, "isFirstStart":Z
    if-eqz v6, :cond_1

    .line 226
    new-instance v11, Landroid/content/Intent;

    const-class v12, Lcom/lzx/iteam/GuideActivity;

    invoke-direct {v11, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v11}, Lcom/lzx/iteam/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 227
    invoke-virtual {p0}, Lcom/lzx/iteam/MainActivity;->finish()V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    const v11, 0x7f0300b7

    invoke-virtual {p0, v11}, Lcom/lzx/iteam/MainActivity;->setContentView(I)V

    .line 231
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v7

    .line 232
    .local v7, "localLogin":Lcom/lzx/iteam/net/LocalLogin;
    invoke-virtual {v7}, Lcom/lzx/iteam/net/LocalLogin;->isLogedin()Z

    move-result v11

    if-nez v11, :cond_2

    .line 233
    invoke-virtual {v7, p0}, Lcom/lzx/iteam/net/LocalLogin;->login(Landroid/content/Context;)Z

    .line 234
    invoke-virtual {v7}, Lcom/lzx/iteam/net/LocalLogin;->isLogedin()Z

    move-result v11

    if-nez v11, :cond_2

    .line 235
    new-instance v4, Landroid/content/Intent;

    const-class v11, Lcom/lzx/iteam/RegisterActivity;

    invoke-direct {v4, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/lzx/iteam/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 237
    invoke-virtual {p0}, Lcom/lzx/iteam/MainActivity;->finish()V

    goto :goto_0

    .line 241
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v11, p0, Lcom/lzx/iteam/MainActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v12, "team_sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v13

    iget-object v13, v13, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {p0}, Lcom/lzx/iteam/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcn/jpush/android/api/JPushInterface;->resumePush(Landroid/content/Context;)V

    .line 243
    iget-object v11, p0, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    const-string v12, "ch_ituandui"

    invoke-static {v11, v12}, Lcom/lzx/iteam/util/ChannelUtil;->getChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 244
    .local v10, "umengChannel":Ljava/lang/String;
    invoke-static {v10}, Lcom/umeng/analytics/AnalyticsConfig;->setChannel(Ljava/lang/String;)V

    .line 245
    const-string v11, "yes"

    iget-object v12, p0, Lcom/lzx/iteam/MainActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v13, "isLogin"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 246
    invoke-virtual {p0, p0}, Lcom/lzx/iteam/MainActivity;->reqCloudGroupList(Landroid/content/Context;)V

    .line 256
    :cond_3
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v11

    iput-object v11, p0, Lcom/lzx/iteam/MainActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 260
    invoke-virtual {p0}, Lcom/lzx/iteam/MainActivity;->getResources()Landroid/content/res/Resources;

    .line 261
    invoke-virtual {p0}, Lcom/lzx/iteam/MainActivity;->initProperty()V

    .line 265
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    iput-object v11, p0, Lcom/lzx/iteam/MainActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 266
    const v11, 0x1020012

    invoke-virtual {p0, v11}, Lcom/lzx/iteam/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/FragmentTabHost;

    iput-object v11, p0, Lcom/lzx/iteam/MainActivity;->mTabHost:Landroid/support/v4/app/FragmentTabHost;

    .line 267
    iget-object v11, p0, Lcom/lzx/iteam/MainActivity;->mTabHost:Landroid/support/v4/app/FragmentTabHost;

    invoke-virtual {p0}, Lcom/lzx/iteam/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v12

    const v13, 0x7f0e04ba

    invoke-virtual {v11, p0, v12, v13}, Landroid/support/v4/app/FragmentTabHost;->setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V

    .line 269
    iget-object v11, p0, Lcom/lzx/iteam/MainActivity;->mFragmentArray:[Ljava/lang/Class;

    array-length v0, v11

    .line 270
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v0, :cond_6

    .line 285
    new-instance v11, Lcom/lzx/iteam/MainActivity$3;

    invoke-direct {v11, p0}, Lcom/lzx/iteam/MainActivity$3;-><init>(Lcom/lzx/iteam/MainActivity;)V

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Void;

    .line 292
    invoke-virtual {v11, v12}, Lcom/lzx/iteam/MainActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 293
    new-instance v8, Landroid/content/Intent;

    const-string v11, "com.lzx.iteam.contactssearch.NameConvertService.START"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v8, "start":Landroid/content/Intent;
    invoke-virtual {p0, v8}, Lcom/lzx/iteam/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 304
    iget-object v11, p0, Lcom/lzx/iteam/MainActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v12, "first_started"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/lzx/iteam/util/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 305
    .local v5, "isFirst":Z
    if-eqz v5, :cond_4

    .line 306
    iget-object v11, p0, Lcom/lzx/iteam/MainActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v12, "first_started"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 309
    :cond_4
    const-string v11, "MainActivity"

    const-string v12, "--onCreate"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v11, Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v12, p0, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/lzx/iteam/MainActivity;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 311
    new-instance v11, Lcom/lzx/iteam/provider/MessageDB;

    invoke-direct {v11, p0}, Lcom/lzx/iteam/provider/MessageDB;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/lzx/iteam/MainActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    .line 312
    new-instance v11, Lcom/lzx/iteam/provider/EventsMsgDB;

    invoke-direct {v11, p0}, Lcom/lzx/iteam/provider/EventsMsgDB;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/lzx/iteam/MainActivity;->mEventReplyDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    .line 313
    invoke-direct {p0}, Lcom/lzx/iteam/MainActivity;->getInAppMessage()V

    .line 314
    new-instance v2, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 315
    .local v2, "homeFilter":Landroid/content/IntentFilter;
    iget-object v11, p0, Lcom/lzx/iteam/MainActivity;->homeListenerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v11, v2}, Lcom/lzx/iteam/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 321
    invoke-direct {p0}, Lcom/lzx/iteam/MainActivity;->initChatGroupUnRead()V

    .line 323
    new-instance v11, Lcom/lzx/iteam/task/UpLoadContactsTask;

    invoke-direct {v11, p0}, Lcom/lzx/iteam/task/UpLoadContactsTask;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Void;

    invoke-virtual {v11, v12}, Lcom/lzx/iteam/task/UpLoadContactsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 324
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v11

    if-nez v11, :cond_5

    .line 325
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lzx/iteam/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-class v12, Lcom/lzx/iteam/service/LocalService;

    invoke-direct {v4, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 326
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/lzx/iteam/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 329
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_5
    :try_start_0
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 330
    const-string v11, "Service"

    const-string v12, "MainActivity---addNewMessageInterface"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v11

    iget-object v12, p0, Lcom/lzx/iteam/MainActivity;->newMessageImpl:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    invoke-interface {v11, v12}, Lcom/lzx/iteam/service/aidl/INetService;->addNewMessageInterface(Lcom/lzx/iteam/service/aidl/NewMessageInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 272
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "homeFilter":Landroid/content/IntentFilter;
    .end local v5    # "isFirst":Z
    .end local v8    # "start":Landroid/content/Intent;
    :cond_6
    iget-object v11, p0, Lcom/lzx/iteam/MainActivity;->mTabHost:Landroid/support/v4/app/FragmentTabHost;

    iget-object v12, p0, Lcom/lzx/iteam/MainActivity;->mTextArray:[Ljava/lang/String;

    aget-object v12, v12, v3

    invoke-virtual {v11, v12}, Landroid/support/v4/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v11

    .line 273
    invoke-direct {p0, v3}, Lcom/lzx/iteam/MainActivity;->getTabItemView(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    .line 275
    .local v9, "tabSpec":Landroid/widget/TabHost$TabSpec;
    iget-object v11, p0, Lcom/lzx/iteam/MainActivity;->mTabHost:Landroid/support/v4/app/FragmentTabHost;

    iget-object v12, p0, Lcom/lzx/iteam/MainActivity;->mFragmentArray:[Ljava/lang/Class;

    aget-object v12, v12, v3

    const/4 v13, 0x0

    invoke-virtual {v11, v9, v12, v13}, Landroid/support/v4/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 270
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 765
    invoke-super {p0}, Lcom/lzx/iteam/BaseActivity;->onDestroy()V

    .line 766
    const-string v1, "MainActivity"

    const-string v2, "--Destroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-direct {p0}, Lcom/lzx/iteam/MainActivity;->getOutAppMessage()V

    .line 768
    iget-object v1, p0, Lcom/lzx/iteam/MainActivity;->homeListenerReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/lzx/iteam/MainActivity;->homeListenerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 777
    const-string v1, "Service"

    const-string v2, "MainActivity---removeNewMessageInterface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/MainActivity;->newMessageImpl:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    invoke-interface {v1, v2}, Lcom/lzx/iteam/service/aidl/INetService;->removeNewMessageInterface(Lcom/lzx/iteam/service/aidl/NewMessageInterface;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 784
    :cond_1
    :goto_1
    return-void

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 780
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 781
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 758
    invoke-super {p0}, Lcom/lzx/iteam/BaseActivity;->onPause()V

    .line 759
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 760
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->onPause(Landroid/content/Context;)V

    .line 761
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 736
    invoke-super {p0}, Lcom/lzx/iteam/BaseActivity;->onResume()V

    .line 737
    const-string v1, "MainActivity"

    const-string v2, "--onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const-string v1, "yes"

    iget-object v2, p0, Lcom/lzx/iteam/MainActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v3, "homekey"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    invoke-direct {p0}, Lcom/lzx/iteam/MainActivity;->getInAppMessage()V

    .line 740
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 741
    .local v0, "homeFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lzx/iteam/MainActivity;->homeListenerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lzx/iteam/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 743
    .end local v0    # "homeFilter":Landroid/content/IntentFilter;
    :cond_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 744
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->onResume(Landroid/content/Context;)V

    .line 745
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->clearAllNotifications(Landroid/content/Context;)V

    .line 746
    iget-object v1, p0, Lcom/lzx/iteam/MainActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "homekey"

    const-string v3, "no"

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 753
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 481
    return-void
.end method

.method public reqCloudGroupList(Landroid/content/Context;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 913
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 914
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    new-instance v0, Lcom/lzx/iteam/net/GetGroupListMsg;

    invoke-direct {v0, p1}, Lcom/lzx/iteam/net/GetGroupListMsg;-><init>(Landroid/content/Context;)V

    .line 916
    .local v0, "getGroup":Lcom/lzx/iteam/net/GetGroupListMsg;
    const-string v2, "/api/group/list"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mApi:Ljava/lang/String;

    .line 917
    iput-object v1, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mParams:Ljava/util/List;

    .line 918
    invoke-static {p1}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 919
    return-void
.end method

.method public showHelp(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 905
    if-eqz p1, :cond_0

    .line 906
    iget-object v0, p0, Lcom/lzx/iteam/MainActivity;->mIvHelp:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 910
    :goto_0
    return-void

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/MainActivity;->mIvHelp:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
