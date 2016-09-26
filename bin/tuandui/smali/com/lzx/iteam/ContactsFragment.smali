.class public Lcom/lzx/iteam/ContactsFragment;
.super Landroid/support/v4/app/Fragment;
.source "ContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;,
        Lcom/lzx/iteam/ContactsFragment$MyOnItemLongClickListeneer;
    }
.end annotation


# static fields
.field private static final MSG_REMOVE_GROUP:I = 0x7

.field private static TAG:Ljava/lang/String;


# instance fields
.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private isLoading:Z

.field private localContact:Lcom/lzx/iteam/bean/CloudGroup;

.field private mActivity:Lcom/lzx/iteam/MainActivity;

.field private mAdapter:Lcom/lzx/iteam/adapter/CloudGroupAdapter;

.field private mBtnAddGroup:Landroid/widget/RelativeLayout;

.field private mCenter:Lcom/lzx/iteam/net/CloudGroupListCenter;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mCloudList:Landroid/widget/ListView;

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mGroupListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLlHelp:Landroid/widget/LinearLayout;

.field private mLocalUserMsg:Landroid/widget/TextView;

.field private mMainView:Landroid/view/View;

.field private mOperatePopWindow:Landroid/widget/PopupWindow;

.field private mPosition:I

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mProgress:Landroid/app/Dialog;

.field private mTitleBar:Landroid/widget/RelativeLayout;

.field private mUid:Ljava/lang/String;

.field private rootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "ContactsFragment"

    sput-object v0, Lcom/lzx/iteam/ContactsFragment;->TAG:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Lcom/lzx/iteam/bean/CloudGroup;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/CloudGroup;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->localContact:Lcom/lzx/iteam/bean/CloudGroup;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/ContactsFragment;->isLoading:Z

    .line 67
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 69
    new-instance v0, Lcom/lzx/iteam/ContactsFragment$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ContactsFragment$1;-><init>(Lcom/lzx/iteam/ContactsFragment;)V

    iput-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/ContactsFragment;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/lzx/iteam/ContactsFragment;->mPosition:I

    return v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/ContactsFragment;I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/lzx/iteam/ContactsFragment;->mPosition:I

    return-void
.end method

.method static synthetic access$11(Lcom/lzx/iteam/ContactsFragment;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mProgress:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$12(Lcom/lzx/iteam/ContactsFragment;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 392
    invoke-direct {p0, p1, p2, p3}, Lcom/lzx/iteam/ContactsFragment;->exitGroup(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/ContactsFragment;)Lcom/lzx/iteam/adapter/CloudGroupAdapter;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mAdapter:Lcom/lzx/iteam/adapter/CloudGroupAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/ContactsFragment;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/ContactsFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/ContactsFragment;)Lcom/lzx/iteam/MainActivity;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/ContactsFragment;Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/lzx/iteam/ContactsFragment;->isLoading:Z

    return-void
.end method

.method static synthetic access$7(Lcom/lzx/iteam/ContactsFragment;)Lcom/lzx/iteam/bean/CloudGroup;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->localContact:Lcom/lzx/iteam/bean/CloudGroup;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/ContactsFragment;)Lcom/lzx/iteam/net/CloudGroupListCenter;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mCenter:Lcom/lzx/iteam/net/CloudGroupListCenter;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/ContactsFragment;)V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/lzx/iteam/ContactsFragment;->createGroup()V

    return-void
.end method

.method private applyScrollListener()V
    .locals 5

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mCloudList:Landroid/widget/ListView;

    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/PauseOnScrollListener;

    iget-object v2, p0, Lcom/lzx/iteam/ContactsFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-boolean v3, v3, Lcom/lzx/iteam/MainActivity;->pauseOnScroll:Z

    iget-object v4, p0, Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-boolean v4, v4, Lcom/lzx/iteam/MainActivity;->pauseOnFling:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/assist/PauseOnScrollListener;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoader;ZZ)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 196
    :cond_0
    return-void
.end method

.method private createGroup()V
    .locals 4

    .prologue
    .line 279
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 280
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const-class v3, Lcom/lzx/iteam/CreateGroupActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 281
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 282
    return-void
.end method

