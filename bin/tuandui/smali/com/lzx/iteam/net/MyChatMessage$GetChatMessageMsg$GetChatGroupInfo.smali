.class Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$GetChatGroupInfo;
.super Landroid/os/AsyncTask;
.source "MyChatMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetChatGroupInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mChatGroupId:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field final synthetic this$1:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "chatGroupId"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$GetChatGroupInfo;->this$1:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 203
    iput-object p2, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$GetChatGroupInfo;->mContext:Landroid/content/Context;

    .line 204
    iput-object p3, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$GetChatGroupInfo;->mChatGroupId:Ljava/lang/String;

    .line 205
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$GetChatGroupInfo;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    iget-object v4, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$GetChatGroupInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v4

    const-string v5, "team_sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v6

    iget-object v6, v6, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "chat_group_id"

    iget-object v4, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$GetChatGroupInfo;->mChatGroupId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;

    iget-object v2, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$GetChatGroupInfo;->this$1:Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;

    iget-object v2, v2, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$GetChatGroupInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/lzx/iteam/net/ChatGroupInfoMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 215
    .local v0, "chatGroupInfoMsg":Lcom/lzx/iteam/net/ChatGroupInfoMsg;
    const-string v2, "/api/chatgroup/info"

    iput-object v2, v0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;->mApi:Ljava/lang/String;

    .line 216
    iput-object v1, v0, Lcom/lzx/iteam/net/ChatGroupInfoMsg;->mParams:Ljava/util/List;

    .line 217
    iget-object v2, p0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg$GetChatGroupInfo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 218
    const/4 v2, 0x0

    return-object v2
.end method
