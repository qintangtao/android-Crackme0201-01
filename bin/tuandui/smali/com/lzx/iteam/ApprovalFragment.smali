.class public Lcom/lzx/iteam/ApprovalFragment;
.super Landroid/support/v4/app/Fragment;
.source "ApprovalFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# static fields
.field public static final APPROVAL_DATA:I = 0x2711

.field public static final APPROVAL_DELETE:I = 0x2712


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/lzx/iteam/adapter/ApprovalDataAdapter;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mGroupId:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutBack:Landroid/widget/LinearLayout;

.field private mLayoutNull:Landroid/widget/LinearLayout;

.field private mLayoutTitle:Landroid/widget/RelativeLayout;

.field private mListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ApprovalData;",
            ">;"
        }
    .end annotation
.end field

.field private mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mPosition:I

.field private mUid:Ljava/lang/String;

.field private mWaitDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mListData:Ljava/util/ArrayList;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mPosition:I

    .line 60
    new-instance v0, Lcom/lzx/iteam/ApprovalFragment$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ApprovalFragment$1;-><init>(Lcom/lzx/iteam/ApprovalFragment;)V

    iput-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ApprovalFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lzx/iteam/ApprovalFragment;->mListData:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/ApprovalFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mListData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/ApprovalFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lzx/iteam/ApprovalFragment;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mPosition:I

    return v0
.end method

.method static synthetic access$12(Lcom/lzx/iteam/ApprovalFragment;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/lzx/iteam/ApprovalFragment;->httpReqDlgShow()V

    return-void
.end method

.method static synthetic access$13(Lcom/lzx/iteam/ApprovalFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ApprovalFragment;->deleteApprovalData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/ApprovalFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mLayoutNull:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/ApprovalFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/ApprovalFragment;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mListType:I

    return v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/ApprovalFragment;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/ApprovalFragment;)Lcom/lzx/iteam/adapter/ApprovalDataAdapter;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mAdapter:Lcom/lzx/iteam/adapter/ApprovalDataAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/ApprovalFragment;)V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/lzx/iteam/ApprovalFragment;->httpReqDlgDismiss()V

    return-void
.end method

