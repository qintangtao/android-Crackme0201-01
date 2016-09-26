.class public Lcom/lzx/iteam/TreeFrag;
.super Landroid/support/v4/app/Fragment;
.source "TreeFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/TreeFrag$BackgroundHandler;
    }
.end annotation


# static fields
.field private static final MSG_GROUP_STRUCTURE:I = 0x3e8

.field private static final MSG_STRUCTURE_SET_CONTACT:I = 0x3e9

.field public static mHandler1:Landroid/os/Handler;


# instance fields
.field public currentPosition:I

.field private elements:Ljava/util/ArrayList;
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

.field public fixelements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/treeview/Element;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field public isBatch:Z

.field private line:Landroid/view/View;

.field private mAddGroup:Landroid/widget/ImageView;

.field private mAllContactCount:Landroid/widget/TextView;

.field private mContactId:Ljava/lang/String;

.field mContactIds:Ljava/lang/String;

.field public mCount:I

.field public mCreateType:Ljava/lang/String;

.field private mCurrentGroup:Ljava/lang/String;

.field private mGid:Ljava/lang/String;

.field private mGroupImg:Ljava/lang/String;

.field private mGroupName:Ljava/lang/String;

.field private mGroupType:I

.field private mHandler:Landroid/os/Handler;

.field mMessenger:Landroid/os/Messenger;

.field private mRlNotice:Landroid/widget/RelativeLayout;

.field mTagId:I

.field mTagPath:Ljava/lang/String;

.field private mWaitDialog:Landroid/app/Dialog;

.field mWhere:Ljava/lang/String;

.field recordintent:Landroid/content/Intent;

.field root:Lcom/lzx/iteam/treeview/Element;

.field private treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