.method private exitGroup(JLjava/lang/String;)V
    .locals 7
    .param p1, "groupId"    # J
    .param p3, "contactId"    # Ljava/lang/String;

    .prologue
    .line 393
    const/4 v1, 0x0

    .line 394
    .local v1, "exitGroupMsg":Lcom/lzx/iteam/net/ExitGroupMsg;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sid"

    .line 396
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "group_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "contact_id"

    invoke-direct {v3, v4, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 400
    .local v0, "callback":Landroid/os/Message;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 401
    new-instance v1, Lcom/lzx/iteam/net/ExitGroupMsg;

    .end local v1    # "exitGroupMsg":Lcom/lzx/iteam/net/ExitGroupMsg;
    invoke-direct {v1, v0}, Lcom/lzx/iteam/net/ExitGroupMsg;-><init>(Landroid/os/Message;)V

    .line 402
    .restart local v1    # "exitGroupMsg":Lcom/lzx/iteam/net/ExitGroupMsg;
    iput-object v2, v1, Lcom/lzx/iteam/net/ExitGroupMsg;->mParams:Ljava/util/List;

    .line 403
    const-string v3, "/api/group/remove"

    iput-object v3, v1, Lcom/lzx/iteam/net/ExitGroupMsg;->mApi:Ljava/lang/String;

    .line 404
    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v3}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 405
    return-void
.end method

