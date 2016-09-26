.class public Lorg/jivesoftware/smack/BOSHConnection;
.super Lorg/jivesoftware/smack/Connection;
.source "BOSHConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;,
        Lorg/jivesoftware/smack/BOSHConnection$ListenerNotification;
    }
.end annotation


# static fields
.field public static final BOSH_URI:Ljava/lang/String; = "http://jabber.org/protocol/httpbind"

.field public static final XMPP_BOSH_NS:Ljava/lang/String; = "urn:xmpp:xbosh"


# instance fields
.field private anonymous:Z

.field protected authID:Ljava/lang/String;

.field private authenticated:Z

.field private client:Lcom/kenai/jbosh/BOSHClient;

.field private final config:Lorg/jivesoftware/smack/BOSHConfiguration;

.field private connected:Z

.field private done:Z

.field private isFirstInitialization:Z

.field private listenerExecutor:Ljava/util/concurrent/ExecutorService;

.field private readerConsumer:Ljava/lang/Thread;

.field private readerPipe:Ljava/io/PipedWriter;

.field private roster:Lorg/jivesoftware/smack/Roster;

.field protected sessionID:Ljava/lang/String;

.field private user:Ljava/lang/String;

.field private wasAuthenticated:Z


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/BOSHConfiguration;)V
    .locals 3
    .param p1, "config"    # Lorg/jivesoftware/smack/BOSHConfiguration;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Connection;-><init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    .line 83
    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->connected:Z

    .line 84
    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->authenticated:Z

    .line 85
    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->anonymous:Z

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->isFirstInitialization:Z

    .line 87
    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->wasAuthenticated:Z

    .line 88
    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->done:Z

    .line 102
    iput-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->authID:Ljava/lang/String;

    .line 107
    iput-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->sessionID:Ljava/lang/String;

    .line 112
    iput-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->user:Ljava/lang/String;

    .line 117
    iput-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    .line 146
    iput-object p1, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    .line 147
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "https"    # Z
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "xmppDomain"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 135
    new-instance v0, Lorg/jivesoftware/smack/BOSHConfiguration;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/BOSHConfiguration;-><init>(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/Connection;-><init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    .line 83
    iput-boolean v6, p0, Lorg/jivesoftware/smack/BOSHConnection;->connected:Z

    .line 84
    iput-boolean v6, p0, Lorg/jivesoftware/smack/BOSHConnection;->authenticated:Z

    .line 85
    iput-boolean v6, p0, Lorg/jivesoftware/smack/BOSHConnection;->anonymous:Z

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->isFirstInitialization:Z

    .line 87
    iput-boolean v6, p0, Lorg/jivesoftware/smack/BOSHConnection;->wasAuthenticated:Z

    .line 88
    iput-boolean v6, p0, Lorg/jivesoftware/smack/BOSHConnection;->done:Z

    .line 102
    iput-object v7, p0, Lorg/jivesoftware/smack/BOSHConnection;->authID:Ljava/lang/String;

    .line 107
    iput-object v7, p0, Lorg/jivesoftware/smack/BOSHConnection;->sessionID:Ljava/lang/String;

    .line 112
    iput-object v7, p0, Lorg/jivesoftware/smack/BOSHConnection;->user:Ljava/lang/String;

    .line 117
    iput-object v7, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    .line 136
    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->getConfiguration()Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/BOSHConfiguration;

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    .line 137
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smack/BOSHConnection;Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lorg/jivesoftware/smack/BOSHConnection;->connected:Z

    return-void
.end method

.method static synthetic access$1(Lorg/jivesoftware/smack/BOSHConnection;)Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->isFirstInitialization:Z

    return v0
.end method

.method static synthetic access$2(Lorg/jivesoftware/smack/BOSHConnection;Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lorg/jivesoftware/smack/BOSHConnection;->isFirstInitialization:Z

    return-void
.end method

.method static synthetic access$3(Lorg/jivesoftware/smack/BOSHConnection;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->wasAuthenticated:Z

    return v0
.end method

.method static synthetic access$4(Lorg/jivesoftware/smack/BOSHConnection;)Lorg/jivesoftware/smack/BOSHConfiguration;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    return-object v0
.end method

.method static synthetic access$5(Lorg/jivesoftware/smack/BOSHConnection;)Ljava/io/PipedWriter;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->readerPipe:Ljava/io/PipedWriter;

    return-object v0
.end method

.method static synthetic access$6(Lorg/jivesoftware/smack/BOSHConnection;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->readerConsumer:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$7(Lorg/jivesoftware/smack/BOSHConnection;)Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->done:Z

    return v0
.end method

.method private setWasAuthenticated(Z)V
    .locals 1
    .param p1, "wasAuthenticated"    # Z

    .prologue
    .line 534
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->wasAuthenticated:Z

    if-nez v0, :cond_0

    .line 535
    iput-boolean p1, p0, Lorg/jivesoftware/smack/BOSHConnection;->wasAuthenticated:Z

    .line 537
    :cond_0
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 150
    iget-boolean v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->connected:Z

    if-eqz v5, :cond_0

    .line 151
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Already connected to a server."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 153
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->done:Z

    .line 156
    :try_start_0
    iget-object v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->client:Lcom/kenai/jbosh/BOSHClient;

    if-eqz v5, :cond_1

    .line 157
    iget-object v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->client:Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v5}, Lcom/kenai/jbosh/BOSHClient;->close()V

    .line 158
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->client:Lcom/kenai/jbosh/BOSHClient;

    .line 160
    :cond_1
    iget-object v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/SASLAuthentication;->init()V

    .line 161
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->sessionID:Ljava/lang/String;

    .line 162
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->authID:Ljava/lang/String;

    .line 166
    iget-object v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/BOSHConfiguration;->getURI()Ljava/net/URI;

    move-result-object v5

    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/BOSHConfiguration;->getServiceName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->create(Ljava/net/URI;Ljava/lang/String;)Lcom/kenai/jbosh/BOSHClientConfig$Builder;

    move-result-object v0

    .line 167
    .local v0, "cfgBuilder":Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    iget-object v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/BOSHConfiguration;->isProxyEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 168
    iget-object v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/BOSHConfiguration;->getProxyAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/BOSHConfiguration;->getProxyPort()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->setProxy(Ljava/lang/String;I)Lcom/kenai/jbosh/BOSHClientConfig$Builder;

    .line 170
    :cond_2
    invoke-virtual {v0}, Lcom/kenai/jbosh/BOSHClientConfig$Builder;->build()Lcom/kenai/jbosh/BOSHClientConfig;

    move-result-object v5

    invoke-static {v5}, Lcom/kenai/jbosh/BOSHClient;->create(Lcom/kenai/jbosh/BOSHClientConfig;)Lcom/kenai/jbosh/BOSHClient;

    move-result-object v5

    iput-object v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->client:Lcom/kenai/jbosh/BOSHClient;

    .line 175
    new-instance v5, Lorg/jivesoftware/smack/BOSHConnection$1;

    invoke-direct {v5, p0}, Lorg/jivesoftware/smack/BOSHConnection$1;-><init>(Lorg/jivesoftware/smack/BOSHConnection;)V

    invoke-static {v5}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    .line 174
    iput-object v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    .line 184
    iget-object v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->client:Lcom/kenai/jbosh/BOSHClient;

    new-instance v6, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;

    invoke-direct {v6, p0, p0}, Lorg/jivesoftware/smack/BOSHConnection$BOSHConnectionListener;-><init>(Lorg/jivesoftware/smack/BOSHConnection;Lorg/jivesoftware/smack/BOSHConnection;)V

    invoke-virtual {v5, v6}, Lcom/kenai/jbosh/BOSHClient;->addBOSHClientConnListener(Lcom/kenai/jbosh/BOSHClientConnListener;)V

    .line 185
    iget-object v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->client:Lcom/kenai/jbosh/BOSHClient;

    new-instance v6, Lorg/jivesoftware/smack/BOSHPacketReader;

    invoke-direct {v6, p0}, Lorg/jivesoftware/smack/BOSHPacketReader;-><init>(Lorg/jivesoftware/smack/BOSHConnection;)V

    invoke-virtual {v5, v6}, Lcom/kenai/jbosh/BOSHClient;->addBOSHClientResponseListener(Lcom/kenai/jbosh/BOSHClientResponseListener;)V

    .line 188
    iget-object v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/BOSHConfiguration;->isDebuggerEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 189
    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->initDebugger()V

    .line 190
    iget-boolean v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->isFirstInitialization:Z

    if-eqz v5, :cond_4

    .line 191
    iget-object v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v5}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->getReaderListener()Lorg/jivesoftware/smack/PacketListener;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 192
    iget-object v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v5}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->getReaderListener()Lorg/jivesoftware/smack/PacketListener;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/jivesoftware/smack/BOSHConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 194
    :cond_3
    iget-object v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v5}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->getWriterListener()Lorg/jivesoftware/smack/PacketListener;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 195
    iget-object v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v5}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->getWriterListener()Lorg/jivesoftware/smack/PacketListener;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/jivesoftware/smack/BOSHConnection;->addPacketSendingListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 201
    :cond_4
    iget-object v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->client:Lcom/kenai/jbosh/BOSHClient;

    invoke-static {}, Lcom/kenai/jbosh/ComposableBody;->builder()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v6

    .line 202
    const-string v7, "xmpp"

    const-string v8, "urn:xmpp:xbosh"

    invoke-virtual {v6, v7, v8}, Lcom/kenai/jbosh/ComposableBody$Builder;->setNamespaceDefinition(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v6

    .line 203
    const-string v7, "urn:xmpp:xbosh"

    const-string v8, "version"

    const-string v9, "xmpp"

    invoke-static {v7, v8, v9}, Lcom/kenai/jbosh/BodyQName;->createWithPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v7

    const-string v8, "1.0"

    invoke-virtual {v6, v7, v8}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v6

    .line 204
    invoke-virtual {v6}, Lcom/kenai/jbosh/ComposableBody$Builder;->build()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v6

    .line 201
    invoke-virtual {v5, v6}, Lcom/kenai/jbosh/BOSHClient;->send(Lcom/kenai/jbosh/ComposableBody;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    monitor-enter p0

    .line 211
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 212
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v5

    mul-int/lit8 v5, v5, 0x6

    int-to-long v8, v5

    .line 211
    add-long v2, v6, v8

    .line 213
    .local v2, "endTime":J
    :goto_0
    iget-boolean v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->connected:Z

    if-nez v5, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-ltz v5, :cond_6

    .line 210
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    iget-boolean v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->connected:Z

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->done:Z

    if-nez v5, :cond_7

    .line 223
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/jivesoftware/smack/BOSHConnection;->done:Z

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Timeout reached for the connection to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->getPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 224
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "errorMessage":Ljava/lang/String;
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    .line 228
    new-instance v6, Lorg/jivesoftware/smack/packet/XMPPError;

    sget-object v7, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->remote_server_timeout:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v6, v7, v4}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V

    .line 226
    invoke-direct {v5, v4, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v5

    .line 205
    .end local v0    # "cfgBuilder":Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    .end local v2    # "endTime":J
    .end local v4    # "errorMessage":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/jivesoftware/smack/XMPPException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Can\'t connect to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->getServiceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 215
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cfgBuilder":Lcom/kenai/jbosh/BOSHClientConfig$Builder;
    .restart local v2    # "endTime":J
    :cond_6
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_0

    .line 210
    .end local v2    # "endTime":J
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 230
    .restart local v2    # "endTime":J
    :cond_7
    return-void
.end method

.method public disconnect(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 4
    .param p1, "unavailablePresence"    # Lorg/jivesoftware/smack/packet/Presence;

    .prologue
    .line 446
    iget-boolean v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->connected:Z

    if-nez v2, :cond_1

    .line 466
    :cond_0
    return-void

    .line 449
    :cond_1
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/BOSHConnection;->shutdown(Lorg/jivesoftware/smack/packet/Presence;)V

    .line 452
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->wasAuthenticated:Z

    .line 453
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->isFirstInitialization:Z

    .line 456
    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->getConnectionListeners()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/ConnectionListener;

    .line 458
    .local v1, "listener":Lorg/jivesoftware/smack/ConnectionListener;
    :try_start_0
    invoke-interface {v1}, Lorg/jivesoftware/smack/ConnectionListener;->connectionClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getConnectionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->connected:Z

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 238
    :goto_0
    return-object v0

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->authID:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->authID:Ljava/lang/String;

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->sessionID:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRoster()Lorg/jivesoftware/smack/Roster;
    .locals 10

    .prologue
    .line 243
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    if-nez v6, :cond_0

    .line 244
    const/4 v6, 0x0

    .line 275
    :goto_0
    return-object v6

    .line 246
    :cond_0
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/BOSHConfiguration;->isRosterLoadedAtLogin()Z

    move-result v6

    if-nez v6, :cond_1

    .line 247
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/Roster;->reload()V

    .line 256
    :cond_1
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    iget-boolean v6, v6, Lorg/jivesoftware/smack/Roster;->rosterInitialized:Z

    if-nez v6, :cond_3

    .line 258
    :try_start_0
    iget-object v7, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :try_start_1
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v6

    int-to-long v4, v6

    .line 260
    .local v4, "waitTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 261
    .local v2, "start":J
    :goto_1
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    iget-boolean v6, v6, Lorg/jivesoftware/smack/Roster;->rosterInitialized:Z

    if-eqz v6, :cond_4

    .line 258
    :cond_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    .end local v2    # "start":J
    .end local v4    # "waitTime":J
    :cond_3
    :goto_2
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    goto :goto_0

    .line 262
    .restart local v2    # "start":J
    .restart local v4    # "waitTime":J
    :cond_4
    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-lez v6, :cond_2

    .line 265
    :try_start_2
    iget-object v6, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v6, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 267
    .local v0, "now":J
    sub-long v8, v0, v2

    sub-long/2addr v4, v8

    .line 268
    move-wide v2, v0

    goto :goto_1

    .line 258
    .end local v0    # "now":J
    .end local v2    # "start":J
    .end local v4    # "waitTime":J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->user:Ljava/lang/String;

    return-object v0
.end method

.method protected initDebugger()V
    .locals 2

    .prologue
    .line 587
    new-instance v0, Lorg/jivesoftware/smack/BOSHConnection$2;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/BOSHConnection$2;-><init>(Lorg/jivesoftware/smack/BOSHConnection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->writer:Ljava/io/Writer;

    .line 595
    :try_start_0
    new-instance v0, Ljava/io/PipedWriter;

    invoke-direct {v0}, Ljava/io/PipedWriter;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->readerPipe:Ljava/io/PipedWriter;

    .line 596
    new-instance v0, Ljava/io/PipedReader;

    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->readerPipe:Ljava/io/PipedWriter;

    invoke-direct {v0, v1}, Ljava/io/PipedReader;-><init>(Ljava/io/PipedWriter;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->reader:Ljava/io/Reader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_0
    invoke-super {p0}, Lorg/jivesoftware/smack/Connection;->initDebugger()V

    .line 606
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->client:Lcom/kenai/jbosh/BOSHClient;

    new-instance v1, Lorg/jivesoftware/smack/BOSHConnection$3;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/BOSHConnection$3;-><init>(Lorg/jivesoftware/smack/BOSHConnection;)V

    invoke-virtual {v0, v1}, Lcom/kenai/jbosh/BOSHClient;->addBOSHClientResponseListener(Lcom/kenai/jbosh/BOSHClientResponseListener;)V

    .line 618
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->client:Lcom/kenai/jbosh/BOSHClient;

    new-instance v1, Lorg/jivesoftware/smack/BOSHConnection$4;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/BOSHConnection$4;-><init>(Lorg/jivesoftware/smack/BOSHConnection;)V

    invoke-virtual {v0, v1}, Lcom/kenai/jbosh/BOSHClient;->addBOSHClientRequestListener(Lcom/kenai/jbosh/BOSHClientRequestListener;)V

    .line 631
    new-instance v0, Lorg/jivesoftware/smack/BOSHConnection$5;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/BOSHConnection$5;-><init>(Lorg/jivesoftware/smack/BOSHConnection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->readerConsumer:Ljava/lang/Thread;

    .line 646
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->readerConsumer:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 647
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->readerConsumer:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 648
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isAnonymous()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->anonymous:Z

    return v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->authenticated:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->connected:Z

    return v0
.end method

.method public isSecureConnection()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public isUsingCompression()Z
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not connected to server."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_0
    iget-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->authenticated:Z

    if-eqz v1, :cond_1

    .line 310
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already logged in to server."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 316
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/BOSHConfiguration;->isSASLAuthenticationEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 317
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SASLAuthentication;->hasNonAnonymousAuthentication()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 319
    if-eqz p2, :cond_7

    .line 320
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v1, p1, p2, p3}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "response":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_9

    .line 331
    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->user:Ljava/lang/String;

    .line 333
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/BOSHConfiguration;->setServiceName(Ljava/lang/String;)V

    .line 342
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    if-nez v1, :cond_3

    .line 343
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->rosterStorage:Lorg/jivesoftware/smack/RosterStorage;

    if-nez v1, :cond_a

    .line 344
    new-instance v1, Lorg/jivesoftware/smack/Roster;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/Roster;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    .line 351
    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/BOSHConfiguration;->isSendPresence()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 352
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/BOSHConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 356
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->authenticated:Z

    .line 357
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->anonymous:Z

    .line 359
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/BOSHConfiguration;->isRosterLoadedAtLogin()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 360
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Roster;->reload()V

    .line 363
    :cond_5
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v1, p1, p2, p3}, Lorg/jivesoftware/smack/BOSHConfiguration;->setLoginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/BOSHConfiguration;->isDebuggerEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    if-eqz v1, :cond_6

    .line 369
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->user:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->userHasLogged(Ljava/lang/String;)V

    .line 371
    :cond_6
    return-void

    .line 322
    .end local v0    # "response":Ljava/lang/String;
    :cond_7
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/BOSHConfiguration;->getCallbackHandler()Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    move-result-object v2

    invoke-virtual {v1, p1, p3, v2}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .restart local v0    # "response":Ljava/lang/String;
    goto :goto_0

    .line 326
    .end local v0    # "response":Ljava/lang/String;
    :cond_8
    new-instance v1, Lorg/jivesoftware/smack/NonSASLAuthentication;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/Connection;)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "response":Ljava/lang/String;
    goto :goto_0

    .line 335
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->user:Ljava/lang/String;

    .line 336
    if-eqz p3, :cond_2

    .line 337
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->user:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->user:Ljava/lang/String;

    goto/16 :goto_1

    .line 346
    :cond_a
    new-instance v1, Lorg/jivesoftware/smack/Roster;

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->rosterStorage:Lorg/jivesoftware/smack/RosterStorage;

    invoke-direct {v1, p0, v2}, Lorg/jivesoftware/smack/Roster;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/RosterStorage;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    goto/16 :goto_2
.end method

.method public loginAnonymously()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 374
    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not connected to server."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 377
    :cond_0
    iget-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->authenticated:Z

    if-eqz v1, :cond_1

    .line 378
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already logged in to server."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/BOSHConfiguration;->isSASLAuthenticationEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 383
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SASLAuthentication;->hasAnonymousAuthentication()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 384
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticateAnonymously()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "response":Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->user:Ljava/lang/String;

    .line 394
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/BOSHConfiguration;->setServiceName(Ljava/lang/String;)V

    .line 397
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    .line 400
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/BOSHConfiguration;->isSendPresence()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 401
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/BOSHConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 405
    :cond_2
    iput-boolean v3, p0, Lorg/jivesoftware/smack/BOSHConnection;->authenticated:Z

    .line 406
    iput-boolean v3, p0, Lorg/jivesoftware/smack/BOSHConnection;->anonymous:Z

    .line 412
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->config:Lorg/jivesoftware/smack/BOSHConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/BOSHConfiguration;->isDebuggerEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    if-eqz v1, :cond_3

    .line 413
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->user:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->userHasLogged(Ljava/lang/String;)V

    .line 415
    :cond_3
    return-void

    .line 388
    .end local v0    # "response":Ljava/lang/String;
    :cond_4
    new-instance v1, Lorg/jivesoftware/smack/NonSASLAuthentication;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/Connection;)V

    invoke-virtual {v1}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticateAnonymously()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "response":Ljava/lang/String;
    goto :goto_0
.end method

.method protected notifyConnectionError(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 658
    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smack/BOSHConnection;->shutdown(Lorg/jivesoftware/smack/packet/Presence;)V

    .line 660
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 662
    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->getConnectionListeners()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 672
    return-void

    .line 662
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/ConnectionListener;

    .line 664
    .local v1, "listener":Lorg/jivesoftware/smack/ConnectionListener;
    :try_start_0
    invoke-interface {v1, p1}, Lorg/jivesoftware/smack/ConnectionListener;->connectionClosedOnError(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 666
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e2":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 3
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 566
    if-nez p1, :cond_0

    .line 577
    :goto_0
    return-void

    .line 571
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->getPacketCollectors()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 576
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lorg/jivesoftware/smack/BOSHConnection$ListenerNotification;

    invoke-direct {v2, p0, p1}, Lorg/jivesoftware/smack/BOSHConnection$ListenerNotification;-><init>(Lorg/jivesoftware/smack/BOSHConnection;Lorg/jivesoftware/smack/packet/Packet;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 571
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/PacketCollector;

    .line 572
    .local v0, "collector":Lorg/jivesoftware/smack/PacketCollector;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketCollector;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_1
.end method

.method protected send(Lcom/kenai/jbosh/ComposableBody;)V
    .locals 3
    .param p1, "body"    # Lcom/kenai/jbosh/ComposableBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kenai/jbosh/BOSHException;
        }
    .end annotation

    .prologue
    .line 545
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->connected:Z

    if-nez v0, :cond_0

    .line 546
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected to a server!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_0
    if-nez p1, :cond_1

    .line 549
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Body mustn\'t be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->sessionID:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 552
    invoke-virtual {p1}, Lcom/kenai/jbosh/ComposableBody;->rebuild()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    .line 553
    const-string v1, "http://jabber.org/protocol/httpbind"

    const-string v2, "sid"

    invoke-static {v1, v2}, Lcom/kenai/jbosh/BodyQName;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/BodyQName;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection;->sessionID:Ljava/lang/String;

    .line 552
    invoke-virtual {v0, v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setAttribute(Lcom/kenai/jbosh/BodyQName;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Lcom/kenai/jbosh/ComposableBody$Builder;->build()Lcom/kenai/jbosh/ComposableBody;

    move-result-object p1

    .line 555
    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->client:Lcom/kenai/jbosh/BOSHClient;

    invoke-virtual {v0, p1}, Lcom/kenai/jbosh/BOSHClient;->send(Lcom/kenai/jbosh/ComposableBody;)V

    .line 556
    return-void
.end method

.method public sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 3
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 418
    invoke-virtual {p0}, Lorg/jivesoftware/smack/BOSHConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not connected to server."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    :cond_0
    if-nez p1, :cond_1

    .line 422
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Packet is null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 424
    :cond_1
    iget-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->done:Z

    if-nez v1, :cond_2

    .line 428
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/BOSHConnection;->firePacketInterceptors(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 431
    :try_start_0
    invoke-static {}, Lcom/kenai/jbosh/ComposableBody;->builder()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setPayloadXML(Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v1

    .line 432
    invoke-virtual {v1}, Lcom/kenai/jbosh/ComposableBody$Builder;->build()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v1

    .line 431
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/BOSHConnection;->send(Lcom/kenai/jbosh/ComposableBody;)V
    :try_end_0
    .catch Lcom/kenai/jbosh/BOSHException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/BOSHConnection;->firePacketSendingListeners(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 443
    :cond_2
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Lcom/kenai/jbosh/BOSHException;
    invoke-virtual {v0}, Lcom/kenai/jbosh/BOSHException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRosterStorage(Lorg/jivesoftware/smack/RosterStorage;)V
    .locals 2
    .param p1, "storage"    # Lorg/jivesoftware/smack/RosterStorage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 769
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->roster:Lorg/jivesoftware/smack/Roster;

    if-eqz v0, :cond_0

    .line 770
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Roster is already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smack/BOSHConnection;->rosterStorage:Lorg/jivesoftware/smack/RosterStorage;

    .line 773
    return-void
.end method

.method protected shutdown(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 5
    .param p1, "unavailablePresence"    # Lorg/jivesoftware/smack/packet/Presence;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 478
    iget-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->authenticated:Z

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/BOSHConnection;->setWasAuthenticated(Z)V

    .line 479
    iput-object v4, p0, Lorg/jivesoftware/smack/BOSHConnection;->authID:Ljava/lang/String;

    .line 480
    iput-object v4, p0, Lorg/jivesoftware/smack/BOSHConnection;->sessionID:Ljava/lang/String;

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->done:Z

    .line 482
    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->authenticated:Z

    .line 483
    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->connected:Z

    .line 484
    iput-boolean v1, p0, Lorg/jivesoftware/smack/BOSHConnection;->isFirstInitialization:Z

    .line 487
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->client:Lcom/kenai/jbosh/BOSHClient;

    invoke-static {}, Lcom/kenai/jbosh/ComposableBody;->builder()Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v1

    .line 488
    const-string v2, "xmpp"

    const-string v3, "urn:xmpp:xbosh"

    invoke-virtual {v1, v2, v3}, Lcom/kenai/jbosh/ComposableBody$Builder;->setNamespaceDefinition(Ljava/lang/String;Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v1

    .line 489
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kenai/jbosh/ComposableBody$Builder;->setPayloadXML(Ljava/lang/String;)Lcom/kenai/jbosh/ComposableBody$Builder;

    move-result-object v1

    .line 490
    invoke-virtual {v1}, Lcom/kenai/jbosh/ComposableBody$Builder;->build()Lcom/kenai/jbosh/ComposableBody;

    move-result-object v1

    .line 487
    invoke-virtual {v0, v1}, Lcom/kenai/jbosh/BOSHClient;->disconnect(Lcom/kenai/jbosh/ComposableBody;)V

    .line 492
    const-wide/16 v0, 0x96

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 499
    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->readerPipe:Ljava/io/PipedWriter;

    if-eqz v0, :cond_0

    .line 501
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->readerPipe:Ljava/io/PipedWriter;

    invoke-virtual {v0}, Ljava/io/PipedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 504
    :goto_1
    iput-object v4, p0, Lorg/jivesoftware/smack/BOSHConnection;->reader:Ljava/io/Reader;

    .line 506
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_1

    .line 508
    :try_start_2
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 511
    :goto_2
    iput-object v4, p0, Lorg/jivesoftware/smack/BOSHConnection;->reader:Ljava/io/Reader;

    .line 513
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_2

    .line 515
    :try_start_3
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 518
    :goto_3
    iput-object v4, p0, Lorg/jivesoftware/smack/BOSHConnection;->writer:Ljava/io/Writer;

    .line 522
    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3

    .line 523
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 525
    :cond_3
    iput-object v4, p0, Lorg/jivesoftware/smack/BOSHConnection;->readerConsumer:Ljava/lang/Thread;

    .line 526
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
