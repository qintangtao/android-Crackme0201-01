.class public Lcom/lzx/iteam/ChatGroupDetailActivity;
.super Landroid/app/Activity;
.source "ChatGroupDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/ChatGroupDetailActivity$UpdateChatGroupMessage;
    }
.end annotation


# static fields
.field public static final REQUEST_NEW_GROUP_NAME:I = 0xef1


# instance fields
.field public final MSG_CHATGROUP_REMOVE_MEMBER:I

.field private final MSG_CHAT_GROUP_INFO:I

.field private final MSG_CHAT_GROUP_MEMBER:I

.field private final MSG_EXIT_GROUP:I

.field private final MSG_UPDATE_CHATGROUP:I

.field private adapter1:Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;

.field private mAegvChatGroupMember:Lcom/lzx/iteam/gridimg/AllEasyGridView;

.field private mChatContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ChatContact;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mCreaterMember:Landroid/widget/LinearLayout;

.field private mCreatorName:Ljava/lang/String;

.field private mGroupID:Ljava/lang/String;

.field private mGroupName:Ljava/lang/String;

.field private mGvChatGroupMember:Lcom/lzx/iteam/gridimg/MyGridView;

.field private mHandler:Landroid/os/Handler;

.field private mIsActive:Ljava/lang/String;

.field private mIsNote:Ljava/lang/String;

.field private mLlBtnBack:Landroid/widget/LinearLayout;

.field private mMembers:Lorg/json/JSONArray;

.field private mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

.field private mNormalMember:Landroid/widget/LinearLayout;

.field private mRlChatGroupClear:Landroid/widget/RelativeLayout;

.field private mRlChatGroupDissolve:Landroid/widget/RelativeLayout;

.field private mRlChatGroupName:Landroid/widget/RelativeLayout;

.field private mRlChatGroupNotify:Landroid/widget/RelativeLayout;

.field private mSingleChatClearGone:Landroid/widget/LinearLayout;

.field private mSingleChatLineGone:Landroid/view/View;

.field private mSingleChatNameGone:Landroid/widget/LinearLayout;

.field private mTbChatGroupNotify:Landroid/widget/ToggleButton;

.field private mTvChatGroupDisband:Landroid/widget/TextView;

.field private mTvChatGroupName:Landroid/widget/TextView;

.field private mType:Ljava/lang/String;

