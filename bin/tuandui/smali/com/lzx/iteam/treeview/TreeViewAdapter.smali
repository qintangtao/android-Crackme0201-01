.class public Lcom/lzx/iteam/treeview/TreeViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "TreeViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/treeview/TreeViewAdapter$BackgroundHandler;,
        Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final MSG_STRUCTURE_ADD_NEXT_GROUP:I = 0x3e9

.field private static final MSG_STRUCTURE_DELETE_GROUP:I = 0x3ea

.field private static final MSG_STRUCTURE_RENAME:I = 0x3e8

.field private static final MSG_STRUVTURE_GROUP_CONTACT:I = 0x3eb

.field public static isSetContact:Z


# instance fields
.field allCount:I

.field contactId:Ljava/lang/String;

.field public currentPosition:I

.field private dialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field public elements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/treeview/Element;",
            ">;"
        }
    .end annotation
.end field

.field private elementsData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/treeview/Element;",
            ">;"
        }
    .end annotation
.end field

.field private indentionBase:I

.field private inflater:Landroid/view/LayoutInflater;

.field private isFirstItem:Z

.field public isGone:Z

.field private mActicvity:Lcom/lzx/iteam/CloudDialerActivity;

.field private mAddContactsWin:Landroid/widget/PopupWindow;

.field public mContactCount:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mCreateType:Ljava/lang/String;

.field public mGroupId:I

.field public mGroupName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHandler1:Landroid/os/Handler;

.field public mId:I

.field mMessenger:Landroid/os/Messenger;

.field public mName:Ljava/lang/String;

.field public mParentId:I

.field public mTagPath:Ljava/lang/String;

.field public root:Lcom/lzx/iteam/treeview/Element;

.field public selectId:I