.field private treeview:Lcom/lzx/iteam/widget/PullListView;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/lzx/iteam/TreeFrag;->currentPosition:I

    .line 90
    iput v1, p0, Lcom/lzx/iteam/TreeFrag;->type:I

    .line 91
    iput-boolean v1, p0, Lcom/lzx/iteam/TreeFrag;->isBatch:Z

    .line 199
    new-instance v0, Lcom/lzx/iteam/TreeFrag$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/TreeFrag$1;-><init>(Lcom/lzx/iteam/TreeFrag;)V

    iput-object v0, p0, Lcom/lzx/iteam/TreeFrag;->mHandler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/TreeFrag;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lzx/iteam/TreeFrag;->elements:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/TreeFrag;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lzx/iteam/TreeFrag;->elementsData:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$10(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/widget/PullListView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag;->treeview:Lcom/lzx/iteam/widget/PullListView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lzx/iteam/TreeFrag;)Landroid/view/View;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag;->line:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$12(Lcom/lzx/iteam/TreeFrag;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lzx/iteam/TreeFrag;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/lzx/iteam/TreeFrag;->getGroupStructure(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$14(Lcom/lzx/iteam/TreeFrag;)V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/lzx/iteam/TreeFrag;->setContact()V

    return-void
.end method

.method static synthetic access$15(Lcom/lzx/iteam/TreeFrag;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/lzx/iteam/TreeFrag;->type:I

    return v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/TreeFrag;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag;->elements:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/TreeFrag;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag;->elementsData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/TreeFrag;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag;->inflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/TreeFrag;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag;->mGid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/TreeFrag;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/TreeFrag;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag;->mContactId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/TreeFrag;Lcom/lzx/iteam/treeview/TreeViewAdapter;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    return-void
.end method

.method static synthetic access$9(Lcom/lzx/iteam/TreeFrag;)Lcom/lzx/iteam/treeview/TreeViewAdapter;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    return-object v0
.end method

.method private getData()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 104
    invoke-virtual {p0}, Lcom/lzx/iteam/TreeFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 105
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "group_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/TreeFrag;->mGid:Ljava/lang/String;

    .line 106
    const-string v1, "contact_count"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/TreeFrag;->mCount:I

    .line 107
    const-string v1, "group_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/TreeFrag;->mGroupName:Ljava/lang/String;

    .line 108
    const-string v1, "pid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/TreeFrag;->mCurrentGroup:Ljava/lang/String;

    .line 109
    const-string v1, "group_img"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/TreeFrag;->mGroupImg:Ljava/lang/String;

    .line 110
    const-string v1, "group_type"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/TreeFrag;->mGroupType:I

    .line 111
    const-string v1, "user_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/TreeFrag;->mCreateType:Ljava/lang/String;

    .line 112
    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/TreeFrag;->mContactId:Ljava/lang/String;

    .line 113
    const-string v1, "where"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/TreeFrag;->mWhere:Ljava/lang/String;

    .line 123
    const-string v1, "chatMemberAdd"

    iget-object v2, p0, Lcom/lzx/iteam/TreeFrag;->mWhere:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    const/4 v1, 0x3

    iput v1, p0, Lcom/lzx/iteam/TreeFrag;->type:I

    .line 126
    iput-boolean v3, p0, Lcom/lzx/iteam/TreeFrag;->isBatch:Z

    .line 144
    :cond_0
    :goto_0
    const-string v1, "select"

    iget-object v2, p0, Lcom/lzx/iteam/TreeFrag;->mCurrentGroup:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    iput-boolean v3, p0, Lcom/lzx/iteam/TreeFrag;->isBatch:Z

    .line 153
    :cond_1
    new-instance v1, Lcom/lzx/iteam/treeview/Element;

    invoke-direct {v1}, Lcom/lzx/iteam/treeview/Element;-><init>()V

    iput-object v1, p0, Lcom/lzx/iteam/TreeFrag;->root:Lcom/lzx/iteam/treeview/Element;

    .line 154
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag;->root:Lcom/lzx/iteam/treeview/Element;

    const-string v2, "\u5168\u90e8\u6210\u5458"

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/treeview/Element;->setContentText(Ljava/lang/String;)V

    .line 155
    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v1, v1, Lcom/lzx/iteam/CloudDialerActivity;->rootcontactList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 156
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag;->root:Lcom/lzx/iteam/treeview/Element;

    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->rootcontactList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/treeview/Element;->setContactCount(I)V

    .line 160
    :goto_1
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag;->root:Lcom/lzx/iteam/treeview/Element;

    const/4 v2, -0x1

    iput v2, v1, Lcom/lzx/iteam/treeview/Element;->id:I

    .line 161
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag;->root:Lcom/lzx/iteam/treeview/Element;

    iput-boolean v3, v1, Lcom/lzx/iteam/treeview/Element;->isExpanded:Z

    .line 164
    return-void

    .line 127
    :cond_2
    const-string v1, "delete_group_memeber"

    iget-object v2, p0, Lcom/lzx/iteam/TreeFrag;->mWhere:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    const/4 v1, 0x2

    iput v1, p0, Lcom/lzx/iteam/TreeFrag;->type:I

    .line 130
    iput-boolean v3, p0, Lcom/lzx/iteam/TreeFrag;->isBatch:Z

    goto :goto_0

    .line 132
    :cond_3
    const-string v1, "add_group_manager"

    iget-object v2, p0, Lcom/lzx/iteam/TreeFrag;->mWhere:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 133
    iput v3, p0, Lcom/lzx/iteam/TreeFrag;->type:I

    .line 135
    iput-boolean v3, p0, Lcom/lzx/iteam/TreeFrag;->isBatch:Z

    goto :goto_0

    .line 137
    :cond_4
    const-string v1, "eventReceiverAdd"

    iget-object v2, p0, Lcom/lzx/iteam/TreeFrag;->mWhere:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const/4 v1, 0x4

    iput v1, p0, Lcom/lzx/iteam/TreeFrag;->type:I

    .line 140
    iput-boolean v3, p0, Lcom/lzx/iteam/TreeFrag;->isBatch:Z

    goto :goto_0

    .line 158
    :cond_5
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag;->root:Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/treeview/Element;->setContactCount(I)V

    goto :goto_1
.end method

.method private getGroupStructure(Landroid/os/Message;)V
    .locals 5
    .param p1, "callback"    # Landroid/os/Message;

    .prologue
    .line 366
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 368
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    iget-object v4, p0, Lcom/lzx/iteam/TreeFrag;->mGid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "is_all"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pid"

    const-string v4, "0"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "type"

    iget-object v4, p0, Lcom/lzx/iteam/TreeFrag;->mCreateType:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v0, Lcom/lzx/iteam/net/GetStructureMsg;

    invoke-virtual {p0}, Lcom/lzx/iteam/TreeFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/TreeFrag;->mGid:Ljava/lang/String;

    invoke-direct {v0, p1, v2, v3}, Lcom/lzx/iteam/net/GetStructureMsg;-><init>(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;)V

    .line 374
    .local v0, "getGroup":Lcom/lzx/iteam/net/GetStructureMsg;
    const-string v2, "/api/tags/get"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetStructureMsg;->mApi:Ljava/lang/String;

    .line 375
    iput-object v1, v0, Lcom/lzx/iteam/net/GetStructureMsg;->mParams:Ljava/util/List;

    .line 376
    invoke-virtual {p0}, Lcom/lzx/iteam/TreeFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 377
    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/lzx/iteam/TreeFrag;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 97
    new-instance v0, Lcom/lzx/iteam/TreeFrag;

    invoke-direct {v0}, Lcom/lzx/iteam/TreeFrag;-><init>()V

    .line 98
    .local v0, "f":Lcom/lzx/iteam/TreeFrag;
    invoke-virtual {v0, p0}, Lcom/lzx/iteam/TreeFrag;->setArguments(Landroid/os/Bundle;)V

    .line 99
    return-object v0
.end method

.method private setContact()V
    .locals 6

    .prologue
    .line 381
    new-instance v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    iget-object v2, p0, Lcom/lzx/iteam/TreeFrag;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 382
    .local v0, "getMsg":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 384
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "tag_id"

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/lzx/iteam/TreeFrag;->mTagId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_ids"

    iget-object v4, p0, Lcom/lzx/iteam/TreeFrag;->mContactIds:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "tag_path"

    iget-object v4, p0, Lcom/lzx/iteam/TreeFrag;->mTagPath:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    const-string v2, "/api/tags/set"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 389
    iput-object v1, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 390
    invoke-virtual {p0}, Lcom/lzx/iteam/TreeFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 391
    return-void
.end method


# virtual methods
.method public addcontactnum(I)V
    .locals 2
    .param p1, "addnum"    # I

    .prologue
    .line 277
    iget v0, p0, Lcom/lzx/iteam/TreeFrag;->mCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lzx/iteam/TreeFrag;->mCount:I

    .line 278
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag;->root:Lcom/lzx/iteam/treeview/Element;

    iget v1, v0, Lcom/lzx/iteam/treeview/Element;->contactCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/lzx/iteam/treeview/Element;->contactCount:I

    .line 279
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->notifyDataSetChanged()V

    .line 281
    return-void
.end method

.method public clearcontactlist()V
    .locals 3

    .prologue
    .line 417
    iget v1, p0, Lcom/lzx/iteam/TreeFrag;->currentPosition:I

    .line 418
    .local v1, "position":I
    if-ltz v1, :cond_0

    .line 419
    iget-object v2, p0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/treeview/Element;

    .line 420
    .local v0, "element":Lcom/lzx/iteam/treeview/Element;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/lzx/iteam/treeview/Element;->contactList:Ljava/util/ArrayList;

    .line 423
    .end local v0    # "element":Lcom/lzx/iteam/treeview/Element;
    :cond_0
    return-void
.end method

.method getallcontact()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 887
    sget v1, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    if-eqz v1, :cond_2

    .line 889
    iput-boolean v3, p0, Lcom/lzx/iteam/TreeFrag;->isBatch:Z

    .line 898
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 899
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "tag_id"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 900
    const-string v1, "intent_tag_name"

    const-string v2, "\u5168\u90e8\u6210\u5458"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    const-string v1, "tag_count"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 902
    const-string v1, "group_id"

    iget-object v2, p0, Lcom/lzx/iteam/TreeFrag;->mGid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 903
    const-string v1, "group_name"

    iget-object v2, p0, Lcom/lzx/iteam/TreeFrag;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 905
    iget v1, p0, Lcom/lzx/iteam/TreeFrag;->type:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lzx/iteam/TreeFrag;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/lzx/iteam/TreeFrag;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 906
    :cond_0
    const-string v1, "structure_tag_click"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, p0, Lcom/lzx/iteam/TreeFrag;->root:Lcom/lzx/iteam/treeview/Element;

    iput-object v2, v1, Lcom/lzx/iteam/CloudDialerActivity;->chooseelement:Lcom/lzx/iteam/treeview/Element;

    .line 911
    iget-boolean v1, p0, Lcom/lzx/iteam/TreeFrag;->isBatch:Z

    if-nez v1, :cond_3

    .line 912
    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    .line 913
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/lzx/iteam/TreeFrag;->root:Lcom/lzx/iteam/treeview/Element;

    .line 912
    invoke-virtual {v1, v0, v2, v3}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;ILcom/lzx/iteam/treeview/Element;)V

    .line 933
    :cond_1
    :goto_1
    sput-object v0, Lcom/lzx/iteam/CloudDialerActivity;->recordintent:Landroid/content/Intent;

    .line 934
    return-void

    .line 893
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lzx/iteam/TreeFrag;->isBatch:Z

    goto :goto_0

    .line 915
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_3
    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/lzx/iteam/TreeFrag;->root:Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v1, v0, v2, v3}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;ILcom/lzx/iteam/treeview/Element;)V

    goto :goto_1

    .line 920
    :cond_4
    iget v1, p0, Lcom/lzx/iteam/TreeFrag;->type:I

    if-ne v1, v3, :cond_5

    .line 921
    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    .line 922
    const/16 v2, 0x276a

    .line 921
    invoke-virtual {v1, v0, v2}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;I)V

    goto :goto_1

    .line 925
    :cond_5
    iget v1, p0, Lcom/lzx/iteam/TreeFrag;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 926
    const-string v1, "manage_delete_member"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 927
    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    .line 928
    const/16 v2, 0x276c

    .line 927
    invoke-virtual {v1, v0, v2}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 808
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 879
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 810
    :pswitch_1
    iget-boolean v0, p0, Lcom/lzx/iteam/TreeFrag;->isBatch:Z

    if-nez v0, :cond_1

    .line 811
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    const-string v1, "\u5168\u90e8\u6210\u5458"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->showButtonWindow(Ljava/lang/String;ZI)V

    goto :goto_0

    .line 815
    :cond_1
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/CloudDialerActivity;->changePage(Z)V

    goto :goto_0

    .line 828
    :pswitch_2
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/lzx/iteam/TreeFrag;->getallcontact()V

    .line 870
    const/4 v0, -0x1

    iput v0, p0, Lcom/lzx/iteam/TreeFrag;->currentPosition:I

    .line 872
    iget-object v0, p0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 808
    :pswitch_data_0
    .packed-switch 0x7f0e01ee
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 171
    invoke-direct {p0}, Lcom/lzx/iteam/TreeFrag;->getData()V

    .line 177
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "tag_id"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v1, "intent_tag_name"

    const-string v2, "\u5168\u90e8\u6210\u5458"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v1, "tag_count"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v1, "group_id"

    iget-object v2, p0, Lcom/lzx/iteam/TreeFrag;->mGid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v1, "group_name"

    iget-object v2, p0, Lcom/lzx/iteam/TreeFrag;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "contact_count"

    iget v2, p0, Lcom/lzx/iteam/TreeFrag;->mCount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    iget v1, p0, Lcom/lzx/iteam/TreeFrag;->type:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lzx/iteam/TreeFrag;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/lzx/iteam/TreeFrag;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 185
    :cond_0
    const-string v1, "structure_tag_click"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    :cond_1
    :goto_0
    sput-object v0, Lcom/lzx/iteam/CloudDialerActivity;->recordintent:Landroid/content/Intent;

    .line 196
    return-void

    .line 187
    :cond_2
    iget v1, p0, Lcom/lzx/iteam/TreeFrag;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 189
    iget v1, p0, Lcom/lzx/iteam/TreeFrag;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 190
    const-string v1, "manage_delete_member"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 474
    const v2, 0x7f0300fb

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 476
    .local v17, "v":Landroid/view/View;
    const v2, 0x7f0e0648

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/TreeFrag;->mRlNotice:Landroid/widget/RelativeLayout;

    .line 477
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/TreeFrag;->isBatch:Z

    if-nez v2, :cond_4

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->mCreateType:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->mCreateType:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 479
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->mRlNotice:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 487
    :goto_0
    const v2, 0x7f0e01f3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/widget/PullListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/TreeFrag;->treeview:Lcom/lzx/iteam/widget/PullListView;

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->treeview:Lcom/lzx/iteam/widget/PullListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/PullListView;->setType(I)V

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->treeview:Lcom/lzx/iteam/widget/PullListView;

    new-instance v3, Lcom/lzx/iteam/TreeFrag$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lzx/iteam/TreeFrag$2;-><init>(Lcom/lzx/iteam/TreeFrag;)V

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/PullListView;->setonRefreshListener(Lcom/lzx/iteam/widget/PullListView$OnRefreshListener;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->treeview:Lcom/lzx/iteam/widget/PullListView;

    new-instance v3, Lcom/lzx/iteam/TreeFrag$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lzx/iteam/TreeFrag$3;-><init>(Lcom/lzx/iteam/TreeFrag;)V

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/PullListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/TreeFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/TreeFrag;->inflater:Landroid/view/LayoutInflater;

    .line 619
    new-instance v2, Lcom/lzx/iteam/TreeFrag$BackgroundHandler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/lzx/iteam/TreeFrag$BackgroundHandler;-><init>(Lcom/lzx/iteam/TreeFrag;)V

    sput-object v2, Lcom/lzx/iteam/TreeFrag;->mHandler1:Landroid/os/Handler;

    .line 620
    new-instance v2, Landroid/os/Messenger;

    sget-object v3, Lcom/lzx/iteam/TreeFrag;->mHandler1:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/TreeFrag;->mMessenger:Landroid/os/Messenger;

    .line 623
    const v2, 0x7f0e01f0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/TreeFrag;->mAllContactCount:Landroid/widget/TextView;

    .line 624
    const v2, 0x7f0e01f1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/TreeFrag;->mAddGroup:Landroid/widget/ImageView;

    .line 652
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/TreeFrag;->isBatch:Z

    if-nez v2, :cond_2

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->mCreateType:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->mCreateType:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 657
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->treeview:Lcom/lzx/iteam/widget/PullListView;

    new-instance v3, Lcom/lzx/iteam/TreeFrag$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lzx/iteam/TreeFrag$4;-><init>(Lcom/lzx/iteam/TreeFrag;)V

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/PullListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 700
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/TreeFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "structure"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 701
    .local v15, "sp":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->mGid:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 704
    .local v16, "structureJson":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/TreeFrag;->mGid:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "tag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 707
    .local v11, "flag":Ljava/lang/Boolean;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 708
    invoke-static/range {v16 .. v16}, Lcom/lzx/iteam/net/GetStructureMsg;->getElementMsg(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    .line 709
    .local v13, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/TreeFrag;->elements:Ljava/util/ArrayList;

    .line 710
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/TreeFrag;->elementsData:Ljava/util/ArrayList;

    .line 713
    const-string v2, "top"

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/TreeFrag;->fixelements:Ljava/util/ArrayList;

    .line 715
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/TreeFrag;->elements:Ljava/util/ArrayList;

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->fixelements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 724
    const-string v2, "all"

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/TreeFrag;->elementsData:Ljava/util/ArrayList;

    .line 725
    new-instance v2, Lcom/lzx/iteam/treeview/TreeViewAdapter;

    .line 726
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/TreeFrag;->mGid:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/TreeFrag;->mGroupName:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/lzx/iteam/TreeFrag;->isBatch:Z

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lzx/iteam/TreeFrag;->mCount:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lzx/iteam/TreeFrag;->mContactId:Ljava/lang/String;

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v10}, Lcom/lzx/iteam/treeview/TreeViewAdapter;-><init>(Landroid/view/LayoutInflater;Lcom/lzx/iteam/TreeFrag;ILjava/lang/String;Ljava/util/ArrayList;ZILjava/lang/String;)V

    .line 725
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    const/4 v3, -0x1

    iput v3, v2, Lcom/lzx/iteam/treeview/TreeViewAdapter;->selectId:I

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/TreeFrag;->root:Lcom/lzx/iteam/treeview/Element;

    iput-object v3, v2, Lcom/lzx/iteam/treeview/TreeViewAdapter;->root:Lcom/lzx/iteam/treeview/Element;

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/TreeFrag;->elements:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/TreeFrag;->elementsData:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->initData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->treeview:Lcom/lzx/iteam/widget/PullListView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lzx/iteam/TreeFrag;->currentPosition:I

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/PullListView;->setSelection(I)V

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->treeview:Lcom/lzx/iteam/widget/PullListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/PullListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/TreeFrag;->getallcontact()V

    .line 794
    .end local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;>;"
    :goto_2
    return-object v17

    .line 481
    .end local v11    # "flag":Ljava/lang/Boolean;
    .end local v15    # "sp":Landroid/content/SharedPreferences;
    .end local v16    # "structureJson":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->mRlNotice:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 484
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->mRlNotice:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 716
    .restart local v11    # "flag":Ljava/lang/Boolean;
    .restart local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;>;"
    .restart local v15    # "sp":Landroid/content/SharedPreferences;
    .restart local v16    # "structureJson":Ljava/lang/String;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lzx/iteam/treeview/Element;

    .line 718
    .local v12, "it":Lcom/lzx/iteam/treeview/Element;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/TreeFrag;->elements:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 737
    .end local v12    # "it":Lcom/lzx/iteam/treeview/Element;
    .end local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/lzx/iteam/treeview/Element;>;>;"
    :cond_6
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 742
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/TreeFrag;->elementsData:Ljava/util/ArrayList;

    .line 745
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/TreeFrag;->fixelements:Ljava/util/ArrayList;

    .line 747
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/TreeFrag;->elements:Ljava/util/ArrayList;

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->fixelements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 757
    new-instance v2, Lcom/lzx/iteam/treeview/TreeViewAdapter;

    .line 758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/TreeFrag;->mGid:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/TreeFrag;->mGroupName:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/lzx/iteam/TreeFrag;->isBatch:Z

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lzx/iteam/TreeFrag;->mCount:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lzx/iteam/TreeFrag;->mContactId:Ljava/lang/String;

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v10}, Lcom/lzx/iteam/treeview/TreeViewAdapter;-><init>(Landroid/view/LayoutInflater;Lcom/lzx/iteam/TreeFrag;ILjava/lang/String;Ljava/util/ArrayList;ZILjava/lang/String;)V

    .line 757
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    const/4 v3, -0x1

    iput v3, v2, Lcom/lzx/iteam/treeview/TreeViewAdapter;->selectId:I

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/TreeFrag;->root:Lcom/lzx/iteam/treeview/Element;

    iput-object v3, v2, Lcom/lzx/iteam/treeview/TreeViewAdapter;->root:Lcom/lzx/iteam/treeview/Element;

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/TreeFrag;->elements:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/TreeFrag;->elementsData:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->initData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->treeview:Lcom/lzx/iteam/widget/PullListView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lzx/iteam/TreeFrag;->currentPosition:I

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/PullListView;->setSelection(I)V

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/TreeFrag;->treeview:Lcom/lzx/iteam/widget/PullListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/PullListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 767
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/TreeFrag;->getallcontact()V

    goto/16 :goto_2

    .line 748
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lzx/iteam/treeview/Element;

    .line 750
    .restart local v12    # "it":Lcom/lzx/iteam/treeview/Element;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/TreeFrag;->elements:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 774
    .end local v12    # "it":Lcom/lzx/iteam/treeview/Element;
    :cond_8
    sget-object v2, Lcom/lzx/iteam/TreeFrag;->mHandler1:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v14

    .line 775
    .local v14, "msg":Landroid/os/Message;
    const/16 v2, 0x14

    iput v2, v14, Landroid/os/Message;->what:I

    .line 781
    sget-object v2, Lcom/lzx/iteam/TreeFrag;->mHandler1:Landroid/os/Handler;

    invoke-virtual {v2, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 800
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 803
    return-void
.end method

.method public setContactNum(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ChatContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatContact;>;"
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget v2, p0, Lcom/lzx/iteam/TreeFrag;->currentPosition:I

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/treeview/Element;

    .line 322
    .local v0, "element":Lcom/lzx/iteam/treeview/Element;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/treeview/Element;->setContactCount(I)V

    .line 324
    iget v1, v0, Lcom/lzx/iteam/treeview/Element;->parendId:I

    if-eqz v1, :cond_0

    .line 325
    iget v1, v0, Lcom/lzx/iteam/treeview/Element;->parendId:I

    invoke-virtual {p0, v1, p1}, Lcom/lzx/iteam/TreeFrag;->setParentNum(ILjava/util/ArrayList;)V

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v1}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->notifyDataSetChanged()V

    .line 362
    return-void
.end method

.method setParentNum(ILjava/util/ArrayList;)V
    .locals 9
    .param p1, "parentid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ChatContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p2, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatContact;>;"
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v5, v5, Lcom/lzx/iteam/treeview/TreeViewAdapter;->elements:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 316
    :cond_1
    :goto_0
    return-void

    .line 285
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/treeview/Element;

    .line 286
    .local v4, "item":Lcom/lzx/iteam/treeview/Element;
    iget v6, v4, Lcom/lzx/iteam/treeview/Element;->id:I

    if-ne v6, p1, :cond_0

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "addnum":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 302
    iget-object v5, v4, Lcom/lzx/iteam/treeview/Element;->contactList:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    .line 303
    iget-object v5, v4, Lcom/lzx/iteam/treeview/Element;->contactList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/treeview/Element;->setContactCount(I)V

    .line 304
    :cond_4
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/lzx/iteam/treeview/Element;->contactList:Ljava/util/ArrayList;

    .line 306
    iget v5, v4, Lcom/lzx/iteam/treeview/Element;->parendId:I

    if-eqz v5, :cond_1

    .line 307
    iget v5, v4, Lcom/lzx/iteam/treeview/Element;->parendId:I

    invoke-virtual {p0, v5, p2}, Lcom/lzx/iteam/TreeFrag;->setParentNum(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 288
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/ChatContact;

    .line 289
    .local v1, "cc":Lcom/lzx/iteam/bean/ChatContact;
    const/4 v3, 0x0

    .line 290
    .local v3, "find":Z
    iget-object v6, v4, Lcom/lzx/iteam/treeview/Element;->contactList:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    .line 291
    iget-object v6, v4, Lcom/lzx/iteam/treeview/Element;->contactList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_8

    .line 298
    :cond_7
    :goto_2
    if-nez v3, :cond_3

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 291
    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/CloudContact;

    .line 292
    .local v2, "contact":Lcom/lzx/iteam/bean/CloudContact;
    iget-object v7, v2, Lcom/lzx/iteam/bean/CloudContact;->contactId:Ljava/lang/String;

    iget-object v8, v1, Lcom/lzx/iteam/bean/ChatContact;->contactId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 293
    const/4 v3, 0x1

    .line 294
    goto :goto_2
.end method

.method public updatecurrentitem()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 427
    iget v1, p0, Lcom/lzx/iteam/TreeFrag;->currentPosition:I

    .line 428
    .local v1, "position":I
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/lzx/iteam/TreeFrag;->currentPosition:I

    if-ne v5, v7, :cond_2

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/TreeFrag;->getallcontact()V

    .line 469
    :cond_1
    :goto_0
    return-void

    .line 434
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v5, v1}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v5}, Lcom/lzx/iteam/treeview/Element;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "tagId":Ljava/lang/String;
    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v5, v1}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v5}, Lcom/lzx/iteam/treeview/Element;->getContentText()Ljava/lang/String;

    move-result-object v4

    .line 436
    .local v4, "tagName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v5, v1}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v5}, Lcom/lzx/iteam/treeview/Element;->getContactCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "tagCount":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 439
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "tag_id"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v5, "intent_tag_name"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v5, "tag_count"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string v5, "group_id"

    iget-object v6, p0, Lcom/lzx/iteam/TreeFrag;->mGid:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string v5, "group_name"

    iget-object v6, p0, Lcom/lzx/iteam/TreeFrag;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string v5, "contact_count"

    iget v6, p0, Lcom/lzx/iteam/TreeFrag;->mCount:I

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 447
    iget v5, p0, Lcom/lzx/iteam/TreeFrag;->type:I

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/lzx/iteam/TreeFrag;->type:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    iget v5, p0, Lcom/lzx/iteam/TreeFrag;->type:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 448
    :cond_3
    const-string v5, "structure_tag_click"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    sget-object v6, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v5, v1}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/treeview/Element;

    iput-object v5, v6, Lcom/lzx/iteam/CloudDialerActivity;->chooseelement:Lcom/lzx/iteam/treeview/Element;

    .line 451
    iget-boolean v5, p0, Lcom/lzx/iteam/TreeFrag;->isBatch:Z

    if-nez v5, :cond_4

    .line 452
    sget-object v6, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v5, v1}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v6, v0, v7, v5}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;ILcom/lzx/iteam/treeview/Element;)V

    goto/16 :goto_0

    .line 454
    :cond_4
    sget-object v6, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v7, -0x2

    iget-object v5, p0, Lcom/lzx/iteam/TreeFrag;->treeViewAdapter:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-virtual {v5, v1}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/treeview/Element;

    invoke-virtual {v6, v0, v7, v5}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;ILcom/lzx/iteam/treeview/Element;)V

    goto/16 :goto_0

    .line 459
    :cond_5
    iget v5, p0, Lcom/lzx/iteam/TreeFrag;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 460
    sget-object v5, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    const/16 v6, 0x276a

    invoke-virtual {v5, v0, v6}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 462
    :cond_6
    iget v5, p0, Lcom/lzx/iteam/TreeFrag;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 463
    const-string v5, "manage_delete_member"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    sget-object v5, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    const/16 v6, 0x276c

    invoke-virtual {v5, v0, v6}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
