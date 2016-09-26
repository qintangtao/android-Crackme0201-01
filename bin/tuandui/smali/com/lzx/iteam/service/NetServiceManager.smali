.class public Lcom/lzx/iteam/service/NetServiceManager;
.super Ljava/lang/Object;
.source "NetServiceManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionListener;
.implements Lorg/jivesoftware/smack/MessageListener;
.implements Lorg/jivesoftware/smack/ChatManagerListener;
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;,
        Lcom/lzx/iteam/service/NetServiceManager$GetChatGroupInfo;,
        Lcom/lzx/iteam/service/NetServiceManager$LooperThread;,
        Lcom/lzx/iteam/service/NetServiceManager$timeTask;
    }
.end annotation


# static fields
.field private static conn:Lorg/jivesoftware/smack/XMPPConnection;

.field static instance:Lcom/lzx/iteam/service/NetServiceManager;

.field public static mContext:Landroid/content/Context;

.field static netService:Lcom/lzx/iteam/service/aidl/INetService;

.field static serviceConnection:Landroid/content/ServiceConnection;

.field static serviceConnectionCall:Landroid/content/ServiceConnection;


# instance fields
.field private final MSG_CHAT_GROUP_INFO:I

.field alarmpi:Landroid/app/PendingIntent;

.field chgrpId:Ljava/lang/String;

.field defaultChatInterface:Lcom/lzx/iteam/service/aidl/NewMessageInterface;

.field duration:Ljava/lang/String;

.field imagePath:Ljava/lang/String;

.field loginInterface:Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;

.field private loginTime:I

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field public mHandler:Landroid/os/Handler;

.field public volatile mLogining:Z

.field private mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

.field private mNameCard:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field mapChatinfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;",
            ">;"
        }
    .end annotation
.end field

.field messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field msgBody:Ljava/lang/String;

.field msgId:Ljava/lang/String;

.field mt:Ljava/lang/String;

.field resource:Ljava/lang/String;

.field sendTime:Ljava/lang/String;

.field senderAvatar:Ljava/lang/String;

.field senderId:Ljava/lang/String;

.field senderName:Ljava/lang/String;

.field servaddr:Ljava/lang/String;

.field serverce:Ljava/lang/String;

.field servport:J

.field private tExit:Ljava/util/Timer;

.field tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field thumbnails:Ljava/lang/String;

.field userid:Ljava/lang/String;

.field userpwd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    sput-object v1, Lcom/lzx/iteam/service/NetServiceManager;->netService:Lcom/lzx/iteam/service/aidl/INetService;

    .line 52
    sput-object v1, Lcom/lzx/iteam/service/NetServiceManager;->instance:Lcom/lzx/iteam/service/NetServiceManager;

    .line 161
    new-instance v1, Lcom/lzx/iteam/service/NetServiceManager$1;

    invoke-direct {v1}, Lcom/lzx/iteam/service/NetServiceManager$1;-><init>()V

    sput-object v1, Lcom/lzx/iteam/service/NetServiceManager;->serviceConnection:Landroid/content/ServiceConnection;

    .line 203
    new-instance v1, Lcom/lzx/iteam/service/NetServiceManager$2;

    invoke-direct {v1}, Lcom/lzx/iteam/service/NetServiceManager$2;-><init>()V

    sput-object v1, Lcom/lzx/iteam/service/NetServiceManager;->serviceConnectionCall:Landroid/content/ServiceConnection;

    .line 243
    :try_start_0
    const-string v1, "org.jivesoftware.smack.ReconnectionManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 245
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/service/NetServiceManager;->mNameCard:Ljava/util/ArrayList;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/service/NetServiceManager;->mLogining:Z

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/service/NetServiceManager;->mapChatinfos:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/service/NetServiceManager;->messages:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/service/NetServiceManager;->tags:Ljava/util/ArrayList;

    .line 91
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/lzx/iteam/service/NetServiceManager;->loginTime:I

    .line 100
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lzx/iteam/service/NetServiceManager;->MSG_CHAT_GROUP_INFO:I

    .line 48
    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/service/NetServiceManager;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lzx/iteam/service/NetServiceManager;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/service/NetServiceManager;)Lcom/lzx/iteam/provider/MessageDB;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lzx/iteam/service/NetServiceManager;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    return-object v0
.end method