.method private initGroupListData()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 219
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->localContact:Lcom/lzx/iteam/bean/CloudGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-virtual {v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->getLocalGroupList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 221
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->localContact:Lcom/lzx/iteam/bean/CloudGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mAdapter:Lcom/lzx/iteam/adapter/CloudGroupAdapter;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mAdapter:Lcom/lzx/iteam/adapter/CloudGroupAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->updateCloudGroupList(Ljava/util/ArrayList;)V

    .line 231
    :goto_0
    return-void

    .line 226
    :cond_1
    new-instance v0, Lcom/lzx/iteam/adapter/CloudGroupAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v2, p0, Lcom/lzx/iteam/ContactsFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v0, v1, v2}, Lcom/lzx/iteam/adapter/CloudGroupAdapter;-><init>(Landroid/app/Activity;Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    iput-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mAdapter:Lcom/lzx/iteam/adapter/CloudGroupAdapter;

    .line 227
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mCloudList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mAdapter:Lcom/lzx/iteam/adapter/CloudGroupAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mAdapter:Lcom/lzx/iteam/adapter/CloudGroupAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->updateCloudGroupList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private setCloudListData()V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 240
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->localContact:Lcom/lzx/iteam/bean/CloudGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mCenter:Lcom/lzx/iteam/net/CloudGroupListCenter;

    iget-object v2, p0, Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/net/CloudGroupListCenter;->getCloudGroupList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 242
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->localContact:Lcom/lzx/iteam/bean/CloudGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mAdapter:Lcom/lzx/iteam/adapter/CloudGroupAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->updateCloudGroupList(Ljava/util/ArrayList;)V

    .line 244
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mCenter:Lcom/lzx/iteam/net/CloudGroupListCenter;

    new-instance v1, Lcom/lzx/iteam/ContactsFragment$3;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/ContactsFragment$3;-><init>(Lcom/lzx/iteam/ContactsFragment;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/net/CloudGroupListCenter;->setGroupListListener(Lcom/lzx/iteam/net/CloudGroupListCenter$CloudGroupDataListener;)V

    .line 276
    return-void
.end method


# virtual methods
.method public initFootView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 166
    const v1, 0x7f030044

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public initHeadView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 160
    const v1, 0x7f030045

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e01e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mLocalUserMsg:Landroid/widget/TextView;

    .line 162
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/lzx/iteam/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/MainActivity;

    iput-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    .line 108
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v1}, Lcom/lzx/iteam/net/CloudGroupListCenter;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/CloudGroupListCenter;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mCenter:Lcom/lzx/iteam/net/CloudGroupListCenter;

    .line 109
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v1}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 110
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 111
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v1}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 112
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    const-string v2, "\u8bf7\u7a0d\u7b49..."

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/util/AllDialogUtil;->styleProgress(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mProgress:Landroid/app/Dialog;

    .line 113
    new-instance v1, Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v2, p0, Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-direct {v1, v2}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 114
    sget v1, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->ALL_CONTACTS_NUMBER:I

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mGroupList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->mNoGroupsSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v1}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->resetAllContactsNumber(Landroid/content/Context;)V

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->localContact:Lcom/lzx/iteam/bean/CloudGroup;

    const-string v2, "\u672c\u5730\u901a\u8baf\u5f55"

    iput-object v2, v1, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->localContact:Lcom/lzx/iteam/bean/CloudGroup;

    sget v2, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->ALL_CONTACTS_NUMBER:I

    iput v2, v1, Lcom/lzx/iteam/bean/CloudGroup;->contactCount:I

    .line 119
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "create_group_v1"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 120
    .local v0, "isFirst":Z
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/MainActivity;->showHelp(Z)V

    .line 121
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "useid"

    const-string v3, "\uff0d1"

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mUid:Ljava/lang/String;

    .line 123
    sget-object v1, Lcom/lzx/iteam/ContactsFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 131
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->rootView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 132
    const v1, 0x7f030051

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->rootView:Landroid/view/View;

    .line 133
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0e022d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mTitleBar:Landroid/widget/RelativeLayout;

    .line 134
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0e0230

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mBtnAddGroup:Landroid/widget/RelativeLayout;

    .line 135
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0e022e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mLlHelp:Landroid/widget/LinearLayout;

    .line 136
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mLlHelp:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/lzx/iteam/ContactsFragment$2;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/ContactsFragment$2;-><init>(Lcom/lzx/iteam/ContactsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0e0232

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mCloudList:Landroid/widget/ListView;

    .line 146
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mCloudList:Landroid/widget/ListView;

    new-instance v2, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/ContactsFragment$MyOnItemClickListener;-><init>(Lcom/lzx/iteam/ContactsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->mCloudList:Landroid/widget/ListView;

    new-instance v2, Lcom/lzx/iteam/ContactsFragment$MyOnItemLongClickListeneer;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/ContactsFragment$MyOnItemLongClickListeneer;-><init>(Lcom/lzx/iteam/ContactsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 151
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 152
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 154
    :cond_1
    iput-boolean v3, p0, Lcom/lzx/iteam/ContactsFragment;->isLoading:Z

    .line 155
    const-string v1, "GroupFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment;->rootView:Landroid/view/View;

    return-object v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 287
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 288
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mProgress:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mProgress:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mProgress:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/ContactsFragment;->mProgress:Landroid/app/Dialog;

    .line 292
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 180
    sget-object v0, Lcom/lzx/iteam/ContactsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-boolean v0, p0, Lcom/lzx/iteam/ContactsFragment;->isLoading:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/lzx/iteam/ContactsFragment;->setCloudListData()V

    .line 190
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/ContactsFragment;->initGroupListData()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 174
    return-void
.end method

.method public showExitGroupDlg(Lcom/lzx/iteam/bean/CloudGroup;)V
    .locals 5
    .param p1, "groupItem"    # Lcom/lzx/iteam/bean/CloudGroup;

    .prologue
    .line 369
    iget-object v2, p0, Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const v3, 0x7f080061

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, "okText":Ljava/lang/String;
    iget-object v2, p0, Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const v3, 0x7f08002d

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "cancelText":Ljava/lang/String;
    iget-object v2, p1, Lcom/lzx/iteam/bean/CloudGroup;->userType:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/lzx/iteam/ContactsFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u89e3\u6563"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u53f7\u7801\u7c3f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u53f7\u7801\u7c3f\u89e3\u6563\u540e,\u6240\u6709\u6210\u5458\u5c06\u5931\u53bb\u6b64\u53f7\u7801\u7c3f\u3002\u6b64\u52a8\u4f5c\u4e0d\u53ef\u6062\u590d,\u662f\u5426\u786e\u8ba4\u89e3\u6563?"

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 376
    :goto_0
    iget-object v2, p0, Lcom/lzx/iteam/ContactsFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    new-instance v3, Lcom/lzx/iteam/ContactsFragment$4;

    invoke-direct {v3, p0, p1}, Lcom/lzx/iteam/ContactsFragment$4;-><init>(Lcom/lzx/iteam/ContactsFragment;Lcom/lzx/iteam/bean/CloudGroup;)V

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 389
    return-void

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/ContactsFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u9000\u51fa"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u53f7\u7801\u7c3f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u9000\u51fa\u53f7\u7801\u7c3f\u540e,\u6240\u6709\u6210\u5458\u5c06\u5931\u53bb\u60a8\u7684\u8054\u7cfb\u65b9\u5f0f\u3002\u662f\u5426\u786e\u8ba4\u9000\u51fa?"

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/lzx/iteam/ContactsFragment;->setCloudListData()V

    .line 410
    return-void
.end method
