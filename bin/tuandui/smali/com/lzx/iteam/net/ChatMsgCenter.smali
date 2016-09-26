.class public Lcom/lzx/iteam/net/ChatMsgCenter;
.super Ljava/lang/Object;
.source "ChatMsgCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;
    }
.end annotation


# static fields
.field private static final MSG_CHAT_MSG_HISTORY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "get_chat_msg"

.field private static sInstance:Lcom/lzx/iteam/net/ChatMsgCenter;


# instance fields
.field private mChatMoreMsgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mGroupId:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;

.field mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

.field private mPageIndex:I

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mUserId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mChatMoreMsgs:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Lcom/lzx/iteam/net/ChatMsgCenter$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/net/ChatMsgCenter$1;-><init>(Lcom/lzx/iteam/net/ChatMsgCenter;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mHandler:Landroid/os/Handler;

    .line 106
    iput-object p1, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mContext:Landroid/content/Context;

    .line 107
    iget-object v0, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 108
    iget-object v0, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "useid"

    const-string v2, "\uff0d1"

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mUserId:Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/lzx/iteam/provider/MessageDB;

    iget-object v1, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/provider/MessageDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    .line 110
    iget-object v0, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/lzx/iteam/ChatActivity;

    invoke-static {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 111
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/net/ChatMsgCenter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mChatMoreMsgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/net/ChatMsgCenter;)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/lzx/iteam/net/ChatMsgCenter;->notifyChatMsgList()V

    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/net/ChatMsgCenter;)Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mListener:Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/net/ChatMsgCenter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/net/ChatMsgCenter;)Lcom/lzx/iteam/util/AllDialogUtil;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/ChatMsgCenter;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 114
    sget-object v0, Lcom/lzx/iteam/net/ChatMsgCenter;->sInstance:Lcom/lzx/iteam/net/ChatMsgCenter;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/lzx/iteam/net/ChatMsgCenter;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/net/ChatMsgCenter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lzx/iteam/net/ChatMsgCenter;->sInstance:Lcom/lzx/iteam/net/ChatMsgCenter;

    .line 117
    :cond_0
    sget-object v0, Lcom/lzx/iteam/net/ChatMsgCenter;->sInstance:Lcom/lzx/iteam/net/ChatMsgCenter;

    return-object v0
.end method

.method private notifyChatMsgList()V
    .locals 5

    .prologue
    .line 200
    iget-object v0, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    iget-object v1, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mGroupId:Ljava/lang/String;

    iget-object v2, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mUserId:Ljava/lang/String;

    const/4 v3, 0x1

    iget v4, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mPageIndex:I

    mul-int/lit8 v4, v4, 0xa

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lzx/iteam/provider/MessageDB;->findMessagesByChatGroupId(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mChatMoreMsgs:Ljava/util/ArrayList;

    .line 201
    iget-object v0, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mListener:Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mListener:Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;

    iget-object v1, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mChatMoreMsgs:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;->onChange(Ljava/util/ArrayList;)V

    .line 202
    :cond_0
    return-void
.end method


# virtual methods
.method public getChatMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "ctime"    # Ljava/lang/String;
    .param p2, "mids"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 186
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "grp"

    iget-object v4, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mGroupId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "ctime"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pagesize"

    const-string v4, "10"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-static {p2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "mids"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_0
    new-instance v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;

    iget-object v2, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 194
    .local v0, "messageMsg":Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;
    const-string v2, "/api/msg/get_history"

    iput-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->mApi:Ljava/lang/String;

    .line 195
    iput-object v1, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatHistoryMessageMsg;->mParams:Ljava/util/List;

    .line 196
    iget-object v2, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execChatHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 197
    return-void
.end method

.method public getChatMsgData(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "pageIndex"    # I
    .param p2, "ctime"    # Ljava/lang/String;
    .param p3, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iput-object p3, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mGroupId:Ljava/lang/String;

    .line 137
    iput p1, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mPageIndex:I

    .line 138
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mChatMoreMsgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 139
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    iget-object v4, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mGroupId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mUserId:Ljava/lang/String;

    const/4 v6, 0x1

    mul-int/lit8 v7, p1, 0xa

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/lzx/iteam/provider/MessageDB;->findMessagesByChatGroupId(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mChatMoreMsgs:Ljava/util/ArrayList;

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 142
    .local v1, "len":I
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mChatMoreMsgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    .line 143
    const/16 v1, 0xa

    .line 147
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 153
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/lzx/iteam/net/ChatMsgCenter;->getChatMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mChatMoreMsgs:Ljava/util/ArrayList;

    return-object v3

    .line 145
    .end local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mChatMoreMsgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    .line 148
    .restart local v0    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mChatMoreMsgs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getMsgID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mChatMoreMsgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_2

    .line 150
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getChatMsgData2(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "pageIndex"    # I
    .param p2, "ctime"    # Ljava/lang/String;
    .param p3, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iput-object p3, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mGroupId:Ljava/lang/String;

    .line 160
    iput p1, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mPageIndex:I

    .line 161
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mChatMoreMsgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 162
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    iget-object v4, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mGroupId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mUserId:Ljava/lang/String;

    const/4 v6, 0x1

    mul-int/lit8 v7, p1, 0xa

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/lzx/iteam/provider/MessageDB;->findMessagesByChatGroupId(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mChatMoreMsgs:Ljava/util/ArrayList;

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 165
    .local v1, "len":I
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mChatMoreMsgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    .line 166
    const/16 v1, 0xa

    .line 170
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 177
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mChatMoreMsgs:Ljava/util/ArrayList;

    return-object v3

    .line 168
    .end local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mChatMoreMsgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    .line 171
    .restart local v0    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mChatMoreMsgs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getMsgID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v3, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mChatMoreMsgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_2

    .line 173
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setUpdateChatMsgListener(Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/lzx/iteam/net/ChatMsgCenter;->mListener:Lcom/lzx/iteam/net/ChatMsgCenter$ChatMsgListener;

    .line 133
    return-void
.end method
