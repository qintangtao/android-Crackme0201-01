.class public Lorg/jivesoftware/smackx/carbons/CarbonManager;
.super Ljava/lang/Object;
.source "CarbonManager.java"


# static fields
.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smackx/carbons/CarbonManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connection:Lorg/jivesoftware/smack/Connection;

.field private volatile enabled_state:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 48
    sput-object v0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->instances:Ljava/util/Map;

    .line 52
    new-instance v0, Lorg/jivesoftware/smackx/carbons/CarbonManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/carbons/CarbonManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/Connection;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 57
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/Connection;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->enabled_state:Z

    .line 63
    invoke-static {p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    .line 64
    .local v0, "sdm":Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    const-string v1, "urn:xmpp:carbons:2"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 66
    sget-object v1, Lorg/jivesoftware/smackx/carbons/CarbonManager;->instances:Ljava/util/Map;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/carbons/CarbonManager;Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->enabled_state:Z

    return-void
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/carbons/CarbonManager;)Lorg/jivesoftware/smack/Connection;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method private carbonsEnabledIQ(Z)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p1, "new_state"    # Z

    .prologue
    .line 87
    new-instance v0, Lorg/jivesoftware/smackx/carbons/CarbonManager$2;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smackx/carbons/CarbonManager$2;-><init>(Lorg/jivesoftware/smackx/carbons/CarbonManager;Z)V

    .line 92
    .local v0, "setIQ":Lorg/jivesoftware/smack/packet/IQ;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 93
    return-object v0
.end method

.method public static disableCarbons(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 1
    .param p0, "msg"    # Lorg/jivesoftware/smack/packet/Message;

    .prologue
    .line 211
    new-instance v0, Lorg/jivesoftware/smackx/carbons/Carbon$Private;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/carbons/Carbon$Private;-><init>()V

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 212
    return-void
.end method

.method public static getCarbon(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/carbons/Carbon;
    .locals 3
    .param p0, "msg"    # Lorg/jivesoftware/smack/packet/Message;

    .prologue
    .line 199
    const-string v1, "received"

    const-string v2, "urn:xmpp:carbons:2"

    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/carbons/Carbon;

    .line 200
    .local v0, "cc":Lorg/jivesoftware/smackx/carbons/Carbon;
    if-nez v0, :cond_0

    .line 201
    const-string v1, "sent"

    const-string v2, "urn:xmpp:carbons:2"

    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    .end local v0    # "cc":Lorg/jivesoftware/smackx/carbons/Carbon;
    check-cast v0, Lorg/jivesoftware/smackx/carbons/Carbon;

    .line 202
    .restart local v0    # "cc":Lorg/jivesoftware/smackx/carbons/Carbon;
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/carbons/CarbonManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/Connection;

    .prologue
    .line 77
    const-class v2, Lorg/jivesoftware/smackx/carbons/CarbonManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/carbons/CarbonManager;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/carbons/CarbonManager;

    .line 79
    .local v0, "carbonManager":Lorg/jivesoftware/smackx/carbons/CarbonManager;
    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lorg/jivesoftware/smackx/carbons/CarbonManager;

    .end local v0    # "carbonManager":Lorg/jivesoftware/smackx/carbons/CarbonManager;
    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/carbons/CarbonManager;-><init>(Lorg/jivesoftware/smack/Connection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .restart local v0    # "carbonManager":Lorg/jivesoftware/smackx/carbons/CarbonManager;
    :cond_0
    monitor-exit v2

    return-object v0

    .line 77
    .end local v0    # "carbonManager":Lorg/jivesoftware/smackx/carbons/CarbonManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public disableCarbons()Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->setCarbonsEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public enableCarbons()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->setCarbonsEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public getCarbonsEnabled()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->enabled_state:Z

    return v0
.end method

.method public isSupportedByServer()Z
    .locals 3

    .prologue
    .line 104
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v0

    .line 105
    .local v0, "result":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    const-string v1, "urn:xmpp:carbons:2"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 108
    .end local v0    # "result":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :goto_0
    return v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendCarbonsEnabled(Z)V
    .locals 5
    .param p1, "new_state"    # Z

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->carbonsEnabledIQ(Z)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 123
    .local v0, "setIQ":Lorg/jivesoftware/smack/packet/IQ;
    iget-object v1, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smackx/carbons/CarbonManager$3;

    invoke-direct {v2, p0, p1}, Lorg/jivesoftware/smackx/carbons/CarbonManager$3;-><init>(Lorg/jivesoftware/smackx/carbons/CarbonManager;Z)V

    .line 131
    new-instance v3, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 133
    iget-object v1, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 134
    return-void
.end method

.method public setCarbonsEnabled(Z)Z
    .locals 7
    .param p1, "new_state"    # Z

    .prologue
    const/4 v3, 0x1

    .line 148
    iget-boolean v4, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->enabled_state:Z

    if-ne v4, p1, :cond_0

    .line 163
    :goto_0
    return v3

    .line 151
    :cond_0
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->carbonsEnabledIQ(Z)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v2

    .line 154
    .local v2, "setIQ":Lorg/jivesoftware/smack/packet/IQ;
    iget-object v4, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v5, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 155
    .local v0, "collector":Lorg/jivesoftware/smack/PacketCollector;
    iget-object v4, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 156
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    .line 157
    .local v1, "result":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 159
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v4, v5, :cond_1

    .line 160
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->enabled_state:Z

    goto :goto_0

    .line 163
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
