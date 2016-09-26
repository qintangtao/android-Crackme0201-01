.class public Lorg/jivesoftware/smackx/ping/PingManager;
.super Ljava/lang/Object;
.source "PingManager.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "ping"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:ping"

.field private static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smackx/ping/PingManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final periodicPingExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private connection:Lorg/jivesoftware/smack/Connection;

.field private lastPingStamp:J

.field private lastSuccessfulManualPing:J

.field protected volatile lastSuccessfulPingByTask:J

.field private periodicPingTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private pingFailedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smackx/ping/PingFailedListener;",
            ">;"
        }
    .end annotation
.end field

.field private pingInterval:I

.field private pingMinDelta:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 64
    sput-object v0, Lorg/jivesoftware/smackx/ping/PingManager;->instances:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 67
    const/4 v1, 0x1

    .line 66
    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lorg/jivesoftware/smackx/ping/PingManager;->periodicPingExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 70
    new-instance v0, Lorg/jivesoftware/smackx/ping/PingManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/ping/PingManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/Connection;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 75
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 6
    .param p1, "connection"    # Lorg/jivesoftware/smack/Connection;

    .prologue
    const-wide/16 v4, -0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getDefaultPingInterval()I

    move-result v2

    iput v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingInterval:I

    .line 80
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingFailedListeners:Ljava/util/Set;

    .line 82
    iput-wide v4, p0, Lorg/jivesoftware/smackx/ping/PingManager;->lastSuccessfulPingByTask:J

    .line 86
    const-wide/16 v2, 0x64

    iput-wide v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingMinDelta:J

    .line 87
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->lastPingStamp:J

    .line 91
    iput-wide v4, p0, Lorg/jivesoftware/smackx/ping/PingManager;->lastSuccessfulManualPing:J

    .line 94
    iput-object p1, p0, Lorg/jivesoftware/smackx/ping/PingManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 95
    sget-object v2, Lorg/jivesoftware/smackx/ping/PingManager;->instances:Ljava/util/Map;

    invoke-interface {v2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v1

    .line 98
    .local v1, "sdm":Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    const-string v2, "urn:xmpp:ping"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 100
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v2, Lorg/jivesoftware/smackx/ping/packet/Ping;

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 101
    .local v0, "pingPacketFilter":Lorg/jivesoftware/smack/filter/PacketFilter;
    new-instance v2, Lorg/jivesoftware/smackx/ping/PingManager$2;

    invoke-direct {v2, p0, p1}, Lorg/jivesoftware/smackx/ping/PingManager$2;-><init>(Lorg/jivesoftware/smackx/ping/PingManager;Lorg/jivesoftware/smack/Connection;)V

    invoke-virtual {p1, v2, v0}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 120
    new-instance v2, Lorg/jivesoftware/smackx/ping/PingManager$3;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/ping/PingManager$3;-><init>(Lorg/jivesoftware/smackx/ping/PingManager;)V

    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/Connection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 145
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->maybeSchedulePingServerTask()V

    .line 146
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/ping/PingManager;)J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingMinDelta:J

    return-wide v0
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/ping/PingManager;)J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->lastPingStamp:J

    return-wide v0
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/ping/PingManager;J)V
    .locals 1

    .prologue
    .line 87
    iput-wide p1, p0, Lorg/jivesoftware/smackx/ping/PingManager;->lastPingStamp:J

    return-void
.end method