.method static synthetic access$8(Lcom/lzx/iteam/ApprovalFragment;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/ApprovalFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method private deleteApprovalData(Ljava/lang/String;)V
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 273
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "approval_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v0, Lcom/lzx/iteam/net/DeleteEventMsg;

    iget-object v2, p0, Lcom/lzx/iteam/ApprovalFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2712

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/DeleteEventMsg;-><init>(Landroid/os/Message;)V

    .line 276
    .local v0, "msg":Lcom/lzx/iteam/net/DeleteEventMsg;
    const-string v2, "/api/event/approval/del"

    iput-object v2, v0, Lcom/lzx/iteam/net/DeleteEventMsg;->mApi:Ljava/lang/String;

    .line 277
    iput-object v1, v0, Lcom/lzx/iteam/net/DeleteEventMsg;->mParams:Ljava/util/List;

    .line 278
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 280
    return-void
.end method

.method private getApprovalData()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 129
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v1, p0, Lcom/lzx/iteam/ApprovalFragment;->mUid:Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/ApprovalFragment;->mListType:I

    iget-object v3, p0, Lcom/lzx/iteam/ApprovalFragment;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lzx/iteam/provider/CloudDBOperation;->findApprovalData(Ljava/lang/String;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mListData:Ljava/util/ArrayList;

    .line 130
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mLayoutNull:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 137
    :goto_0
    iget v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mListType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/lzx/iteam/ApprovalActivity;

    iget-object v1, p0, Lcom/lzx/iteam/ApprovalFragment;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/ApprovalActivity;->setNewMsg(I)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mAdapter:Lcom/lzx/iteam/adapter/ApprovalDataAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/ApprovalFragment;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->bindData(Ljava/util/ArrayList;)V

    .line 141
    const-string v0, "approval_fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResume   size == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lzx/iteam/ApprovalFragment;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mListType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/lzx/iteam/ApprovalFragment;->getCloudApprovalData()V

    .line 145
    :cond_1
    return-void

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mLayoutNull:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private getCloudApprovalData()V
    .locals 7

    .prologue
    .line 249
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalFragment;->mGroupId:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v6, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sid"

    .line 252
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "group_id"

    iget-object v3, p0, Lcom/lzx/iteam/ApprovalFragment;->mGroupId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "list_type"

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/lzx/iteam/ApprovalFragment;->mListType:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v0, Lcom/lzx/iteam/net/GetApprovalMsg;

    iget-object v1, p0, Lcom/lzx/iteam/ApprovalFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/ApprovalFragment;->mGroupId:Ljava/lang/String;

    iget v3, p0, Lcom/lzx/iteam/ApprovalFragment;->mListType:I

    iget-object v4, p0, Lcom/lzx/iteam/ApprovalFragment;->mUid:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/ApprovalFragment;->mActivity:Landroid/app/Activity;

    invoke-direct/range {v0 .. v5}, Lcom/lzx/iteam/net/GetApprovalMsg;-><init>(Landroid/os/Message;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 256
    .local v0, "msg":Lcom/lzx/iteam/net/GetApprovalMsg;
    const-string v1, "/api/event/approval/list"

    iput-object v1, v0, Lcom/lzx/iteam/net/GetApprovalMsg;->mApi:Ljava/lang/String;

    .line 257
    iput-object v6, v0, Lcom/lzx/iteam/net/GetApprovalMsg;->mParams:Ljava/util/List;

    .line 258
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 264
    .end local v0    # "msg":Lcom/lzx/iteam/net/GetApprovalMsg;
    .end local v6    # "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalFragment;->mLayoutNull:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 261
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalFragment;->mListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private httpReqDlgDismiss()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mWaitDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mWaitDialog:Landroid/app/Dialog;

    .line 242
    :cond_0
    return-void
.end method

.method private httpReqDlgShow()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mWaitDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->waitDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mWaitDialog:Landroid/app/Dialog;

    .line 229
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 232
    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;I)Lcom/lzx/iteam/ApprovalFragment;
    .locals 3
    .param p0, "groupId"    # Ljava/lang/String;
    .param p1, "listType"    # I

    .prologue
    .line 101
    new-instance v1, Lcom/lzx/iteam/ApprovalFragment;

    invoke-direct {v1}, Lcom/lzx/iteam/ApprovalFragment;-><init>()V

    .line 102
    .local v1, "fragment":Lcom/lzx/iteam/ApprovalFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "group_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v2, "list_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    invoke-virtual {v1, v0}, Lcom/lzx/iteam/ApprovalFragment;->setArguments(Landroid/os/Bundle;)V

    .line 106
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/lzx/iteam/ApprovalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mActivity:Landroid/app/Activity;

    .line 113
    invoke-virtual {p0}, Lcom/lzx/iteam/ApprovalFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "group_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mGroupId:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/lzx/iteam/ApprovalFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "list_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mListType:I

    .line 115
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    const-string v1, "useid"

    const-string v2, "\uff0d1"

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mUid:Ljava/lang/String;

    .line 116
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v1, p0, Lcom/lzx/iteam/ApprovalFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/ApprovalFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 117
    const-string v0, "approval_fragment"

    const-string v1, "   onCreate  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    .line 149
    const v2, 0x7f03000e

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 150
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0e0052

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lzx/iteam/ApprovalFragment;->mLayoutTitle:Landroid/widget/RelativeLayout;

    .line 151
    const v2, 0x7f0e004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/lzx/iteam/ApprovalFragment;->mListView:Landroid/widget/ListView;

    .line 152
    iget v2, p0, Lcom/lzx/iteam/ApprovalFragment;->mListType:I

    if-ne v2, v5, :cond_0

    .line 153
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalFragment;->mLayoutTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 155
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 156
    .local v0, "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 157
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    .end local v0    # "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const v2, 0x7f0e0053

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lzx/iteam/ApprovalFragment;->mLayoutBack:Landroid/widget/LinearLayout;

    .line 160
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalFragment;->mLayoutBack:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/lzx/iteam/ApprovalFragment$2;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/ApprovalFragment$2;-><init>(Lcom/lzx/iteam/ApprovalFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v2, 0x7f0e0055

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lzx/iteam/ApprovalFragment;->mLayoutNull:Landroid/widget/LinearLayout;

    .line 169
    new-instance v2, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;

    invoke-virtual {p0}, Lcom/lzx/iteam/ApprovalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget v4, p0, Lcom/lzx/iteam/ApprovalFragment;->mListType:I

    invoke-direct {v2, v3, v4}, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/lzx/iteam/ApprovalFragment;->mAdapter:Lcom/lzx/iteam/adapter/ApprovalDataAdapter;

    .line 170
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lzx/iteam/ApprovalFragment;->mAdapter:Lcom/lzx/iteam/adapter/ApprovalDataAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 172
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 173
    const-string v2, "approval_fragment"

    const-string v3, "   onCreateView  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget v2, p0, Lcom/lzx/iteam/ApprovalFragment;->mListType:I

    if-ne v2, v5, :cond_1

    .line 175
    invoke-direct {p0}, Lcom/lzx/iteam/ApprovalFragment;->getCloudApprovalData()V

    .line 177
    :cond_1
    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/ApprovalFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/lzx/iteam/ApprovalDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "approvalData"

    iget-object v1, p0, Lcom/lzx/iteam/ApprovalFragment;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 184
    const-string v1, "list_type"

    iget v2, p0, Lcom/lzx/iteam/ApprovalFragment;->mListType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    const-string v1, "approval"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ApprovalFragment;->startActivity(Landroid/content/Intent;)V

    .line 187
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 191
    iput p3, p0, Lcom/lzx/iteam/ApprovalFragment;->mPosition:I

    .line 192
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalFragment;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ApprovalData;

    .line 193
    .local v0, "approvalData":Lcom/lzx/iteam/bean/ApprovalData;
    iget v1, p0, Lcom/lzx/iteam/ApprovalFragment;->mListType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_status()I

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    :cond_0
    iget v1, p0, Lcom/lzx/iteam/ApprovalFragment;->mListType:I

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_status()I

    move-result v1

    if-nez v1, :cond_2

    .line 196
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_id()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0801a3

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ApprovalFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/lzx/iteam/ApprovalFragment;->showDeleteTalkDlg(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_1
    :goto_0
    return v3

    .line 198
    :cond_2
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_id()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0801a2

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ApprovalFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/lzx/iteam/ApprovalFragment;->showDeleteTalkDlg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 124
    invoke-direct {p0}, Lcom/lzx/iteam/ApprovalFragment;->getApprovalData()V

    .line 126
    return-void
.end method

.method public showDeleteTalkDlg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 204
    const-string v2, "\u786e\u5b9a"

    .line 205
    .local v2, "okText":Ljava/lang/String;
    const v3, 0x7f08002d

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/ApprovalFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "cancelText":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzx/iteam/ApprovalFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v1

    .line 207
    .local v1, "mDialogUtil":Lcom/lzx/iteam/util/AllDialogUtil;
    const-string v3, "\u63d0\u793a"

    invoke-virtual {v1, v3, v2, v0, p2}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 208
    new-instance v3, Lcom/lzx/iteam/ApprovalFragment$3;

    invoke-direct {v3, p0, p1}, Lcom/lzx/iteam/ApprovalFragment$3;-><init>(Lcom/lzx/iteam/ApprovalFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 221
    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/lzx/iteam/ApprovalFragment;->mGroupId:Ljava/lang/String;

    .line 284
    invoke-direct {p0}, Lcom/lzx/iteam/ApprovalFragment;->getApprovalData()V

    .line 285
    return-void
.end method