.field private mUserType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->MSG_CHAT_GROUP_INFO:I

    .line 62
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->MSG_EXIT_GROUP:I

    .line 63
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->MSG_UPDATE_CHATGROUP:I

    .line 64
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->MSG_CHAT_GROUP_MEMBER:I

    .line 66
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->MSG_CHATGROUP_REMOVE_MEMBER:I

    .line 71
    new-instance v0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ChatGroupDetailActivity$1;-><init>(Lcom/lzx/iteam/ChatGroupDetailActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mHandler:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ChatGroupDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/ChatGroupDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mTvChatGroupName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/ChatGroupDetailActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mChatContacts:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$11(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mChatContacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$12(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lzx/iteam/ChatGroupDetailActivity;Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->adapter1:Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;

    return-void
.end method

.method static synthetic access$14(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->adapter1:Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;

    return-object v0
.end method

.method static synthetic access$15(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lcom/lzx/iteam/gridimg/MyGridView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mGvChatGroupMember:Lcom/lzx/iteam/gridimg/MyGridView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mUserType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lcom/lzx/iteam/gridimg/AllEasyGridView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mAegvChatGroupMember:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/lzx/iteam/ChatGroupDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mSingleChatNameGone:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$19(Lcom/lzx/iteam/ChatGroupDetailActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mSingleChatLineGone:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcom/lzx/iteam/ChatGroupDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mNormalMember:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$21(Lcom/lzx/iteam/ChatGroupDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mCreaterMember:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$22(Lcom/lzx/iteam/ChatGroupDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mTvChatGroupDisband:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$23(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mIsNote:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$24(Lcom/lzx/iteam/ChatGroupDetailActivity;)Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mTbChatGroupNotify:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$25(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lcom/lzx/iteam/provider/MessageDB;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    return-object v0
.end method

.method static synthetic access$26(Lcom/lzx/iteam/ChatGroupDetailActivity;)V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->getChatGroupInfo()V

    return-void
.end method

.method static synthetic access$27(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mIsActive:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$28(Lcom/lzx/iteam/ChatGroupDetailActivity;)V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->exitChatGroup()V

    return-void
.end method

.method static synthetic access$3(Lcom/lzx/iteam/ChatGroupDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mIsNote:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/lzx/iteam/ChatGroupDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mUserType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/lzx/iteam/ChatGroupDetailActivity;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mMembers:Lorg/json/JSONArray;

    return-void
.end method

.method static synthetic access$6(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mMembers:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/ChatGroupDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mType:Ljava/lang/String;

    return-void
.end method

.method private chatGroupUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "msgNotify"    # Ljava/lang/String;

    .prologue
    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "chat_group_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_users"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    if-eqz p2, :cond_0

    .line 490
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "chat_group_name"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_0
    if-eqz p3, :cond_1

    .line 493
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "is_msg_note"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_1
    new-instance v1, Lcom/lzx/iteam/ChatGroupDetailActivity$UpdateChatGroupMessage;

    iget-object v2, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lzx/iteam/ChatGroupDetailActivity$UpdateChatGroupMessage;-><init>(Landroid/os/Message;)V

    .line 496
    .local v1, "updateGroupMessage":Lcom/lzx/iteam/ChatGroupDetailActivity$UpdateChatGroupMessage;
    const-string v2, "/api/chatgroup/update"

    iput-object v2, v1, Lcom/lzx/iteam/ChatGroupDetailActivity$UpdateChatGroupMessage;->mApi:Ljava/lang/String;

    .line 497
    iput-object v0, v1, Lcom/lzx/iteam/ChatGroupDetailActivity$UpdateChatGroupMessage;->mParams:Ljava/util/List;

    .line 498
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 499
    return-void
.end method

.method private exitChatGroup()V
    .locals 5

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "getMsg":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 469
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "chat_group_id"

    iget-object v4, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupID:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    new-instance v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    .end local v0    # "getMsg":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    iget-object v2, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 472
    .restart local v0    # "getMsg":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    const-string v2, "/api/chatgroup/exit"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 473
    iput-object v1, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 474
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 475
    return-void
.end method

.method private getChatGroupInfo()V
    .locals 5

    .prologue
    .line 417
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 419
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "chat_group_id"

    iget-object v4, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupID:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    new-instance v0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;

    iget-object v2, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/lzx/iteam/net/ChatGroupInfoMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 422
    .local v0, "chatGroupInfoMsg":Lcom/lzx/iteam/net/ChatGroupInfoMsg;
    const-string v2, "/api/chatgroup/info"

    iput-object v2, v0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;->mApi:Ljava/lang/String;

    .line 423
    iput-object v1, v0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;->mParams:Ljava/util/List;

    .line 424
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 425
    return-void
.end method

.method private getIntentData()V
    .locals 2

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 263
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "chat_group_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupID:Ljava/lang/String;

    .line 264
    const-string v1, "chat_group_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupName:Ljava/lang/String;

    .line 265
    const-string v1, "user_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mUserType:Ljava/lang/String;

    .line 266
    const-string v1, "is_note"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mIsNote:Ljava/lang/String;

    .line 267
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mType:Ljava/lang/String;

    .line 268
    const-string v1, "isActive"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mIsActive:Ljava/lang/String;

    .line 270
    return-void
.end method

.method private initDatas()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 321
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mTvChatGroupName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    const-string v0, "1"

    iget-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mSingleChatNameGone:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mSingleChatLineGone:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mNormalMember:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mCreaterMember:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mTvChatGroupDisband:Landroid/widget/TextView;

    const-string v1, "\u5220\u9664\u5bf9\u8bdd"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    :cond_0
    :goto_0
    const-string v0, "1"

    iget-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mIsNote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 344
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mTbChatGroupNotify:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 348
    :cond_1
    :goto_1
    return-void

    .line 329
    :cond_2
    const-string v0, "0"

    iget-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mSingleChatNameGone:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mSingleChatLineGone:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 333
    const-string v0, "1"

    iget-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mUserType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 334
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mNormalMember:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mCreaterMember:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mTvChatGroupDisband:Landroid/widget/TextView;

    const-string v1, "\u5220\u9664\u5e76\u9000\u51fa"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 337
    :cond_3
    const-string v0, "2"

    iget-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mUserType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mCreaterMember:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mNormalMember:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 345
    :cond_4
    const-string v0, "0"

    iget-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mIsNote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mTbChatGroupNotify:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 273
    const v0, 0x7f0e0168

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mLlBtnBack:Landroid/widget/LinearLayout;

    .line 274
    const v0, 0x7f0e016c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mRlChatGroupName:Landroid/widget/RelativeLayout;

    .line 275
    const v0, 0x7f0e0175

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mRlChatGroupNotify:Landroid/widget/RelativeLayout;

    .line 276
    const v0, 0x7f0e0178

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mRlChatGroupClear:Landroid/widget/RelativeLayout;

    .line 277
    const v0, 0x7f0e0179

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mRlChatGroupDissolve:Landroid/widget/RelativeLayout;

    .line 278
    const v0, 0x7f0e0170

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mNormalMember:Landroid/widget/LinearLayout;

    .line 279
    const v0, 0x7f0e0173

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mCreaterMember:Landroid/widget/LinearLayout;

    .line 280
    const v0, 0x7f0e016f

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mTvChatGroupName:Landroid/widget/TextView;

    .line 281
    const v0, 0x7f0e017a

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mTvChatGroupDisband:Landroid/widget/TextView;

    .line 282
    const v0, 0x7f0e0176

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mTbChatGroupNotify:Landroid/widget/ToggleButton;

    .line 283
    const v0, 0x7f0e0172

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/gridimg/MyGridView;

    iput-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mGvChatGroupMember:Lcom/lzx/iteam/gridimg/MyGridView;

    .line 284
    const v0, 0x7f0e0174

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/gridimg/AllEasyGridView;

    iput-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mAegvChatGroupMember:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    .line 285
    const v0, 0x7f0e016b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mSingleChatNameGone:Landroid/widget/LinearLayout;

    .line 286
    const v0, 0x7f0e0177

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mSingleChatClearGone:Landroid/widget/LinearLayout;

    .line 287
    const v0, 0x7f0e0171

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mSingleChatLineGone:Landroid/view/View;

    .line 288
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mGvChatGroupMember:Lcom/lzx/iteam/gridimg/MyGridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/gridimg/MyGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 289
    new-instance v0, Lcom/lzx/iteam/provider/MessageDB;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/provider/MessageDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    .line 293
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mRlChatGroupDissolve:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mRlChatGroupClear:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mLlBtnBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mRlChatGroupName:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mRlChatGroupNotify:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 299
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mGvChatGroupMember:Lcom/lzx/iteam/gridimg/MyGridView;

    new-instance v1, Lcom/lzx/iteam/ChatGroupDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/ChatGroupDetailActivity$2;-><init>(Lcom/lzx/iteam/ChatGroupDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/gridimg/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 318
    return-void
.end method

.method private removeMemberByChatGroup(Ljava/lang/String;)V
    .locals 5
    .param p1, "user_id"    # Ljava/lang/String;

    .prologue
    .line 647
    new-instance v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    iget-object v2, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ec

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 648
    .local v0, "getMsg":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 649
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 650
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "chat_group_id"

    iget-object v4, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupID:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "del_user_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    const-string v2, "/api/chatmember/remove"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 654
    iput-object v1, v0, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 655
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 656
    return-void
.end method


# virtual methods
.method public addImage()V
    .locals 3

    .prologue
    .line 503
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lzx/iteam/ChooseContactByTeamActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 504
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "create_chat_group"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const-string v1, "chat_group_id"

    iget-object v2, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const-string v1, "chat_group_name"

    iget-object v2, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string v1, "user_type"

    iget-object v2, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mUserType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    const-string v1, "is_note"

    iget-object v2, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mIsNote:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 519
    return-void
.end method

.method public delImage(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 523
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mAegvChatGroupMember:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v0}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->removeMemberByChatGroup(Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 609
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 610
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 611
    packed-switch p1, :pswitch_data_0

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 613
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "new_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "newName":Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 615
    iput-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupName:Ljava/lang/String;

    .line 616
    iget-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupID:Ljava/lang/String;

    iget-object v2, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/lzx/iteam/ChatGroupDetailActivity;->chatGroupUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0xef1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 411
    :goto_0
    return-void

    .line 363
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 364
    .local v1, "chatInfo":Landroid/content/Intent;
    const-string v5, "chat_name"

    iget-object v6, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mTvChatGroupName:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v5, "chat_count"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mMembers:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const/16 v5, 0x2773

    invoke-virtual {p0, v5, v1}, Lcom/lzx/iteam/ChatGroupDetailActivity;->setResult(ILandroid/content/Intent;)V

    .line 367
    invoke-virtual {p0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->finish()V

    goto :goto_0

    .line 370
    .end local v1    # "chatInfo":Landroid/content/Intent;
    :sswitch_1
    const-string v5, "0"

    iget-object v6, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mIsActive:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 371
    const-string v5, "\u5bf9\u4e0d\u8d77\uff0c\u8be5\u5c0f\u7ec4\u5df2\u7ecf\u89e3\u6563\uff0c\u65e0\u6cd5\u8fdb\u884c\u6b64\u64cd\u4f5c"

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 373
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/lzx/iteam/UpdateGroupNameActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 374
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "old_name"

    iget-object v6, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mTvChatGroupName:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const/16 v5, 0xef1

    invoke-virtual {p0, v3, v5}, Lcom/lzx/iteam/ChatGroupDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 379
    .end local v3    # "intent":Landroid/content/Intent;
    :sswitch_2
    const-string v5, "0"

    iget-object v6, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mIsActive:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 380
    const-string v5, "\u5bf9\u4e0d\u8d77\uff0c\u8be5\u5c0f\u7ec4\u5df2\u7ecf\u89e3\u6563\uff0c\u65e0\u6cd5\u8fdb\u884c\u6b64\u64cd\u4f5c"

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 382
    :cond_1
    iget-object v5, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mTbChatGroupNotify:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->toggle()V

    goto :goto_0

    .line 386
    :sswitch_3
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v2

    .line 387
    .local v2, "dialogUtil":Lcom/lzx/iteam/util/AllDialogUtil;
    const v5, 0x7f080065

    invoke-virtual {p0, v5}, Lcom/lzx/iteam/ChatGroupDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, "okText":Ljava/lang/String;
    const v5, 0x7f08002d

    invoke-virtual {p0, v5}, Lcom/lzx/iteam/ChatGroupDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "cancelText":Ljava/lang/String;
    const-string v5, "\u786e\u5b9a\u5220\u9664\u804a\u5929\u8bb0\u5f55\u5417\uff1f"

    invoke-virtual {v2, v4, v0, v5}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 390
    new-instance v5, Lcom/lzx/iteam/ChatGroupDetailActivity$3;

    invoke-direct {v5, p0}, Lcom/lzx/iteam/ChatGroupDetailActivity$3;-><init>(Lcom/lzx/iteam/ChatGroupDetailActivity;)V

    invoke-virtual {v2, v5}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    goto/16 :goto_0

    .line 408
    .end local v0    # "cancelText":Ljava/lang/String;
    .end local v2    # "dialogUtil":Lcom/lzx/iteam/util/AllDialogUtil;
    .end local v4    # "okText":Ljava/lang/String;
    :sswitch_4
    invoke-virtual {p0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->showExitGroupDlg()V

    goto/16 :goto_0

    .line 352
    :sswitch_data_0
    .sparse-switch
        0x7f0e0168 -> :sswitch_0
        0x7f0e016c -> :sswitch_1
        0x7f0e0175 -> :sswitch_2
        0x7f0e0178 -> :sswitch_3
        0x7f0e0179 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 247
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->setContentView(I)V

    .line 248
    invoke-direct {p0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->getIntentData()V

    .line 249
    invoke-direct {p0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->initViews()V

    .line 250
    invoke-direct {p0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->initDatas()V

    .line 251
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 257
    invoke-direct {p0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->getChatGroupInfo()V

    .line 258
    return-void
.end method

.method public queryImage(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 528
    const-string v2, "0"

    iget-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mAegvChatGroupMember:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v1}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->getData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "user_id"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mAegvChatGroupMember:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v1}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->getData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    :cond_0
    const-string v1, "\u5bf9\u4e0d\u8d77\uff0c\u8be5\u7528\u6237\u672a\u6ce8\u518c"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 535
    :goto_0
    return-void

    .line 531
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lzx/iteam/ContactNameCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 532
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "user_id"

    iget-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mAegvChatGroupMember:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v1}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->getData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "user_id"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChatGroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public showExitGroupDlg()V
    .locals 5

    .prologue
    .line 431
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v1

    .line 432
    .local v1, "dialogUtil":Lcom/lzx/iteam/util/AllDialogUtil;
    const v3, 0x7f080061

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/ChatGroupDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, "okText":Ljava/lang/String;
    const v3, 0x7f08002d

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/ChatGroupDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "cancelText":Ljava/lang/String;
    const-string v3, "1"

    iget-object v4, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 435
    const-string v3, "\u5220\u9664\u4e0e\u6b64\u4eba\u7684\u6240\u6709\u804a\u5929\u5bf9\u8bdd"

    invoke-virtual {v1, v2, v0, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 445
    :cond_0
    :goto_0
    new-instance v3, Lcom/lzx/iteam/ChatGroupDetailActivity$4;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/ChatGroupDetailActivity$4;-><init>(Lcom/lzx/iteam/ChatGroupDetailActivity;)V

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 460
    return-void

    .line 436
    :cond_1
    const-string v3, "0"

    iget-object v4, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 437
    const-string v3, "2"

    iget-object v4, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mUserType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 439
    const-string v3, "\u89e3\u6563\u5c0f\u7ec4\u540e\uff0c\u7ec4\u4e2d\u6210\u5458\u5c06\u5931\u53bb\u8054\u7cfb"

    invoke-virtual {v1, v2, v0, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    .line 440
    :cond_2
    const-string v3, "1"

    iget-object v4, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mUserType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    const-string v3, "\u9000\u51fa\u5c0f\u7ec4\u540e,\u5c06\u4e0d\u518d\u63a5\u6536\u6b64\u5c0f\u7ec4\u7684\u6d88\u606f"

    invoke-virtual {v1, v2, v0, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method public updateChatGroupInfo(Lcom/lzx/iteam/bean/ChatGroup;)V
    .locals 2
    .param p1, "info"    # Lcom/lzx/iteam/bean/ChatGroup;

    .prologue
    .line 591
    if-eqz p1, :cond_1

    .line 592
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ChatGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ChatGroup;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupName:Ljava/lang/String;

    .line 594
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mTvChatGroupName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    :cond_0
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ChatGroup;->getIsNote()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 598
    const-string v0, "1"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ChatGroup;->getIsNote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 599
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mTbChatGroupNotify:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 605
    :cond_1
    :goto_0
    return-void

    .line 600
    :cond_2
    const-string v0, "0"

    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ChatGroup;->getIsNote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/lzx/iteam/ChatGroupDetailActivity;->mTbChatGroupNotify:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method
