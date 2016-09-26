.class Lcom/lzx/iteam/service/ChatService$GetEventReplyMsgTask;
.super Landroid/os/AsyncTask;
.source "ChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/service/ChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetEventReplyMsgTask"
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
.field mContext:Landroid/content/Context;

.field mMsgId:Ljava/lang/String;

.field final synthetic this$0:Lcom/lzx/iteam/service/ChatService;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/service/ChatService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "msgId"    # Ljava/lang/String;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/lzx/iteam/service/ChatService$GetEventReplyMsgTask;->this$0:Lcom/lzx/iteam/service/ChatService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 528
    iput-object p2, p0, Lcom/lzx/iteam/service/ChatService$GetEventReplyMsgTask;->mContext:Landroid/content/Context;

    .line 529
    iput-object p3, p0, Lcom/lzx/iteam/service/ChatService$GetEventReplyMsgTask;->mMsgId:Ljava/lang/String;

    .line 530
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/service/ChatService$GetEventReplyMsgTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 534
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 538
    iget-object v4, p0, Lcom/lzx/iteam/service/ChatService$GetEventReplyMsgTask;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v4}, Lcom/lzx/iteam/service/ChatService;->access$11(Lcom/lzx/iteam/service/ChatService;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v4

    const-string v5, "team_sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v6

    iget-object v6, v6, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "mids"

    iget-object v4, p0, Lcom/lzx/iteam/service/ChatService$GetEventReplyMsgTask;->mMsgId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    new-instance v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;

    iget-object v2, p0, Lcom/lzx/iteam/service/ChatService$GetEventReplyMsgTask;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lzx/iteam/service/ChatService;->access$18(Lcom/lzx/iteam/service/ChatService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xfa3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/service/ChatService$GetEventReplyMsgTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 544
    .local v0, "messageMsg":Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;
    const-string v2, "/api/msg/get_event"

    iput-object v2, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mApi:Ljava/lang/String;

    .line 545
    iput-object v1, v0, Lcom/lzx/iteam/net/MyChatMessage$GetChatMessageMsg;->mParams:Ljava/util/List;

    .line 546
    iget-object v2, p0, Lcom/lzx/iteam/service/ChatService$GetEventReplyMsgTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execChatHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 547
    const/4 v2, 0x0

    return-object v2
.end method
