.class public Lcom/lzx/iteam/MyTalkMessageActivity;
.super Landroid/app/Activity;
.source "MyTalkMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final GET_MY_MESSAGE:I

.field private adapter:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mHandler:Landroid/os/Handler;

.field private mLlBack:Landroid/widget/LinearLayout;

.field private mLlNoData:Landroid/widget/LinearLayout;

.field private mMyMessageList:Landroid/widget/ListView;

.field private mTalkMessageDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/MyTalkMessageData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity;->GET_MY_MESSAGE:I

    .line 51
    new-instance v0, Lcom/lzx/iteam/MyTalkMessageActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/MyTalkMessageActivity$1;-><init>(Lcom/lzx/iteam/MyTalkMessageActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity;->mHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method private GetMyMessage()V
    .locals 5

    .prologue
    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 175
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v0, Lcom/lzx/iteam/net/GetMyTalkMessageMsg;

    iget-object v2, p0, Lcom/lzx/iteam/MyTalkMessageActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/lzx/iteam/net/GetMyTalkMessageMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 177
    .local v0, "message":Lcom/lzx/iteam/net/GetMyTalkMessageMsg;
    const-string v2, "/api/talk/msg"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetMyTalkMessageMsg;->mApi:Ljava/lang/String;

    .line 178
    iput-object v1, v0, Lcom/lzx/iteam/net/GetMyTalkMessageMsg;->mParams:Ljava/util/List;

    .line 179
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execTalkHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 180
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/MyTalkMessageActivity;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/lzx/iteam/MyTalkMessageActivity;->initData()V

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/MyTalkMessageActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/MyTalkMessageActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity;->mTalkMessageDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/MyTalkMessageActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity;->mLlNoData:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/MyTalkMessageActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity;->mMyMessageList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/MyTalkMessageActivity;)Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity;->adapter:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/MyTalkMessageActivity;Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lzx/iteam/MyTalkMessageActivity;->adapter:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;

    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/lzx/iteam/MyTalkMessageActivity$2;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/MyTalkMessageActivity$2;-><init>(Lcom/lzx/iteam/MyTalkMessageActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 108
    invoke-virtual {v0, v1}, Lcom/lzx/iteam/MyTalkMessageActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 113
    const v0, 0x7f0e0518

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/MyTalkMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity;->mLlNoData:Landroid/widget/LinearLayout;

    .line 114
    const v0, 0x7f0e0516

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/MyTalkMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity;->mLlBack:Landroid/widget/LinearLayout;

    .line 115
    const v0, 0x7f0e0519

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/MyTalkMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity;->mMyMessageList:Landroid/widget/ListView;

    .line 116
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity;->mMyMessageList:Landroid/widget/ListView;

    new-instance v1, Lcom/lzx/iteam/MyTalkMessageActivity$3;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/MyTalkMessageActivity$3;-><init>(Lcom/lzx/iteam/MyTalkMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity;->mMyMessageList:Landroid/widget/ListView;

    new-instance v1, Lcom/lzx/iteam/MyTalkMessageActivity$4;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/MyTalkMessageActivity$4;-><init>(Lcom/lzx/iteam/MyTalkMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity;->mLlBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 140
    :pswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/MyTalkMessageActivity;->finish()V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x7f0e0516
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f0300c1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/MyTalkMessageActivity;->setContentView(I)V

    .line 70
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/MyTalkMessageActivity;->mTalkMessageDatas:Ljava/util/ArrayList;

    .line 74
    invoke-direct {p0}, Lcom/lzx/iteam/MyTalkMessageActivity;->initView()V

    .line 75
    invoke-direct {p0}, Lcom/lzx/iteam/MyTalkMessageActivity;->initData()V

    .line 76
    invoke-direct {p0}, Lcom/lzx/iteam/MyTalkMessageActivity;->GetMyMessage()V

    .line 77
    return-void
.end method

.method public showExitGroupDlg(Lcom/lzx/iteam/bean/MyTalkMessageData;)V
    .locals 4
    .param p1, "myTalkMessageData"    # Lcom/lzx/iteam/bean/MyTalkMessageData;

    .prologue
    .line 150
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v1

    .line 151
    .local v1, "dialogUtil":Lcom/lzx/iteam/util/AllDialogUtil;
    const v3, 0x7f080061

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/MyTalkMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "okText":Ljava/lang/String;
    const v3, 0x7f08002d

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/MyTalkMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "cancelText":Ljava/lang/String;
    const-string v3, "\u5220\u9664\u6b64\u6761\u6d88\u606f"

    invoke-virtual {v1, v2, v0, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 154
    new-instance v3, Lcom/lzx/iteam/MyTalkMessageActivity$5;

    invoke-direct {v3, p0, p1}, Lcom/lzx/iteam/MyTalkMessageActivity$5;-><init>(Lcom/lzx/iteam/MyTalkMessageActivity;Lcom/lzx/iteam/bean/MyTalkMessageData;)V

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 169
    return-void
.end method
