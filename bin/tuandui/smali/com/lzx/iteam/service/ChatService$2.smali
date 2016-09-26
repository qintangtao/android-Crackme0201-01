.class Lcom/lzx/iteam/service/ChatService$2;
.super Lcom/lzx/iteam/service/aidl/INetService$Stub;
.source "ChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/service/ChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/service/ChatService;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/service/ChatService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;

    .line 175
    invoke-direct {p0}, Lcom/lzx/iteam/service/aidl/INetService$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/service/ChatService$2;)Lcom/lzx/iteam/service/ChatService;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;

    return-object v0
.end method


# virtual methods
.method public addNewMessageInterface(Lcom/lzx/iteam/service/aidl/NewMessageInterface;)V
    .locals 3
    .param p1, "newMessageInterface"    # Lcom/lzx/iteam/service/aidl/NewMessageInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 468
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/service/ChatService;->access$1(Lcom/lzx/iteam/service/ChatService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    const-string v0, "Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ChatService---addNewMessageInterface="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lzx/iteam/service/ChatService;->access$1(Lcom/lzx/iteam/service/ChatService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void
.end method

.method public createSocketIOConnect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    const-string v1, "Service"

    const-string v2, "ChatService---createSocketIOConnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    invoke-static {v1, v2}, Lcom/lzx/iteam/service/ChatService;->access$6(Lcom/lzx/iteam/service/ChatService;Landroid/app/Notification;)V

    .line 182
    iget-object v1, p0, Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->messageNotification:Landroid/app/Notification;
    invoke-static {v1}, Lcom/lzx/iteam/service/ChatService;->access$2(Lcom/lzx/iteam/service/ChatService;)Landroid/app/Notification;

    move-result-object v1

    const v2, 0x7f02032a

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 183
    iget-object v1, p0, Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->messageNotification:Landroid/app/Notification;
    invoke-static {v1}, Lcom/lzx/iteam/service/ChatService;->access$2(Lcom/lzx/iteam/service/ChatService;)Landroid/app/Notification;

    move-result-object v1

    const-string v2, "\u56e2\u961f"

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 184
    iget-object v1, p0, Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->messageNotification:Landroid/app/Notification;
    invoke-static {v1}, Lcom/lzx/iteam/service/ChatService;->access$2(Lcom/lzx/iteam/service/ChatService;)Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 185
    iget-object v1, p0, Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->messageNotification:Landroid/app/Notification;
    invoke-static {v1}, Lcom/lzx/iteam/service/ChatService;->access$2(Lcom/lzx/iteam/service/ChatService;)Landroid/app/Notification;

    move-result-object v1

    const/4 v2, 0x7

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 189
    iget-object v2, p0, Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;

    iget-object v1, p0, Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;

    const-string v3, "notification"

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/service/ChatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-static {v2, v1}, Lcom/lzx/iteam/service/ChatService;->access$7(Lcom/lzx/iteam/service/ChatService;Landroid/app/NotificationManager;)V

    .line 190
    new-instance v0, Lcom/koushikdutta/async/http/socketio/SocketIORequest;

    const-string v1, "http://123.57.214.92:8899"

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/socketio/SocketIORequest;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "req":Lcom/koushikdutta/async/http/socketio/SocketIORequest;
    invoke-static {}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getDefaultInstance()Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v1

    new-instance v2, Lcom/lzx/iteam/service/ChatService$2$1;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/service/ChatService$2$1;-><init>(Lcom/lzx/iteam/service/ChatService$2;)V

    invoke-static {v1, v0, v2}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->connect(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/socketio/SocketIORequest;Lcom/koushikdutta/async/http/socketio/ConnectCallback;)Lcom/koushikdutta/async/future/Future;

    .line 395
    iget-object v1, p0, Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;

    # invokes: Lcom/lzx/iteam/service/ChatService;->registNetInfoReceiver()V
    invoke-static {v1}, Lcom/lzx/iteam/service/ChatService;->access$13(Lcom/lzx/iteam/service/ChatService;)V

    .line 397
    return-void
.end method

.method public disSocketIOConnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->mSocketIOClient:Lcom/koushikdutta/async/http/socketio/SocketIOClient;
    invoke-static {v0}, Lcom/lzx/iteam/service/ChatService;->access$9(Lcom/lzx/iteam/service/ChatService;)Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->mSocketIOClient:Lcom/koushikdutta/async/http/socketio/SocketIOClient;
    invoke-static {v0}, Lcom/lzx/iteam/service/ChatService;->access$9(Lcom/lzx/iteam/service/ChatService;)Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->disconnect()V

    .line 461
    :cond_0
    const-string v0, "Service"

    const-string v1, "ChatService---disSocketIOConnect\ufe63\ufe63\ufe63\ufe63disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return-void
.end method

.method public getMessageTag()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 487
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getNetManagerInstance()Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/service/NetServiceManager;->getTags()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loginXMPPServer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 401
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lzx/iteam/service/ChatService$2$2;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/service/ChatService$2$2;-><init>(Lcom/lzx/iteam/service/ChatService$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 406
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 407
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;

    sput-object v0, Lcom/lzx/iteam/service/NetServiceManager;->mContext:Landroid/content/Context;

    .line 409
    return-void
.end method

.method public removeNewMessageInterface(Lcom/lzx/iteam/service/aidl/NewMessageInterface;)V
    .locals 3
    .param p1, "newMessageInterface"    # Lcom/lzx/iteam/service/aidl/NewMessageInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/service/ChatService;->access$1(Lcom/lzx/iteam/service/ChatService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/service/ChatService;->access$1(Lcom/lzx/iteam/service/ChatService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/service/ChatService;->access$1(Lcom/lzx/iteam/service/ChatService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 481
    :goto_0
    const-string v0, "Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ChatService---removeNewMessageInterface="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lzx/iteam/service/ChatService;->access$1(Lcom/lzx/iteam/service/ChatService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/service/ChatService$2;->this$0:Lcom/lzx/iteam/service/ChatService;

    # getter for: Lcom/lzx/iteam/service/ChatService;->mMsgListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/service/ChatService;->access$1(Lcom/lzx/iteam/service/ChatService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public sendImageIQ(Ljava/lang/String;[BLcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "imageFile"    # [B
    .param p3, "chatMoreMsg"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getNetManagerInstance()Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v2

    invoke-virtual {p3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getChatGroupID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/lzx/iteam/service/NetServiceManager;->sendIQ(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/CustomTokenIQ;

    move-result-object v1

    .line 444
    .local v1, "temp":Lorg/jivesoftware/smack/packet/CustomTokenIQ;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 453
    :goto_0
    return-object v0

    .line 445
    :cond_0
    new-instance v0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;-><init>()V

    .line 446
    .local v0, "customTokenIQ":Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->setUuid(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->setMsgId(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->getGrp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->setGrp(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->setKey(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->setToken(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0, p2}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->setImageFile([B)V

    .line 452
    invoke-virtual {v0, p3}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->setChatMoreMsg(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    goto :goto_0
.end method

.method public sendImageMessage(Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "chatMoreMsg"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getNetManagerInstance()Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzx/iteam/service/NetServiceManager;->sendImageMessage(Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Z

    move-result v0

    return v0
.end method

.method public sendSoundIQ(Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "soundFile"    # Ljava/lang/String;
    .param p3, "chatMoreMsg"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getNetManagerInstance()Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v2

    invoke-virtual {p3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getChatGroupID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/lzx/iteam/service/NetServiceManager;->sendIQ(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/CustomTokenIQ;

    move-result-object v1

    .line 429
    .local v1, "temp":Lorg/jivesoftware/smack/packet/CustomTokenIQ;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 438
    :goto_0
    return-object v0

    .line 430
    :cond_0
    new-instance v0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;-><init>()V

    .line 431
    .local v0, "customTokenIQ":Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->setUuid(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->setMsgId(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->getGrp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->setGrp(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->setKey(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->setToken(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v0, p2}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->setSoundFile(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0, p3}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->setChatMoreMsg(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    goto :goto_0
.end method

.method public sendSoundMessage(Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "chatMoreMsg"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getNetManagerInstance()Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzx/iteam/service/NetServiceManager;->sendSoundMessage(Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Z

    move-result v0

    return v0
.end method

.method public sendTextMessage(Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "chatMoreMsg"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getNetManagerInstance()Lcom/lzx/iteam/service/NetServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lzx/iteam/service/NetServiceManager;->sendTextMessage(Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Z

    move-result v0

    return v0
.end method