.field treeflag:Lcom/lzx/iteam/TreeFrag;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Lcom/lzx/iteam/TreeFrag;ILjava/lang/String;Ljava/util/ArrayList;ZILjava/lang/String;)V
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "context"    # Lcom/lzx/iteam/TreeFrag;
    .param p3, "groupId"    # I
    .param p4, "groupName"    # Ljava/lang/String;
    .param p6, "isBatch"    # Z
    .param p7, "allCount"    # I
    .param p8, "contactId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Lcom/lzx/iteam/TreeFrag;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;ZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, "clickPosition":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 559
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mName:Ljava/lang/String;

    .line 68
    iput v1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mId:I

    .line 69
    iput v1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->selectId:I

    .line 70
    iput v1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mParentId:I

    .line 71
    iput v1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mGroupId:I

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mTagPath:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContactCount:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mGroupName:Ljava/lang/String;

    .line 75
    iput v1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->allCount:I

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->contactId:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/treeview/TreeViewAdapter$1;-><init>(Lcom/lzx/iteam/treeview/TreeViewAdapter;)V

    iput-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mHandler:Landroid/os/Handler;

    .line 560
    iput-object p1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 561
    const/16 v0, 0xa

    iput v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->indentionBase:I

    .line 562
    invoke-virtual {p2}, Lcom/lzx/iteam/TreeFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;

    .line 563
    iput-object p2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->treeflag:Lcom/lzx/iteam/TreeFrag;

    .line 564
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/lzx/iteam/CloudDialerActivity;

    iput-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mActicvity:Lcom/lzx/iteam/CloudDialerActivity;

    .line 565
    new-instance v0, Lcom/lzx/iteam/treeview/TreeViewAdapter$BackgroundHandler;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/treeview/TreeViewAdapter$BackgroundHandler;-><init>(Lcom/lzx/iteam/treeview/TreeViewAdapter;)V

    iput-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mHandler1:Landroid/os/Handler;

    .line 566
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mHandler1:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mMessenger:Landroid/os/Messenger;

    .line 567
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->dialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 568
    iput p3, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mGroupId:I

    .line 569
    iput-object p4, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mGroupName:Ljava/lang/String;

    .line 571
    iput-boolean p6, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->isGone:Z

    .line 572
    iput p7, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->allCount:I

    .line 573
    iput-object p8, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->contactId:Ljava/lang/String;

    .line 575
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->isFirstItem:Z

    return v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/treeview/TreeViewAdapter;Landroid/os/Message;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1152
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getGroupContact(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->elementsData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/treeview/TreeViewAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1022
    invoke-direct {p0, p1}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->addNextGroup(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/lzx/iteam/treeview/TreeViewAdapter;)V
    .locals 0

    .prologue
    .line 1041
    invoke-direct {p0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->deleteGroup()V

    return-void
.end method

.method static synthetic access$5(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mAddContactsWin:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Lcom/lzx/iteam/util/AllDialogUtil;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->dialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mHandler1:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/treeview/TreeViewAdapter;Z)V
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->isFirstItem:Z

    return-void
.end method

.method static synthetic access$9(Lcom/lzx/iteam/treeview/TreeViewAdapter;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addNextGroup(Ljava/lang/String;)V
    .locals 6
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 1023
    new-instance v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    iget-object v2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 1024
    .local v0, "getMsg":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1025
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 1026
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "name"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mGroupId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1029
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "flag"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1030
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "order_num"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1031
    iget-boolean v2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->isFirstItem:Z

    if-eqz v2, :cond_0

    .line 1032
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pid"

    const-string v4, "0"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1036
    :goto_0
    const-string v2, "/api/tags/add"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 1037
    iput-object v1, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 1038
    iget-object v2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 1039
    return-void

    .line 1034
    :cond_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pid"

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private deleteGroup()V
    .locals 8

    .prologue
    .line 1043
    iget-object v4, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3ea

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1044
    .local v2, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1045
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "id"

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1047
    new-instance v1, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    invoke-direct {v1, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 1051
    .local v1, "getMsg":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1052
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "sid"

    .line 1053
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v6

    iget-object v6, v6, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "tag_id"

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    const-string v4, "/api/tags/delete"

    iput-object v4, v1, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 1056
    iput-object v3, v1, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 1057
    iget-object v4, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 1058
    return-void
.end method

.method private getGroupContact(Landroid/os/Message;Ljava/lang/String;)V
    .locals 6
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "tagId"    # Ljava/lang/String;

    .prologue
    .line 1153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1154
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 1155
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1156
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mGroupId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "tag_id"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1159
    new-instance v0, Lcom/lzx/iteam/net/GroupContactMsg;

    iget-object v2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v2}, Lcom/lzx/iteam/net/GroupContactMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 1160
    .local v0, "groupContactMsg":Lcom/lzx/iteam/net/GroupContactMsg;
    const-string v2, "/api/tags/contacts_by_tag"

    iput-object v2, v0, Lcom/lzx/iteam/net/GroupContactMsg;->mApi:Ljava/lang/String;

    .line 1161
    iput-object v1, v0, Lcom/lzx/iteam/net/GroupContactMsg;->mParams:Ljava/util/List;

    .line 1162
    iget-object v2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 1163
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getElements()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/treeview/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 589
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->elements:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getElementsData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/treeview/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->elementsData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 603
    if-nez p1, :cond_0

    .line 605
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->root:Lcom/lzx/iteam/treeview/Element;

    .line 608
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->elements:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 613
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 620
    const/4 v1, 0x0

    .line 621
    .local v1, "holder":Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;
    if-nez p2, :cond_2

    .line 622
    new-instance v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;

    .end local v1    # "holder":Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;
    invoke-direct {v1}, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;-><init>()V

    .line 623
    .restart local v1    # "holder":Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;
    iget-object v3, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300fc

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 624
    const v3, 0x7f0e0649

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->disclosureLayout:Landroid/widget/LinearLayout;

    .line 625
    const v3, 0x7f0e064b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->disclosureImg:Landroid/widget/ImageView;

    .line 626
    const v3, 0x7f0e064e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    .line 627
    const v3, 0x7f0e064d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->manageImg:Landroid/widget/ImageView;

    .line 628
    const v3, 0x7f0e064f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->numberText:Landroid/widget/TextView;

    .line 629
    const v3, 0x7f0e064a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->blankHolder:Landroid/widget/ImageView;

    .line 630
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 635
    :goto_0
    if-nez p1, :cond_5

    .line 638
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->disclosureLayout:Landroid/widget/LinearLayout;

    .line 639
    const/16 v4, -0x2d

    .line 640
    iget-object v5, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->disclosureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v5

    .line 641
    iget-object v6, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->disclosureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v6

    .line 642
    iget-object v7, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->disclosureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v7

    .line 638
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 643
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->root:Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v4}, Lcom/lzx/iteam/treeview/Element;->getContentText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->numberText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->root:Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v5}, Lcom/lzx/iteam/treeview/Element;->getContactCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->disclosureImg:Landroid/widget/ImageView;

    const v4, 0x7f020242

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 646
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->disclosureImg:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 647
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->blankHolder:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 649
    iget-object v3, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->treeflag:Lcom/lzx/iteam/TreeFrag;

    iget-object v3, v3, Lcom/lzx/iteam/TreeFrag;->mCreateType:Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->treeflag:Lcom/lzx/iteam/TreeFrag;

    iget-object v3, v3, Lcom/lzx/iteam/TreeFrag;->mCreateType:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->treeflag:Lcom/lzx/iteam/TreeFrag;

    iget-boolean v3, v3, Lcom/lzx/iteam/TreeFrag;->isBatch:Z

    if-eqz v3, :cond_1

    .line 651
    :cond_0
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->manageImg:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 652
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->manageImg:Landroid/widget/ImageView;

    new-instance v4, Lcom/lzx/iteam/treeview/TreeViewAdapter$2;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/treeview/TreeViewAdapter$2;-><init>(Lcom/lzx/iteam/treeview/TreeViewAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    iget-object v3, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->treeflag:Lcom/lzx/iteam/TreeFrag;

    iget-boolean v3, v3, Lcom/lzx/iteam/TreeFrag;->isBatch:Z

    if-eqz v3, :cond_3

    .line 669
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->manageImg:Landroid/widget/ImageView;

    const v4, 0x7f020076

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 671
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->manageImg:Landroid/widget/ImageView;

    .line 672
    const/4 v4, 0x0

    .line 673
    iget-object v5, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->manageImg:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    .line 674
    const/16 v6, -0xa

    .line 675
    iget-object v7, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->manageImg:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    .line 671
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 689
    :cond_1
    :goto_1
    iget v3, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->selectId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 691
    const v3, 0x7f0a0057

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 764
    :goto_2
    return-object p2

    .line 632
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;
    check-cast v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;
    goto/16 :goto_0

    .line 680
    :cond_3
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->manageImg:Landroid/widget/ImageView;

    const v4, 0x7f0202c4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 695
    :cond_4
    const v3, 0x7f0a000a

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 703
    :cond_5
    add-int/lit8 p1, p1, -0x1

    .line 704
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->manageImg:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 717
    iget-object v3, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->elements:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/treeview/Element;

    .line 718
    .local v0, "element":Lcom/lzx/iteam/treeview/Element;
    invoke-virtual {v0}, Lcom/lzx/iteam/treeview/Element;->getLevel()I

    move-result v2

    .line 719
    .local v2, "level":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 721
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->disclosureLayout:Landroid/widget/LinearLayout;

    .line 722
    const/16 v4, 0xa

    .line 723
    iget-object v5, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->disclosureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v5

    .line 724
    iget-object v6, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->disclosureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v6

    .line 725
    iget-object v7, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->disclosureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v7

    .line 721
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 736
    :goto_3
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->contentText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lzx/iteam/treeview/Element;->getContentText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->numberText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lzx/iteam/treeview/Element;->getContactCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    invoke-virtual {v0}, Lcom/lzx/iteam/treeview/Element;->isHasChildren()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/lzx/iteam/treeview/Element;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_8

    .line 740
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->disclosureImg:Landroid/widget/ImageView;

    const v4, 0x7f020242

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 742
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->disclosureImg:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 743
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->blankHolder:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 755
    :cond_6
    :goto_4
    iget v3, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->selectId:I

    invoke-virtual {v0}, Lcom/lzx/iteam/treeview/Element;->getId()I

    move-result v4

    if-ne v3, v4, :cond_a

    .line 757
    const v3, 0x7f0a0057

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 728
    :cond_7
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->disclosureLayout:Landroid/widget/LinearLayout;

    .line 729
    iget v4, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->indentionBase:I

    add-int/lit8 v5, v2, 0x1

    mul-int/2addr v4, v5

    .line 730
    iget-object v5, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->disclosureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v5

    .line 731
    iget-object v6, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->disclosureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v6

    .line 732
    iget-object v7, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->disclosureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v7

    .line 728
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 733
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "---level-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "----left-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->indentionBase:I

    add-int/lit8 v6, v2, 0x2

    mul-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 744
    :cond_8
    invoke-virtual {v0}, Lcom/lzx/iteam/treeview/Element;->isHasChildren()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/lzx/iteam/treeview/Element;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 745
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->disclosureImg:Landroid/widget/ImageView;

    const v4, 0x7f020288

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 746
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->disclosureImg:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 747
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->blankHolder:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 748
    :cond_9
    invoke-virtual {v0}, Lcom/lzx/iteam/treeview/Element;->isHasChildren()Z

    move-result v3

    if-nez v3, :cond_6

    .line 749
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->disclosureImg:Landroid/widget/ImageView;

    const v4, 0x7f020242

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 750
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->disclosureImg:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 751
    iget-object v3, v1, Lcom/lzx/iteam/treeview/TreeViewAdapter$ViewHolder;->blankHolder:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 761
    :cond_a
    const v3, 0x7f0a000a

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2
.end method

.method public initData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/treeview/Element;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/treeview/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 578
    .local p1, "elements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    .local p2, "elementsData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    iput-object p1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->elements:Ljava/util/ArrayList;

    .line 579
    iput-object p2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->elementsData:Ljava/util/ArrayList;

    .line 586
    return-void
.end method

.method public rename(Ljava/lang/String;)V
    .locals 8
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 1006
    iget-object v4, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1007
    .local v2, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1008
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "name"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1010
    new-instance v1, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    invoke-direct {v1, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 1012
    .local v1, "getMsg":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1013
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "sid"

    .line 1014
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v6

    iget-object v6, v6, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1015
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "id"

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "name"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    const-string v4, "/api/tags/update"

    iput-object v4, v1, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 1018
    iput-object v3, v1, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 1019
    iget-object v4, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 1020
    return-void
.end method

.method public setTreeStyle(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/4 v9, 0x0

    .line 1067
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/treeview/Element;

    .line 1069
    .local v1, "element":Lcom/lzx/iteam/treeview/Element;
    invoke-virtual {p0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    .line 1071
    .local v2, "elements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    invoke-virtual {p0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getElementsData()Ljava/util/ArrayList;

    move-result-object v3

    .line 1074
    .local v3, "elementsData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    invoke-virtual {v1}, Lcom/lzx/iteam/treeview/Element;->isHasChildren()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1079
    :cond_1
    invoke-virtual {v1}, Lcom/lzx/iteam/treeview/Element;->isExpanded()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1081
    iget v6, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->selectId:I

    invoke-virtual {v1}, Lcom/lzx/iteam/treeview/Element;->getId()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 1083
    invoke-virtual {v1, v9}, Lcom/lzx/iteam/treeview/Element;->setExpanded(Z)V

    .line 1085
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1086
    .local v4, "elementsToDel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    move v5, p1

    .local v5, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v5, v6, :cond_3

    .line 1091
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1092
    invoke-virtual {p0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1087
    :cond_3
    invoke-virtual {v1}, Lcom/lzx/iteam/treeview/Element;->getLevel()I

    move-result v7

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v6}, Lcom/lzx/iteam/treeview/Element;->getLevel()I

    move-result v6

    if-ge v7, v6, :cond_2

    .line 1089
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1098
    .end local v4    # "elementsToDel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    .end local v5    # "i":I
    :cond_4
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/lzx/iteam/treeview/Element;->setExpanded(Z)V

    .line 1100
    const/4 v5, 0x0

    .line 1101
    .restart local v5    # "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1108
    invoke-virtual {p0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1101
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/treeview/Element;

    .line 1102
    .local v0, "e":Lcom/lzx/iteam/treeview/Element;
    invoke-virtual {v0}, Lcom/lzx/iteam/treeview/Element;->getParendId()I

    move-result v7

    invoke-virtual {v1}, Lcom/lzx/iteam/treeview/Element;->getId()I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 1103
    invoke-virtual {v0, v9}, Lcom/lzx/iteam/treeview/Element;->setExpanded(Z)V

    .line 1104
    add-int v7, p1, v5

    invoke-virtual {v2, v7, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1105
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public setTreeStyleAndFocus(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 1117
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/treeview/Element;

    .line 1119
    .local v1, "element":Lcom/lzx/iteam/treeview/Element;
    invoke-virtual {p0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    .line 1121
    .local v2, "elements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    invoke-virtual {p0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getElementsData()Ljava/util/ArrayList;

    move-result-object v3

    .line 1124
    .local v3, "elementsData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;"
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/lzx/iteam/treeview/Element;->setExpanded(Z)V

    .line 1126
    const/4 v4, 0x0

    .line 1127
    .local v4, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1135
    iget v5, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    .line 1136
    iget v5, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    invoke-virtual {p0, v5}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v5}, Lcom/lzx/iteam/treeview/Element;->getId()I

    move-result v5

    iput v5, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->selectId:I

    .line 1138
    invoke-virtual {p0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->notifyDataSetChanged()V

    .line 1147
    return-void

    .line 1127
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/treeview/Element;

    .line 1128
    .local v0, "e":Lcom/lzx/iteam/treeview/Element;
    invoke-virtual {v0}, Lcom/lzx/iteam/treeview/Element;->getParendId()I

    move-result v6

    invoke-virtual {v1}, Lcom/lzx/iteam/treeview/Element;->getId()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 1129
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/treeview/Element;->setExpanded(Z)V

    .line 1130
    add-int v6, p1, v4

    invoke-virtual {v2, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1131
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public showButtonWindow(Ljava/lang/String;ZI)V
    .locals 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isFirst"    # Z
    .param p3, "position"    # I

    .prologue
    .line 790
    iget-object v10, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mName:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 792
    :cond_0
    iput-object p1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mName:Ljava/lang/String;

    .line 796
    :cond_1
    iget-object v10, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;

    const-string v11, "click_add_button"

    invoke-static {v10, v11}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 797
    iget-object v10, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;

    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f030008

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 798
    .local v5, "mainView":Landroid/view/View;
    const v10, 0x7f0e0033

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 799
    .local v9, "structure_name":Landroid/widget/TextView;
    const v10, 0x7f0e0034

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 800
    .local v7, "rename":Landroid/widget/Button;
    const v10, 0x7f0e0036

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 801
    .local v2, "add_next_group":Landroid/widget/Button;
    const v10, 0x7f0e0037

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 802
    .local v8, "set_contact":Landroid/widget/Button;
    const v10, 0x7f0e0038

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 803
    .local v4, "delete_group":Landroid/widget/Button;
    const v10, 0x7f0e0035

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 804
    .local v1, "add_local_member":Landroid/widget/Button;
    new-instance v10, Landroid/widget/PopupWindow;

    iget-object v11, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mAddContactsWin:Landroid/widget/PopupWindow;

    .line 805
    iget-object v10, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mAddContactsWin:Landroid/widget/PopupWindow;

    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v10, v11}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 806
    iget-object v10, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mAddContactsWin:Landroid/widget/PopupWindow;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 807
    iget-object v10, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mAddContactsWin:Landroid/widget/PopupWindow;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 808
    iget-object v10, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mAddContactsWin:Landroid/widget/PopupWindow;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 809
    iget-object v10, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mAddContactsWin:Landroid/widget/PopupWindow;

    invoke-virtual {v10, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 810
    iget-object v10, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mAddContactsWin:Landroid/widget/PopupWindow;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 811
    iget-object v10, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mAddContactsWin:Landroid/widget/PopupWindow;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 812
    iget-object v10, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mAddContactsWin:Landroid/widget/PopupWindow;

    const v11, 0x7f09000b

    invoke-virtual {v10, v11}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 813
    iget-object v10, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    move/from16 v0, p3

    iput v0, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->currentPosition:I

    .line 815
    if-eqz p2, :cond_2

    .line 816
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 818
    const-string v10, "\u521b\u5efa\u4e00\u7ea7\u90e8\u95e8"

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 819
    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 820
    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 821
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 822
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 824
    :cond_2
    iget-object v10, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f080061

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 825
    .local v6, "okText":Ljava/lang/String;
    iget-object v10, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f08002d

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 827
    .local v3, "cancelText":Ljava/lang/String;
    new-instance v10, Lcom/lzx/iteam/treeview/TreeViewAdapter$3;

    invoke-direct {v10, p0, v6, v3}, Lcom/lzx/iteam/treeview/TreeViewAdapter$3;-><init>(Lcom/lzx/iteam/treeview/TreeViewAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 861
    new-instance v10, Lcom/lzx/iteam/treeview/TreeViewAdapter$4;

    move/from16 v0, p2

    invoke-direct {v10, p0, v0, v6, v3}, Lcom/lzx/iteam/treeview/TreeViewAdapter$4;-><init>(Lcom/lzx/iteam/treeview/TreeViewAdapter;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 906
    new-instance v10, Lcom/lzx/iteam/treeview/TreeViewAdapter$5;

    invoke-direct {v10, p0}, Lcom/lzx/iteam/treeview/TreeViewAdapter$5;-><init>(Lcom/lzx/iteam/treeview/TreeViewAdapter;)V

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 925
    new-instance v10, Lcom/lzx/iteam/treeview/TreeViewAdapter$6;

    invoke-direct {v10, p0, v6, v3}, Lcom/lzx/iteam/treeview/TreeViewAdapter$6;-><init>(Lcom/lzx/iteam/treeview/TreeViewAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 953
    new-instance v10, Lcom/lzx/iteam/treeview/TreeViewAdapter$7;

    invoke-direct {v10, p0}, Lcom/lzx/iteam/treeview/TreeViewAdapter$7;-><init>(Lcom/lzx/iteam/treeview/TreeViewAdapter;)V

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 985
    const v10, 0x7f0e0032

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    new-instance v11, Lcom/lzx/iteam/treeview/TreeViewAdapter$8;

    invoke-direct {v11, p0}, Lcom/lzx/iteam/treeview/TreeViewAdapter$8;-><init>(Lcom/lzx/iteam/treeview/TreeViewAdapter;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 992
    iget-object v10, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mAddContactsWin:Landroid/widget/PopupWindow;

    const/16 v11, 0x50

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v5, v11, v12, v13}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 993
    iget-object v10, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter;->mAddContactsWin:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->update()V

    .line 995
    new-instance v10, Lcom/lzx/iteam/treeview/TreeViewAdapter$9;

    invoke-direct {v10, p0}, Lcom/lzx/iteam/treeview/TreeViewAdapter$9;-><init>(Lcom/lzx/iteam/treeview/TreeViewAdapter;)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1002
    return-void
.end method