.method static synthetic access$3(Lorg/jivesoftware/smackx/ping/PingManager;)V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->maybeStopPingServerTask()V

    return-void
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ping/PingManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/Connection;

    .prologue
    .line 149
    const-class v2, Lorg/jivesoftware/smackx/ping/PingManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/ping/PingManager;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/ping/PingManager;

    .line 151
    .local v0, "pingManager":Lorg/jivesoftware/smackx/ping/PingManager;
    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lorg/jivesoftware/smackx/ping/PingManager;

    .end local v0    # "pingManager":Lorg/jivesoftware/smackx/ping/PingManager;
    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/ping/PingManager;-><init>(Lorg/jivesoftware/smack/Connection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .restart local v0    # "pingManager":Lorg/jivesoftware/smackx/ping/PingManager;
    :cond_0
    monitor-exit v2

    return-object v0

    .line 149
    .end local v0    # "pingManager":Lorg/jivesoftware/smackx/ping/PingManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private maybeStopPingServerTask()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->periodicPingTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->periodicPingTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->periodicPingTask:Ljava/util/concurrent/ScheduledFuture;

    .line 337
    :cond_0
    return-void
.end method

.method private pongReceived()V
    .locals 2

    .prologue
    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->lastSuccessfulManualPing:J

    .line 341
    return-void
.end method


# virtual methods
.method public disablePingFloodProtection()V
    .locals 2

    .prologue
    .line 175
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/ping/PingManager;->setPingMinimumInterval(J)V

    .line 176
    return-void
.end method

.method public getLastSuccessfulPing()J
    .locals 4

    .prologue
    .line 312
    iget-wide v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->lastSuccessfulPingByTask:J

    iget-wide v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->lastSuccessfulManualPing:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getPingFailedListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smackx/ping/PingFailedListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingFailedListeners:Ljava/util/Set;

    return-object v0
.end method

.method public getPingIntervall()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingInterval:I

    return v0
.end method

.method public getPingMinimumInterval()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingMinDelta:J

    return-wide v0
.end method

.method public isPingSupported(Ljava/lang/String;)Z
    .locals 2
    .param p1, "jid"    # Ljava/lang/String;

    .prologue
    .line 296
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/ping/PingManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v0

    .line 297
    .local v0, "result":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    const-string v1, "urn:xmpp:ping"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 300
    .end local v0    # "result":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :goto_0
    return v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized maybeSchedulePingServerTask()V
    .locals 5

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->maybeStopPingServerTask()V

    .line 326
    iget v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingInterval:I

    if-lez v0, :cond_0

    .line 327
    sget-object v0, Lorg/jivesoftware/smackx/ping/PingManager;->periodicPingExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lorg/jivesoftware/smackx/ping/ServerPingTask;

    iget-object v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/ping/ServerPingTask;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iget v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingInterval:I

    int-to-long v2, v2

    .line 328
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 327
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->periodicPingTask:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :cond_0
    monitor-exit p0

    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ping(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p1, "jid"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/ping/PingManager;->ping(Ljava/lang/String;J)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method public ping(Ljava/lang/String;J)Lorg/jivesoftware/smack/packet/IQ;
    .locals 6
    .param p1, "jid"    # Ljava/lang/String;
    .param p2, "pingTimeout"    # J

    .prologue
    .line 200
    iget-object v3, p0, Lorg/jivesoftware/smackx/ping/PingManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/Connection;->isAuthenticated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 201
    const/4 v2, 0x0

    .line 213
    :goto_0
    return-object v2

    .line 203
    :cond_0
    new-instance v1, Lorg/jivesoftware/smackx/ping/packet/Ping;

    iget-object v3, p0, Lorg/jivesoftware/smackx/ping/PingManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Lorg/jivesoftware/smackx/ping/packet/Ping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .local v1, "ping":Lorg/jivesoftware/smackx/ping/packet/Ping;
    iget-object v3, p0, Lorg/jivesoftware/smackx/ping/PingManager;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/ping/packet/Ping;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 208
    .local v0, "collector":Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/ping/PingManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 210
    invoke-virtual {v0, p2, p3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/IQ;

    .line 212
    .local v2, "result":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    goto :goto_0
.end method

.method public pingEntity(Ljava/lang/String;)Z
    .locals 2
    .param p1, "jid"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/ping/PingManager;->pingEntity(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public pingEntity(Ljava/lang/String;J)Z
    .locals 4
    .param p1, "jid"    # Ljava/lang/String;
    .param p2, "pingTimeout"    # J

    .prologue
    .line 242
    invoke-virtual {p0, p1, p2, p3}, Lorg/jivesoftware/smackx/ping/PingManager;->ping(Ljava/lang/String;J)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 244
    .local v0, "result":Lorg/jivesoftware/smack/packet/IQ;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v1, v2, :cond_1

    .line 245
    :cond_0
    const/4 v1, 0x0

    .line 248
    :goto_0
    return v1

    .line 247
    :cond_1
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->pongReceived()V

    .line 248
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public pingMyServer()Z
    .locals 2

    .prologue
    .line 284
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/ping/PingManager;->pingMyServer(J)Z

    move-result v0

    return v0
.end method

.method public pingMyServer(J)Z
    .locals 5
    .param p1, "pingTimeout"    # J

    .prologue
    .line 264
    iget-object v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lorg/jivesoftware/smackx/ping/PingManager;->ping(Ljava/lang/String;J)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    .line 266
    .local v1, "result":Lorg/jivesoftware/smack/packet/IQ;
    if-nez v1, :cond_1

    .line 267
    iget-object v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingFailedListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 270
    const/4 v2, 0x0

    .line 274
    :goto_1
    return v2

    .line 267
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/ping/PingFailedListener;

    .line 268
    .local v0, "l":Lorg/jivesoftware/smackx/ping/PingFailedListener;
    invoke-interface {v0}, Lorg/jivesoftware/smackx/ping/PingFailedListener;->pingFailed()V

    goto :goto_0

    .line 273
    .end local v0    # "l":Lorg/jivesoftware/smackx/ping/PingFailedListener;
    :cond_1
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->pongReceived()V

    .line 274
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public registerPingFailedListener(Lorg/jivesoftware/smackx/ping/PingFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/ping/PingFailedListener;

    .prologue
    .line 167
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingFailedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public setPingIntervall(I)V
    .locals 0
    .param p1, "pingIntervall"    # I

    .prologue
    .line 159
    iput p1, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingInterval:I

    .line 160
    return-void
.end method

.method public setPingMinimumInterval(J)V
    .locals 1
    .param p1, "ms"    # J

    .prologue
    .line 179
    iput-wide p1, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingMinDelta:J

    .line 180
    return-void
.end method

.method public unregisterPingFailedListener(Lorg/jivesoftware/smackx/ping/PingFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/ping/PingFailedListener;

    .prologue
    .line 171
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingFailedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method