.method public static createNetCallService(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    const-string v1, "Service"

    const-string v2, "createNetCallService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 228
    .local v0, "contact":Landroid/content/Intent;
    const-string v1, "com.lzx.iteam.action.CommonService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    sget-object v1, Lcom/lzx/iteam/service/NetServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 230
    return-void
.end method

.method public static createNetChatService(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    const-string v0, "Service"

    const-string v1, "createNetChatService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lzx.iteam.service.ChatService.INetService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/lzx/iteam/service/NetServiceManager;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 222
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/lzx/iteam/service/aidl/INetService;
    .locals 4

    .prologue
    .line 146
    const-class v1, Lcom/lzx/iteam/service/NetServiceManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "Service"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NetServiceManager INetService getInstance"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/lzx/iteam/service/NetServiceManager;->netService:Lcom/lzx/iteam/service/aidl/INetService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v0, Lcom/lzx/iteam/service/NetServiceManager;->netService:Lcom/lzx/iteam/service/aidl/INetService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getNetManagerInstance()Lcom/lzx/iteam/service/NetServiceManager;
    .locals 2

    .prologue
    .line 151
    const-class v1, Lcom/lzx/iteam/service/NetServiceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lzx/iteam/service/NetServiceManager;->instance:Lcom/lzx/iteam/service/NetServiceManager;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/lzx/iteam/service/NetServiceManager;

    invoke-direct {v0}, Lcom/lzx/iteam/service/NetServiceManager;-><init>()V

    sput-object v0, Lcom/lzx/iteam/service/NetServiceManager;->instance:Lcom/lzx/iteam/service/NetServiceManager;

    .line 154
    :cond_0
    sget-object v0, Lcom/lzx/iteam/service/NetServiceManager;->instance:Lcom/lzx/iteam/service/NetServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized Login()V
    .locals 10

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    const-string v5, "NetServiceManager"

    const-string v6, "Login\u5c1d\u8bd5\u767b\u9646"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget-object v5, Lcom/lzx/iteam/service/NetServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v5

    iput-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 252
    new-instance v5, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;

    invoke-direct {v5, p0}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;-><init>(Lcom/lzx/iteam/service/NetServiceManager;)V

    invoke-virtual {v5}, Lcom/lzx/iteam/service/NetServiceManager$LooperThread;->start()V

    .line 253
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v6, "contact_name_card"

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->mNameCard:Ljava/util/ArrayList;

    .line 254
    new-instance v5, Lcom/lzx/iteam/provider/MessageDB;

    sget-object v6, Lcom/lzx/iteam/service/NetServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/lzx/iteam/provider/MessageDB;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    .line 255
    new-instance v5, Lcom/lzx/iteam/provider/CloudDBOperation;

    sget-object v6, Lcom/lzx/iteam/service/NetServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 257
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->mLogining:Z

    .line 258
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->userid:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 260
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v6, "useid"

    const-string v7, "\uff0d1"

    invoke-virtual {v5, v6, v7}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->userid:Ljava/lang/String;

    .line 263
    :cond_0
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->userpwd:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 264
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v6, "user_pass"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/net/LocalLogin;->mPassWord:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->userpwd:Ljava/lang/String;

    .line 266
    :cond_1
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->servaddr:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 267
    const-string v5, "123.57.214.92"

    iput-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->servaddr:Ljava/lang/String;

    .line 270
    :cond_2
    iget-wide v6, p0, Lcom/lzx/iteam/service/NetServiceManager;->servport:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 271
    const-wide/16 v6, 0x1466

    iput-wide v6, p0, Lcom/lzx/iteam/service/NetServiceManager;->servport:J

    .line 274
    :cond_3
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->serverce:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 275
    const-string v5, ""

    iput-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->serverce:Ljava/lang/String;

    .line 278
    :cond_4
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->resource:Ljava/lang/String;

    if-nez v5, :cond_5

    .line 279
    const-string v5, "android"

    iput-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->resource:Ljava/lang/String;

    .line 282
    :cond_5
    sget-object v5, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    if-nez v5, :cond_6

    .line 285
    new-instance v0, Lorg/jivesoftware/smack/ConnectionConfiguration;

    .line 286
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->servaddr:Ljava/lang/String;

    iget-wide v6, p0, Lcom/lzx/iteam/service/NetServiceManager;->servport:J

    long-to-int v6, v6

    iget-object v7, p0, Lcom/lzx/iteam/service/NetServiceManager;->serverce:Ljava/lang/String;

    .line 285
    invoke-direct {v0, v5, v6, v7}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 288
    .local v0, "config":Lorg/jivesoftware/smack/ConnectionConfiguration;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setCompressionEnabled(Z)V

    .line 290
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setSASLAuthenticationEnabled(Z)V

    .line 292
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setSendPresence(Z)V

    .line 293
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setRosterLoadedAtLogin(Z)V

    .line 295
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setDebuggerEnabled(Z)V

    .line 296
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setReconnectionAllowed(Z)V

    .line 298
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setSendPresence(Z)V

    .line 300
    const/4 v5, 0x1

    sput-boolean v5, Lorg/jivesoftware/smack/XMPPConnection;->DEBUG_ENABLED:Z

    .line 302
    new-instance v5, Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {v5, v0}, Lorg/jivesoftware/smack/XMPPConnection;-><init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    sput-object v5, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    .line 306
    sget-object v5, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5, p0}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    .end local v0    # "config":Lorg/jivesoftware/smack/ConnectionConfiguration;
    :cond_6
    :try_start_1
    sget-object v5, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v5

    if-nez v5, :cond_7

    .line 310
    sget-object v5, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->connect()V
    :try_end_1
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    :cond_7
    :try_start_2
    sget-object v5, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v5, :cond_8

    sget-object v5, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v5, :cond_b

    sget-object v5, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 331
    :cond_8
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->mLogining:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    :cond_9
    :goto_0
    monitor-exit p0

    return-void

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Lorg/jivesoftware/smack/XMPPException;
    :try_start_3
    const-string v5, "NetServiceManager--"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Login \u767b\u9646\u5f02\u5e38-Exception="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->loginInterface:Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_a

    .line 316
    :try_start_4
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->loginInterface:Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;

    const/4 v6, -0x1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;->HandleLogin(ILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 321
    :cond_a
    :goto_1
    :try_start_5
    sget-object v5, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->disconnect()V

    .line 322
    const/4 v5, 0x0

    sput-object v5, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    .line 323
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    iput-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->tExit:Ljava/util/Timer;

    .line 324
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->tExit:Ljava/util/Timer;

    new-instance v6, Lcom/lzx/iteam/service/NetServiceManager$timeTask;

    invoke-direct {v6, p0}, Lcom/lzx/iteam/service/NetServiceManager$timeTask;-><init>(Lcom/lzx/iteam/service/NetServiceManager;)V

    iget v7, p0, Lcom/lzx/iteam/service/NetServiceManager;->loginTime:I

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 250
    .end local v1    # "e":Lorg/jivesoftware/smack/XMPPException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 333
    :cond_b
    :try_start_6
    sget-object v5, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v5

    if-nez v5, :cond_c

    .line 334
    const/4 v5, 0x0

    sput-object v5, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 336
    :try_start_7
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->loginInterface:Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;

    const/4 v6, -0x1

    const-string v7, "unconnected"

    invoke-interface {v5, v6, v7}, Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;->HandleLogin(ILjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_0

    .line 342
    :cond_c
    :try_start_8
    const-string v5, "NetServiceManager--username="

    iget-object v6, p0, Lcom/lzx/iteam/service/NetServiceManager;->userid:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v5, "NetServiceManager--userpwd="

    iget-object v6, p0, Lcom/lzx/iteam/service/NetServiceManager;->userpwd:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 345
    :try_start_9
    iget-object v4, p0, Lcom/lzx/iteam/service/NetServiceManager;->userid:Ljava/lang/String;

    .line 346
    .local v4, "loginname":Ljava/lang/String;
    new-instance v3, Lcom/lzx/iteam/util/MD5;

    invoke-direct {v3}, Lcom/lzx/iteam/util/MD5;-><init>()V

    .line 347
    .local v3, "getMD5":Lcom/lzx/iteam/util/MD5;
    const-string v5, "NetServiceManager--md5 userpwd="

    iget-object v6, p0, Lcom/lzx/iteam/service/NetServiceManager;->userpwd:Ljava/lang/String;

    invoke-static {v6}, Lcom/lzx/iteam/util/MD5;->GetMD5Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    sget-object v5, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v6, p0, Lcom/lzx/iteam/service/NetServiceManager;->userpwd:Ljava/lang/String;

    invoke-static {v6}, Lcom/lzx/iteam/util/MD5;->GetMD5Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/jivesoftware/smack/XMPPConnection;->login(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 384
    :try_start_a
    sget-object v5, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    if-nez v5, :cond_10

    .line 385
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->mLogining:Z

    goto/16 :goto_0

    .line 350
    .end local v3    # "getMD5":Lcom/lzx/iteam/util/MD5;
    .end local v4    # "loginname":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 351
    .restart local v1    # "e":Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "errormsg":Ljava/lang/String;
    const-string v5, "NetServiceManager--loginfailed"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v5, 0x0

    sput-object v5, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    .line 354
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_e

    .line 355
    :cond_d
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->loginInterface:Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v5, :cond_9

    .line 357
    :try_start_b
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->loginInterface:Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;

    const/4 v6, -0x1

    const-string v7, "loginfailed"

    invoke-interface {v5, v6, v7}, Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;->HandleLogin(ILjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    :catch_3
    move-exception v5

    goto/16 :goto_0

    .line 364
    :cond_e
    :try_start_c
    const-string v5, "SASL authentication"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 365
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->loginInterface:Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v5, :cond_9

    .line 367
    :try_start_d
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->loginInterface:Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;

    const/4 v6, -0x2

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;->HandleLogin(ILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 372
    :catch_4
    move-exception v5

    goto/16 :goto_0

    .line 373
    :cond_f
    :try_start_e
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->loginInterface:Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v5, :cond_9

    .line 375
    :try_start_f
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->loginInterface:Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;

    const/4 v6, -0x1

    const-string v7, "loginfailed"

    invoke-interface {v5, v6, v7}, Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;->HandleLogin(ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_0

    :catch_5
    move-exception v5

    goto/16 :goto_0

    .line 388
    .end local v1    # "e":Lorg/jivesoftware/smack/XMPPException;
    .end local v2    # "errormsg":Ljava/lang/String;
    .restart local v3    # "getMD5":Lcom/lzx/iteam/util/MD5;
    .restart local v4    # "loginname":Ljava/lang/String;
    :cond_10
    :try_start_10
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v5

    const-string v6, "query"

    .line 389
    const-string v7, "ituandui:iq:chat"

    .line 388
    invoke-virtual {v5, v6, v7, p0}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    sget-object v5, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->getChatManager()Lorg/jivesoftware/smack/ChatManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lorg/jivesoftware/smack/ChatManager;->addChatListener(Lorg/jivesoftware/smack/ChatManagerListener;)V

    .line 391
    invoke-virtual {p0}, Lcom/lzx/iteam/service/NetServiceManager;->setKeepAliveAlarmpi()V

    .line 392
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->loginInterface:Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v5, :cond_9

    .line 394
    :try_start_11
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->loginInterface:Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;->HandleLogin(ILjava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_0

    :catch_6
    move-exception v5

    goto/16 :goto_0

    .end local v3    # "getMD5":Lcom/lzx/iteam/util/MD5;
    .end local v4    # "loginname":Ljava/lang/String;
    .restart local v1    # "e":Lorg/jivesoftware/smack/XMPPException;
    :catch_7
    move-exception v5

    goto/16 :goto_1
.end method

.method cancelAliveAlarmpi()V
    .locals 3

    .prologue
    .line 937
    const-string v1, "NetServiceManager--"

    const-string v2, "cancelAliveAlarmpi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v1, p0, Lcom/lzx/iteam/service/NetServiceManager;->alarmpi:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 939
    sget-object v1, Lcom/lzx/iteam/service/NetServiceManager;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 940
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/lzx/iteam/service/NetServiceManager;->alarmpi:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 941
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lzx/iteam/service/NetServiceManager;->alarmpi:Landroid/app/PendingIntent;

    .line 943
    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_0
    return-void
.end method

.method public chatCreated(Lorg/jivesoftware/smack/Chat;Z)V
    .locals 3
    .param p1, "chat"    # Lorg/jivesoftware/smack/Chat;
    .param p2, "createdLocally"    # Z

    .prologue
    .line 591
    const-string v0, "NetServiceManager--"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chatCreated--createdLocally"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---chat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {p1, p0}, Lorg/jivesoftware/smack/Chat;->addMessageListener(Lorg/jivesoftware/smack/MessageListener;)V

    .line 593
    return-void
.end method

.method public connectionClosed()V
    .locals 4

    .prologue
    .line 597
    const-string v0, "NetServiceManager--"

    const-string v1, "connectionClosed\ufe63\u8fde\u63a5\u5173\u95ed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    sget-object v0, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->disconnect()V

    .line 601
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/service/NetServiceManager;->tExit:Ljava/util/Timer;

    .line 602
    iget-object v0, p0, Lcom/lzx/iteam/service/NetServiceManager;->tExit:Ljava/util/Timer;

    new-instance v1, Lcom/lzx/iteam/service/NetServiceManager$timeTask;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/service/NetServiceManager$timeTask;-><init>(Lcom/lzx/iteam/service/NetServiceManager;)V

    iget v2, p0, Lcom/lzx/iteam/service/NetServiceManager;->loginTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 604
    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 608
    const-string v0, "NetServiceManager--"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connectionClosedOnError-\u8fde\u63a5\u5173\u95ed\u5f02\u5e38-Exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stream:error (conflict)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 621
    return-void
.end method

.method public createUserChat(Ljava/lang/String;)Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;
    .locals 3
    .param p1, "gid"    # Ljava/lang/String;

    .prologue
    .line 407
    sget-object v2, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v2, :cond_1

    .line 408
    iget-object v2, p0, Lcom/lzx/iteam/service/NetServiceManager;->mapChatinfos:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;

    .line 409
    .local v0, "info":Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;
    if-nez v0, :cond_0

    .line 424
    sget-object v2, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getChatManager()Lorg/jivesoftware/smack/ChatManager;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lorg/jivesoftware/smack/ChatManager;->createChat(Ljava/lang/String;Lorg/jivesoftware/smack/MessageListener;)Lorg/jivesoftware/smack/Chat;

    move-result-object v1

    .line 425
    .local v1, "newChat":Lorg/jivesoftware/smack/Chat;
    new-instance v0, Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;

    .end local v0    # "info":Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;
    invoke-direct {v0, p0}, Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;-><init>(Lcom/lzx/iteam/service/NetServiceManager;)V

    .line 426
    .restart local v0    # "info":Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;
    iput-object v1, v0, Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;->chat:Lorg/jivesoftware/smack/Chat;

    .line 441
    iget-object v2, p0, Lcom/lzx/iteam/service/NetServiceManager;->mapChatinfos:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .end local v0    # "info":Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;
    .end local v1    # "newChat":Lorg/jivesoftware/smack/Chat;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLoginInterface()Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/lzx/iteam/service/NetServiceManager;->loginInterface:Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
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

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lzx/iteam/service/NetServiceManager;->tags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/CustomTokenIQ;
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 823
    const-string v8, "NetServiceManager--"

    const-string v9, "parseIQ"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    new-instance v0, Lorg/jivesoftware/smack/packet/CustomTokenIQ;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/CustomTokenIQ;-><init>()V

    .line 828
    .local v0, "customToken":Lorg/jivesoftware/smack/packet/CustomTokenIQ;
    const/4 v1, 0x0

    .line 830
    .local v1, "done":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 863
    return-object v0

    .line 833
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 839
    .local v4, "eventType":I
    const/4 v8, 0x2

    if-ne v4, v8, :cond_2

    .line 841
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 842
    .local v3, "elementName":Ljava/lang/String;
    const-string v8, "query"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 843
    const-string v8, ""

    const-string v9, "key"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 844
    .local v6, "key":Ljava/lang/String;
    const-string v8, ""

    const-string v9, "grp"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 846
    .local v5, "grp":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 847
    .local v7, "token":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->setKey(Ljava/lang/String;)V

    .line 848
    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->setGrp(Ljava/lang/String;)V

    .line 849
    invoke-virtual {v0, v7}, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->setToken(Ljava/lang/String;)V

    .line 850
    const/4 v1, 0x0

    .line 854
    goto :goto_0

    .line 834
    .end local v3    # "elementName":Ljava/lang/String;
    .end local v4    # "eventType":I
    .end local v5    # "grp":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "token":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 835
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    throw v2

    .line 854
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "eventType":I
    :cond_2
    const/4 v8, 0x3

    if-ne v4, v8, :cond_0

    .line 855
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 856
    .restart local v3    # "elementName":Ljava/lang/String;
    const-string v8, "query"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 858
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/service/NetServiceManager;->parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/CustomTokenIQ;

    move-result-object v0

    return-object v0
.end method

.method public processMessage(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 24
    .param p1, "chat"    # Lorg/jivesoftware/smack/Chat;
    .param p2, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .prologue
    .line 660
    const-string v3, "NetServiceManager--"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "processMessage---message~body=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smack/packet/Message;->getMt()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->mt:Ljava/lang/String;

    .line 662
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smack/packet/Message;->getMsgId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->msgId:Ljava/lang/String;

    .line 663
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smack/packet/Message;->getTag()Ljava/lang/String;

    move-result-object v23

    .line 664
    .local v23, "tag":Ljava/lang/String;
    const/16 v18, 0x0

    .line 665
    .local v18, "confirm":Z
    const/4 v2, 0x0

    .line 666
    .local v2, "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 687
    :cond_1
    :goto_0
    if-eqz v18, :cond_4

    .line 688
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->mt:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 702
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getChatGroupID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/lzx/iteam/provider/CloudDBOperation;->updateChatMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;Ljava/lang/String;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    if-eqz v3, :cond_2

    .line 704
    const-string v3, "ChatService"

    const-string v4, "success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getChatGroupID()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/service/NetServiceManager;->sendTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/lzx/iteam/provider/MessageDB;->updateMessageStatus(Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    .line 758
    :cond_2
    :goto_2
    return-void

    .line 666
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    .line 667
    .local v21, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 668
    const/16 v18, 0x1

    .line 669
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/jivesoftware/smack/packet/Message;

    .line 670
    .local v22, "message1":Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual/range {v22 .. v22}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    .line 671
    invoke-virtual/range {v22 .. v22}, Lorg/jivesoftware/smack/packet/Message;->getTo()Ljava/lang/String;

    .line 672
    invoke-virtual/range {v22 .. v22}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->msgBody:Ljava/lang/String;

    .line 673
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smack/packet/Message;->getChgrpid()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->chgrpId:Ljava/lang/String;

    .line 674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->userid:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderId:Ljava/lang/String;

    .line 675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->mNameCard:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderName:Ljava/lang/String;

    .line 676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->mNameCard:Ljava/util/ArrayList;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderAvatar:Ljava/lang/String;

    .line 677
    invoke-virtual/range {v22 .. v22}, Lorg/jivesoftware/smack/packet/Message;->getTime()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->sendTime:Ljava/lang/String;

    .line 679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->tags:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 681
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 682
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    check-cast v2, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 684
    .restart local v2    # "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    goto/16 :goto_0

    .line 690
    .end local v21    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v22    # "message1":Lorg/jivesoftware/smack/packet/Message;
    :pswitch_0
    new-instance v2, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .end local v2    # "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->mt:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/service/NetServiceManager;->sendTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/service/NetServiceManager;->msgId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderAvatar:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lzx/iteam/service/NetServiceManager;->chgrpId:Ljava/lang/String;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/service/NetServiceManager;->msgBody:Ljava/lang/String;

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const/16 v17, 0x1

    invoke-direct/range {v2 .. v17}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 691
    .restart local v2    # "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    sget-object v3, Lcom/lzx/iteam/service/ChatService;->instance:Lcom/lzx/iteam/service/ChatService;

    invoke-virtual {v3, v2}, Lcom/lzx/iteam/service/ChatService;->notifyPage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    goto/16 :goto_1

    .line 694
    :pswitch_1
    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->setMsgType(I)V

    .line 695
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->msgId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->setMsgID(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 698
    :pswitch_2
    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->setMsgType(I)V

    .line 699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->msgId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->setMsgID(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 712
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v19

    .line 713
    .local v19, "from":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smack/packet/Message;->getTo()Ljava/lang/String;

    .line 714
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->msgBody:Ljava/lang/String;

    .line 715
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smack/packet/Message;->getMsgId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->msgId:Ljava/lang/String;

    .line 716
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smack/packet/Message;->getChgrpid()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->chgrpId:Ljava/lang/String;

    .line 717
    const-string v3, "@"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderId:Ljava/lang/String;

    .line 718
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smack/packet/Message;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderName:Ljava/lang/String;

    .line 719
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smack/packet/Message;->getTime()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->sendTime:Ljava/lang/String;

    .line 721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->mt:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 756
    :goto_3
    sget-object v3, Lcom/lzx/iteam/service/ChatService;->instance:Lcom/lzx/iteam/service/ChatService;

    invoke-virtual {v3, v2}, Lcom/lzx/iteam/service/ChatService;->handleReceiveMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    goto/16 :goto_2

    .line 723
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/provider/CloudDBOperation;->findUserMsgById(Ljava/lang/String;)Lcom/lzx/iteam/bean/ChatContact;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/bean/ChatContact;->userId:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 724
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/provider/CloudDBOperation;->findUserMsgById(Ljava/lang/String;)Lcom/lzx/iteam/bean/ChatContact;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/bean/ChatContact;->userImg:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderAvatar:Ljava/lang/String;

    .line 725
    new-instance v2, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .end local v2    # "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->mt:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/service/NetServiceManager;->msgBody:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/service/NetServiceManager;->sendTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/service/NetServiceManager;->msgId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderAvatar:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lzx/iteam/service/NetServiceManager;->chgrpId:Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/service/NetServiceManager;->msgBody:Ljava/lang/String;

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const/16 v17, 0x1

    invoke-direct/range {v2 .. v17}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 727
    .restart local v2    # "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    goto :goto_3

    .line 728
    :cond_5
    new-instance v3, Lcom/lzx/iteam/service/NetServiceManager$GetChatGroupInfo;

    sget-object v4, Lcom/lzx/iteam/service/NetServiceManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/service/NetServiceManager;->chgrpId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Lcom/lzx/iteam/service/NetServiceManager$GetChatGroupInfo;-><init>(Lcom/lzx/iteam/service/NetServiceManager;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/service/NetServiceManager$GetChatGroupInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    .line 733
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/service/NetServiceManager;->msgBody:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?imageView2/0/w/100/h/100"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->thumbnails:Ljava/lang/String;

    .line 734
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/provider/CloudDBOperation;->findUserMsgById(Ljava/lang/String;)Lcom/lzx/iteam/bean/ChatContact;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/bean/ChatContact;->userId:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 735
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/provider/CloudDBOperation;->findUserMsgById(Ljava/lang/String;)Lcom/lzx/iteam/bean/ChatContact;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/bean/ChatContact;->userImg:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderAvatar:Ljava/lang/String;

    .line 736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->thumbnails:Ljava/lang/String;

    invoke-static {v3}, Lcom/lzx/iteam/task/DownloadImageTask;->loadImageFromNetwork(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v20

    .line 737
    .local v20, "imageBitmap":Landroid/graphics/Bitmap;
    const-string v3, "/Yun/Images/Thumbnails/"

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/lzx/iteam/util/PhotoUtil;->saveBitmaptoSdCard(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->imagePath:Ljava/lang/String;

    .line 738
    new-instance v2, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .end local v2    # "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->mt:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/service/NetServiceManager;->msgBody:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/service/NetServiceManager;->sendTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/service/NetServiceManager;->msgId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderAvatar:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lzx/iteam/service/NetServiceManager;->chgrpId:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, ""

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/service/NetServiceManager;->msgBody:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/service/NetServiceManager;->imagePath:Ljava/lang/String;

    const-string v15, ""

    const-string v16, ""

    const/16 v17, 0x1

    invoke-direct/range {v2 .. v17}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 739
    .restart local v2    # "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    goto/16 :goto_3

    .line 740
    .end local v20    # "imageBitmap":Landroid/graphics/Bitmap;
    :cond_6
    new-instance v3, Lcom/lzx/iteam/service/NetServiceManager$GetChatGroupInfo;

    sget-object v4, Lcom/lzx/iteam/service/NetServiceManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/service/NetServiceManager;->chgrpId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Lcom/lzx/iteam/service/NetServiceManager$GetChatGroupInfo;-><init>(Lcom/lzx/iteam/service/NetServiceManager;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/service/NetServiceManager$GetChatGroupInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_3

    .line 745
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smack/packet/Message;->getDuration()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->duration:Ljava/lang/String;

    .line 746
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->msgBody:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "tuandui@lzx"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/service/NetServiceManager;->duration:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->msgBody:Ljava/lang/String;

    .line 747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/provider/CloudDBOperation;->findUserMsgById(Ljava/lang/String;)Lcom/lzx/iteam/bean/ChatContact;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/bean/ChatContact;->userId:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 748
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/provider/CloudDBOperation;->findUserMsgById(Ljava/lang/String;)Lcom/lzx/iteam/bean/ChatContact;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/bean/ChatContact;->userImg:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderAvatar:Ljava/lang/String;

    .line 749
    new-instance v2, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .end local v2    # "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/service/NetServiceManager;->mt:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/service/NetServiceManager;->msgBody:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/service/NetServiceManager;->sendTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/service/NetServiceManager;->msgId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lzx/iteam/service/NetServiceManager;->senderAvatar:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lzx/iteam/service/NetServiceManager;->chgrpId:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/service/NetServiceManager;->msgBody:Ljava/lang/String;

    const-string v16, ""

    const/16 v17, 0x1

    invoke-direct/range {v2 .. v17}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 750
    .restart local v2    # "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    goto/16 :goto_3

    .line 751
    :cond_7
    new-instance v3, Lcom/lzx/iteam/service/NetServiceManager$GetChatGroupInfo;

    sget-object v4, Lcom/lzx/iteam/service/NetServiceManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/service/NetServiceManager;->chgrpId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Lcom/lzx/iteam/service/NetServiceManager$GetChatGroupInfo;-><init>(Lcom/lzx/iteam/service/NetServiceManager;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/lzx/iteam/service/NetServiceManager$GetChatGroupInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_3

    .line 688
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 721
    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public reconnectingIn(I)V
    .locals 3
    .param p1, "seconds"    # I

    .prologue
    .line 625
    const-string v0, "NetServiceManager--"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reconnectingIn--seconds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    return-void
.end method

.method public reconnectionFailed(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 647
    const-string v0, "NetServiceManager--"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reconnectionFailed--Exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/service/NetServiceManager;->mLogining:Z

    .line 650
    :try_start_0
    iget-object v0, p0, Lcom/lzx/iteam/service/NetServiceManager;->loginInterface:Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/lzx/iteam/service/NetServiceManager;->loginInterface:Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;->HandleLogin(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reconnectionSuccessful()V
    .locals 3

    .prologue
    .line 631
    const-string v0, "NetServiceManager--"

    const-string v1, "reconnectionSuccessful"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/service/NetServiceManager;->mLogining:Z

    .line 633
    const-string v0, "reconnectionSuccessful"

    const-string v1, "reconnectionSuccessful"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :try_start_0
    iget-object v0, p0, Lcom/lzx/iteam/service/NetServiceManager;->loginInterface:Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/lzx/iteam/service/NetServiceManager;->loginInterface:Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;->HandleLogin(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeChatListener()V
    .locals 1

    .prologue
    .line 403
    sget-object v0, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getChatManager()Lorg/jivesoftware/smack/ChatManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/ChatManager;->removeChatListener(Lorg/jivesoftware/smack/ChatManagerListener;)V

    .line 404
    return-void
.end method

.method public sendIQ(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/CustomTokenIQ;
    .locals 7
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "chgrpId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 788
    const-string v4, "NetServiceManager--"

    const-string v5, "sendIQ"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v4, p0, Lcom/lzx/iteam/service/NetServiceManager;->tags:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    sget-object v4, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 791
    new-instance v1, Lorg/jivesoftware/smack/packet/CustomTokenIQ;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/CustomTokenIQ;-><init>()V

    .line 792
    .local v1, "iq":Lorg/jivesoftware/smack/packet/CustomTokenIQ;
    const-string v4, "ituandui.cn"

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->setTo(Ljava/lang/String;)V

    .line 793
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->setUuid(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->setGrpId(Ljava/lang/String;)V

    .line 796
    sget-object v4, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    .line 797
    new-instance v5, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 798
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->getPacketID()Ljava/lang/String;

    move-result-object v6

    .line 797
    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/XMPPConnection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 799
    .local v0, "collector":Lorg/jivesoftware/smack/PacketCollector;
    sget-object v4, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 802
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v4

    int-to-long v4, v4

    .line 801
    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/CustomTokenIQ;

    .line 803
    .local v2, "ret":Lorg/jivesoftware/smack/packet/CustomTokenIQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 804
    if-nez v2, :cond_1

    move-object v2, v3

    .line 814
    .end local v0    # "collector":Lorg/jivesoftware/smack/PacketCollector;
    .end local v1    # "iq":Lorg/jivesoftware/smack/packet/CustomTokenIQ;
    .end local v2    # "ret":Lorg/jivesoftware/smack/packet/CustomTokenIQ;
    :cond_0
    :goto_0
    return-object v2

    .line 808
    .restart local v0    # "collector":Lorg/jivesoftware/smack/PacketCollector;
    .restart local v1    # "iq":Lorg/jivesoftware/smack/packet/CustomTokenIQ;
    .restart local v2    # "ret":Lorg/jivesoftware/smack/packet/CustomTokenIQ;
    :cond_1
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/CustomTokenIQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v4, v5, :cond_0

    move-object v2, v3

    .line 809
    goto :goto_0

    .end local v0    # "collector":Lorg/jivesoftware/smack/PacketCollector;
    .end local v1    # "iq":Lorg/jivesoftware/smack/packet/CustomTokenIQ;
    .end local v2    # "ret":Lorg/jivesoftware/smack/packet/CustomTokenIQ;
    :cond_2
    move-object v2, v3

    .line 814
    goto :goto_0
.end method

.method public sendImageMessage(Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Z
    .locals 7
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "chatMoreMsg"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .prologue
    const/4 v3, 0x0

    .line 549
    const-string v4, "NetServiceManager--sendImageMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "---conn="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    sget-object v4, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 551
    iget-object v4, p0, Lcom/lzx/iteam/service/NetServiceManager;->mapChatinfos:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getChatGroupID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;

    .line 552
    .local v0, "info":Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;
    if-nez v0, :cond_0

    .line 553
    invoke-virtual {p3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getChatGroupID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/service/NetServiceManager;->createUserChat(Ljava/lang/String;)Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;

    move-result-object v0

    .line 555
    :cond_0
    new-instance v2, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 557
    .local v2, "newMessage":Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v2, p2}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    .line 558
    sget-object v4, Lorg/jivesoftware/smack/packet/Message$Type;->chat:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 559
    const-string v4, "103"

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Message;->setMt(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSenderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Message;->setName(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smack/packet/Message;->setTag(Ljava/lang/String;)V

    .line 563
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getChatGroupID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "@ituandui.cn"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 568
    :try_start_0
    iget-object v4, v0, Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;->chat:Lorg/jivesoftware/smack/Chat;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/Chat;->sendMessage(Lorg/jivesoftware/smack/packet/Message;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 574
    .local v1, "message":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSendTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/Message;->setTime(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-object v3, p0, Lcom/lzx/iteam/service/NetServiceManager;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    sget-object v3, Lcom/lzx/iteam/MainActivity;->mActivity:Lcom/lzx/iteam/MainActivity;

    const-string v4, "send_message"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 579
    const-string v3, "NetServiceManager--sendImageMessage"

    const-string v4, "---true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v3, 0x1

    .line 583
    .end local v0    # "info":Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;
    .end local v1    # "message":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "newMessage":Lorg/jivesoftware/smack/packet/Message;
    :goto_0
    return v3

    .line 570
    .restart local v0    # "info":Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;
    .restart local v2    # "newMessage":Lorg/jivesoftware/smack/packet/Message;
    :catch_0
    move-exception v4

    const-string v4, "NetServiceManager--sendImageMessage"

    const-string v5, "---false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 582
    .end local v0    # "info":Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;
    .end local v2    # "newMessage":Lorg/jivesoftware/smack/packet/Message;
    :cond_1
    const-string v4, "NetServiceManager--sendImageMessage"

    const-string v5, "---false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendPing()V
    .locals 4

    .prologue
    .line 915
    sget-object v1, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 916
    new-instance v0, Lorg/jivesoftware/smack/packet/PingIQ;

    const-string v1, "ituandui.cn"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/PingIQ;-><init>(Ljava/lang/String;)V

    .line 917
    .local v0, "ping":Lorg/jivesoftware/smack/packet/PingIQ;
    sget-object v1, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    .line 918
    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    .line 919
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/PingIQ;->getPacketID()Ljava/lang/String;

    move-result-object v3

    .line 918
    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/XMPPConnection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    .line 921
    sget-object v1, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 933
    .end local v0    # "ping":Lorg/jivesoftware/smack/packet/PingIQ;
    :cond_0
    return-void
.end method

.method public sendSoundMessage(Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Z
    .locals 8
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "chatMoreMsg"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 507
    const-string v5, "NetServiceManager--sendSoundMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "---conn="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    sget-object v5, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 509
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->mapChatinfos:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getChatGroupID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;

    .line 510
    .local v0, "info":Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;
    if-nez v0, :cond_0

    .line 511
    invoke-virtual {p3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getChatGroupID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lzx/iteam/service/NetServiceManager;->createUserChat(Ljava/lang/String;)Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;

    move-result-object v0

    .line 513
    :cond_0
    new-instance v2, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 515
    .local v2, "newMessage":Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v2, p2}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    .line 516
    sget-object v5, Lorg/jivesoftware/smack/packet/Message$Type;->chat:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {v2, v5}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 517
    const-string v5, "102"

    invoke-virtual {v2, v5}, Lorg/jivesoftware/smack/packet/Message;->setMt(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getVoiceContent()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tuandui@lzx"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v2, v5}, Lorg/jivesoftware/smack/packet/Message;->setDuration(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSenderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/jivesoftware/smack/packet/Message;->setName(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smack/packet/Message;->setTag(Ljava/lang/String;)V

    .line 522
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getChatGroupID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "@ituandui.cn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 527
    :try_start_0
    iget-object v5, v0, Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;->chat:Lorg/jivesoftware/smack/Chat;

    invoke-virtual {v5, v2}, Lorg/jivesoftware/smack/Chat;->sendMessage(Lorg/jivesoftware/smack/packet/Message;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 533
    .local v1, "message":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p3}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSendTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Message;->setTime(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    iget-object v4, p0, Lcom/lzx/iteam/service/NetServiceManager;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    sget-object v4, Lcom/lzx/iteam/MainActivity;->mActivity:Lcom/lzx/iteam/MainActivity;

    const-string v5, "send_message"

    invoke-static {v4, v5}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 538
    const-string v4, "NetServiceManager--sendSoundMessage"

    const-string v5, "---true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    .end local v0    # "info":Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;
    .end local v1    # "message":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "newMessage":Lorg/jivesoftware/smack/packet/Message;
    :goto_0
    return v3

    .line 529
    .restart local v0    # "info":Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;
    .restart local v2    # "newMessage":Lorg/jivesoftware/smack/packet/Message;
    :catch_0
    move-exception v3

    const-string v3, "NetServiceManager--sendSoundMessage"

    const-string v5, "---false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 530
    goto :goto_0

    .line 541
    .end local v0    # "info":Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;
    .end local v2    # "newMessage":Lorg/jivesoftware/smack/packet/Message;
    :cond_1
    const-string v3, "NetServiceManager--sendSoundMessage"

    const-string v5, "---false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 542
    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Z
    .locals 8
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "chatMoreMsg"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .prologue
    const/4 v4, 0x0

    .line 451
    const-string v5, "NetServiceManager--sendTextMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "---conn="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->tags:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    sget-object v5, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/lzx/iteam/service/NetServiceManager;->conn:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 454
    iget-object v5, p0, Lcom/lzx/iteam/service/NetServiceManager;->mapChatinfos:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getChatGroupID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;

    .line 455
    .local v1, "info":Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;
    if-nez v1, :cond_0

    .line 456
    invoke-virtual {p2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getChatGroupID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lzx/iteam/service/NetServiceManager;->createUserChat(Ljava/lang/String;)Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;

    move-result-object v1

    .line 458
    :cond_0
    new-instance v3, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v3}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 460
    .local v3, "newMessage":Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {p2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    .line 461
    sget-object v5, Lorg/jivesoftware/smack/packet/Message$Type;->chat:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 462
    const-string v5, "101"

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smack/packet/Message;->setMt(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSenderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smack/packet/Message;->setName(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v3, p1}, Lorg/jivesoftware/smack/packet/Message;->setTag(Ljava/lang/String;)V

    .line 465
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getChatGroupID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "@ituandui.cn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 470
    :try_start_0
    iget-object v5, v1, Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;->chat:Lorg/jivesoftware/smack/Chat;

    invoke-virtual {v5, v3}, Lorg/jivesoftware/smack/Chat;->sendMessage(Lorg/jivesoftware/smack/packet/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 485
    .local v2, "message":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSendTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/packet/Message;->setTime(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v4, p0, Lcom/lzx/iteam/service/NetServiceManager;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    sget-object v4, Lcom/lzx/iteam/MainActivity;->mActivity:Lcom/lzx/iteam/MainActivity;

    const-string v5, "send_message"

    invoke-static {v4, v5}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 489
    const-string v4, "NetServiceManager--sendTextMessage"

    const-string v5, "---true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v4, 0x1

    .line 501
    .end local v1    # "info":Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;
    .end local v2    # "message":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "newMessage":Lorg/jivesoftware/smack/packet/Message;
    :cond_1
    :goto_0
    return v4

    .line 471
    .restart local v1    # "info":Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;
    .restart local v3    # "newMessage":Lorg/jivesoftware/smack/packet/Message;
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "NetServiceManager--sendTextMessage-Exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v5, "NetServiceManager--sendTextMessage"

    const-string v6, "---false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    sget-object v5, Lcom/lzx/iteam/DialerApp;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lzx/iteam/util/NetworkUtil;->checkNetwork(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 475
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/lzx/iteam/service/NetServiceManager$3;

    invoke-direct {v6, p0}, Lcom/lzx/iteam/service/NetServiceManager$3;-><init>(Lcom/lzx/iteam/service/NetServiceManager;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 480
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 492
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "info":Lcom/lzx/iteam/service/NetServiceManager$CHATINFO;
    .end local v3    # "newMessage":Lorg/jivesoftware/smack/packet/Message;
    :cond_2
    sget-object v5, Lcom/lzx/iteam/DialerApp;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lzx/iteam/util/NetworkUtil;->checkNetwork(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 493
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/lzx/iteam/service/NetServiceManager$4;

    invoke-direct {v6, p0}, Lcom/lzx/iteam/service/NetServiceManager$4;-><init>(Lcom/lzx/iteam/service/NetServiceManager;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 498
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 500
    :cond_3
    const-string v5, "NetServiceManager--sendTextMessage"

    const-string v6, "---false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setKeepAliveAlarmpi()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 878
    const-string v2, "NetServiceManager--"

    const-string v3, "setKeepAliveAlarmpi"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-virtual {p0}, Lcom/lzx/iteam/service/NetServiceManager;->cancelAliveAlarmpi()V

    .line 882
    iget-object v2, p0, Lcom/lzx/iteam/service/NetServiceManager;->alarmpi:Landroid/app/PendingIntent;

    if-nez v2, :cond_0

    .line 883
    const-string v2, "NetServiceManager-- "

    const-string v3, "setKeepAliveAlarmpi--alarmpi=null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    new-instance v7, Landroid/content/Intent;

    const-string v2, "keepalive"

    const/4 v3, 0x0

    sget-object v4, Lcom/lzx/iteam/service/NetServiceManager;->mContext:Landroid/content/Context;

    const-class v5, Lcom/lzx/iteam/service/NetPingManager;

    invoke-direct {v7, v2, v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 885
    .local v7, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/lzx/iteam/service/NetServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/service/NetServiceManager;->alarmpi:Landroid/app/PendingIntent;

    .line 886
    sget-object v2, Lcom/lzx/iteam/service/NetServiceManager;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 888
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x30d40

    iget-object v6, p0, Lcom/lzx/iteam/service/NetServiceManager;->alarmpi:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 912
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setLoginInterface(Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;)V
    .locals 0
    .param p1, "loginInterface"    # Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/lzx/iteam/service/NetServiceManager;->loginInterface:Lcom/lzx/iteam/service/aidl/ChatLoginResultInterface;

    .line 239
    return-void
.end method
